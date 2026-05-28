@echo off
setlocal

cd "%~dp0"

set "curdate=%date:~-4,4%%date:~-10,2%%date:~-7,2%%time:~1,1%%time:~3,2%"
set "outputdir=%CD:~0,3%/ZZZ_Automation_Output/Log_%curdate%"

set webbrowser=firefox
set itags="er"
set etags="test1"

set datefolder="%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%"

set suitefile=%cd%/../../Test_suites\Amazon\amazon1.robot

::call robot -v --pythonpath ..\..\listeners --listener listenere1.listener1 Web_Browser:%webbrowser% -v Included_Tags:%itags% -v Excluded_Tags:%etags% -v Date_Folder:%datefolder% -i %itags% -e %etags% -d %outputdir% --loglevel INFO %suitefile%
robot --pythonpath ..\..\listeners --listener listenere1.listener1 -v Web_Browser:%webbrowser% -v Included_Tags:%itags% -v Excluded_Tags:%etags% -v Date_Folder:%datefolder% -i %itags% -e %etags% -d %outputdir% --loglevel INFO %suitefile%
PAUSE