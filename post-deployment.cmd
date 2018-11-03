if exist "composer.json" (
    echo found composer.json
) else (
    echo composer.json not found. Skipping composer install
    EXIT /b 0
)
echo Search for composer extension
where composer
if %ERRORLEVEL% NEQ 0 (
   echo Cannot find composer extension. Ensure that it exists before deployment >&2
  EXIT /b 1 
)
echo found composer
call composer install -vvv
if %ERRORLEVEL% NEQ 0 (
    echo composer install failed. >&2
    EXIT /b 1 
)
echo Done composer install

if exist "package.json" (
    echo found package.json
) else (
    echo package.json not found. Skipping npm install
    EXIT /b 0
)

echo calling npm install
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo npm install failed. >&2
    EXIT /b 1 
)
echo Done npm install
echo Executing webpack
call npm run-script build