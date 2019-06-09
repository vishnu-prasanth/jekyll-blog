:: Author: Vishnu Prasanth (vizkrig)
:: Email: hello@vishnuprasanth.com
:: Description: The script takes in a string as arument
:: 				This arg value is used as the commit message

@echo off

:: STEPS
:: Change directory to vishnu-prasanth.github.io/
:: delete contents of vishnu-prasanth.github.io/
:: copy jekyll-blog/_site contents to vishnu-prasanth.github.io/
:: commit with command argument message & push to github

cls

echo.
echo Changing directory to `C:\Files\_Vishnu\www\vishnu-prasanth.github.io`
call cd C:\Files\_Vishnu\www\vishnu-prasanth.github.io

:: EVERYTHING BELOW IS INSIDE `C:\Files\_Vishnu\www\vishnu-prasanth.github.io`

echo.
echo Deleting contents of %cd%
rm -rf *

echo.
echo Copying contents from jekyll-blog\_site to vishnu-prasanth.github.io
cp -r C:\Files\_Vishnu\www\jekyll-blog\_site\* C:\Files\_Vishnu\www\vishnu-prasanth.github.io\

echo.
call git add .
call git commit -m $1
call git push origin master

::echo Directory C:\Files\_Vishnu\www\vishnu-prasanth.github.io\ doesn't exist!
