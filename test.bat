:: Author: Vishnu Prasanth (vizkrig)
:: Email: hello@vishnuprasanth.com
:: Description: The script re-builds the _site and deploys to localhost:4000

@echo off

:: STEPS
:: delete _site
:: jekyll build 
:: jekyll serve

cls

echo.
echo Deleting _site and its contents...
rm -rfv

echo. 
echo Building _site...
bundle exec jekyll build

echo.
echo Deploying to localhost...
bundle exec jekyll serve