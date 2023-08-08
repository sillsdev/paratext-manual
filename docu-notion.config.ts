import { IDocuNotionConfig } from "@sillsdev/docu-notion";
import { stripNoBreakSpaces } from "./src/plugins/StripNoBreakSpaces";

const config: IDocuNotionConfig = {
  plugins: [stripNoBreakSpaces],
};

export default config;
