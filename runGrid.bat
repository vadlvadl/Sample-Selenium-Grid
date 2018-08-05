@echo off
setlocal ENABLEDELAYEDEXPANSION


set SELENIUM_SERVER=selenium-server-standalone-3.13.0.jar

IF NOT EXIST %SELENIUM_SERVER% GOTO ErrorServerNotFound

:: Start Selenium Server HUB
START cmd /c java -jar %SELENIUM_SERVER%  -role hub

:: Start Selenium Server NODE
START cmd /c java -jar %SELENIUM_SERVER%  -role node

GOTO :eof

:ErrorServerNotFound
ECHO Can't find %SELENIUM_SERVER% file
GOTO :eof