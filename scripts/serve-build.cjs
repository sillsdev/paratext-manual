#!/usr/bin/env node

"use strict";

/**
 * Minimal static file server for the `build/` directory.
 *
 * Why this exists rather than `yarn serve`: most of this site's slugs contain a
 * dot (`/2.OD`, `/3.PP1`, `/25.StudyBibles`, ...) and `docusaurus serve` answers
 * 404 for those -- with or without a trailing slash -- because it treats the
 * segment after the dot as a file extension. GitHub Pages serves them correctly,
 * so this only bites locally, but it does make `docusaurus serve` useless for
 * anything that crawls the site. In particular docu-pdf's crawl dies partway
 * through, which is why the PDF could not be checked locally before this.
 *
 * Usage:
 *   yarn build
 *   node scripts/serve-build.cjs [port]        # default 3312
 *
 * Then, for example:
 *   bash src/pdf-generation/make-pdf.sh http://localhost:3312 en
 *
 * Deliberately dependency-free so it works in CI and on a clean checkout.
 */

const http = require("http");
const fs = require("fs");
const path = require("path");

const ROOT = path.resolve(process.argv[3] || "build");
const PORT = Number(process.argv[2]) || 3312;

const MIME = {
  ".html": "text/html; charset=utf-8",
  ".js": "text/javascript",
  ".mjs": "text/javascript",
  ".css": "text/css",
  ".json": "application/json",
  ".map": "application/json",
  ".svg": "image/svg+xml",
  ".png": "image/png",
  ".jpg": "image/jpeg",
  ".jpeg": "image/jpeg",
  ".gif": "image/gif",
  ".webp": "image/webp",
  ".ico": "image/x-icon",
  ".woff": "font/woff",
  ".woff2": "font/woff2",
  ".ttf": "font/ttf",
  ".xml": "application/xml",
  ".txt": "text/plain; charset=utf-8",
  ".pdf": "application/pdf",
};

function resolveFile(urlPath) {
  const candidate = path.join(ROOT, urlPath);
  // Keep the resolved path inside ROOT. Compare against ROOT + separator, not
  // ROOT alone: a bare prefix test also matches a *sibling* whose name merely
  // starts with ROOT's, so "/../build-extra/x" would resolve outside build/ and
  // still pass. The `=== ROOT` case allows a request for the root itself.
  if (candidate !== ROOT && !candidate.startsWith(ROOT + path.sep)) return null;

  const tryPaths = [candidate, `${candidate}.html`, path.join(candidate, "index.html")];
  for (const p of tryPaths) {
    if (fs.existsSync(p) && fs.statSync(p).isFile()) return p;
  }
  return null;
}

http
  .createServer((req, res) => {
    let urlPath;
    try {
      urlPath = decodeURIComponent(req.url.split("?")[0].split("#")[0]);
    } catch {
      res.writeHead(400).end("bad request");
      return;
    }

    const file = resolveFile(urlPath);
    if (!file) {
      res.writeHead(404, { "Content-Type": "text/plain" }).end(`404 ${urlPath}`);
      return;
    }

    res.writeHead(200, {
      "Content-Type": MIME[path.extname(file).toLowerCase()] || "application/octet-stream",
    });
    fs.createReadStream(file).pipe(res);
  })
  .listen(PORT, () => {
    console.log(`serving ${ROOT} at http://localhost:${PORT}`);
  });
