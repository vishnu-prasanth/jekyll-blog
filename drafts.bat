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
call rm -rf _site/*

echo. 
echo Building _site...
call bundle exec jekyll build

echo.
echo Deploying to localhost...
call bundle exec jekyll serve --drafts --watch