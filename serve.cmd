@echo off
setlocal
cd /d "%~dp0"
set "PATH=%LOCALAPPDATA%\Programs\Ruby33-x64\bin;%PATH%"
set "JEKYLL_ENV=development"
call bundle config set --local path vendor/bundle
call bundle config set --local jobs 1
call bundle check
if errorlevel 1 (
  call bundle install
  if errorlevel 1 exit /b 1
)
call bundle exec jekyll serve --config _config.yml,_config.dev.yml --livereload --force_polling --host 127.0.0.1
