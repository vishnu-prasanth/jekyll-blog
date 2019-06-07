:: Author: Vishnu Prasanth (vizkrig)
:: Email: hello@vishnuprasanth.com
:: Description: The script takes in a string as arument
:: 				This arg value is used as the commit message

@echo off

:: STEPS
:: delete previous build's _site contents
:: jekyll build 
:: delete contents of vishnu-prasanth.github.io/_site/ contents
:: copy newly _site contents to vishnu-prasanth.github.io/_site/
:: 

cls

echo.
echo Deleting _site and its contents...
rm -rfv

echo. 
echo Building _site...
bundle exec jekyll build