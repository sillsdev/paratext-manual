
@ECHO OFF
SETLOCAL
IF "%1"=="" GOTO MENU
SET M=%1
SET X=1
GOTO :AFTER_MENU
:MENU
CLS

ECHO.
ECHO Docu-pdf command for producing ENGLISH PDFs of Docusaurus
ECHO.
ECHO ---------------------------------------------
ECHO PRESS 1-9 to select your task, or 0 to EXIT
ECHO ---------------------------------------------
ECHO .
ECHO . Manuals
ECHO 1 - English Manual version 9.3
ECHO 2 - English Manual version 9.2
ECHO 3 - English Manual version 9.3 LH
ECHO 4 - English Manual version 9.2 LH
ECHO . 
ECHO . Video Summaries
ECHO 5 - English Vidsum version 9.3
ECHO 6 - English Vidsum version 9.2
ECHO 7 - English Vidsum version 9.3 LH
ECHO 8 - English Vidsum version 9.2 LH
ECHO 9 - ?? 
ECHO 0 - EXIT
ECHO.

SET /P M= Type 1-9 or 0 then press ENTER:
:AFTER_MENU
IF %M%==1 GOTO ENG-man-9.3
IF %M%==2 GOTO ENG-man-9.2
IF %M%==3 GOTO ENG-man-9.3-LH
IF %M%==4 GOTO ENG-man-9.2-LH
IF %M%==5 GOTO ENG-vidsum-9.3
IF %M%==6 GOTO ENG-vidsum-9.2
IF %M%==7 GOTO ENG-vidsum-9.3-LH
IF %M%==8 GOTO ENG-vidsum-9.2-LH
IF %M%==9 GOTO CLEARC
IF %M%==0 GOTO EOF

:ENG-man-9.3
ECHO 1 - docu-pdf English manual 9.3 from web
npx docu-pdf https://sillsdev.github.io/paratext-manual/Overview/ --coverPath="cover-man-en.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-man-a5-en-9.3.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="https://manual.paratext.org/category/paratext-training-manual,https://manual.paratext.org/category/appendix"

IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-man-9.2
ECHO 2 - Print ENGLISH MAN 9.2 from web 
npx docu-pdf https://manual.paratext.org/9.2/Training-Manual/Overview --coverPath="cover-man-en-9.2.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-man-a5-en-9.2.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="https://manual.paratext.org/9.2/category/paratext-training-manual,https://manual.paratext.org/9.2/category/appendix"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-man-9.3-LH
ECHO 3 - Print ENGLISH MAN 9.3 from local host
npx docu-pdf http://localhost:3000/Training-Manual/Overview --coverPath="cover-man-en.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-man-a5-en-9.3-LH.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="http://localhost:3000/Training-manual/category/paratext-training-manual,http://localhost:3000/category/appendix"

IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-man-9.2-LH
ECHO 4 - Print ENGLISH MAN 9.2 from local host 
npx docu-pdf http://localhost:3000/9.2/Training-Manual/Overview --coverPath="cover-man-en-9.2.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-man-a5-en-9.2-LH.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="http://localhost:3000/Training-manual/category/9.2/paratext-training-manual,http://localhost:3000/9.2/category/appendix"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-vidsum-9.3
ECHO 5 - Print ENGLISH VIDSUM 9.3 from web 
npx docu-pdf https://sillsdev.github.io/paratext-manual/Overview/ --coverPath="cover-vidsum-en.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-vidsum-a5-en-9.3.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="@excludesENvid.txt"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-vidsum-9.2
ECHO 6 - Print ENGLISH VIDSUM 9.2 from web 
npx docu-pdf https://manual.paratext.org/9.2/Video-summaries/TOC-overview --coverPath="cover-vidsum-en-9.2.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-vidsum-a5-en-9.2.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="@excludesENvid92.txt"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-vidsum-9.3-LH
ECHO 7 - Print ENGLISH VIDSUM 9.3 from local host 
npx docu-pdf http://localhost:3000/Video-summaries/TOC-overview --coverPath="cover-vidsum-en.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-vidsum-a5-en-9.3-LH.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="@excludesENvidlh.txt"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:ENG-vidsum-9.2-LH
ECHO 8 - Print ENGLISH VIDSUM 9.2 from local host 
npx docu-pdf http://localhost:3000/9.2/Video-summaries/TOC-overview --coverPath="cover-vidsum-en-9.2.html"  --contentSelector="article" --pageSize="A5" --outputPath="Ptx-vidsum-a5-en-9.2-LH.pdf" --disableTOC --headerTemplate="<footer />" --pdfMargin="40,40,80,40" --excludeURLs="@excludesENvid92lh.txt"
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:CLEARC
ECHO 9 - Docusarus clear (cache, build...) npm run docusaurus clear
npm run docusaurus clear
IF "%X%"== "1" GOTO :EOF
GOTO MENU

:EOF
