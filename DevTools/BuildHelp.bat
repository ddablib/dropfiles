@rem ---------------------------------------------------------------------------
@rem Script used to create help file for Drop Files Components.
@rem
@rem Requires environment variable HC set to full file path to MS WinHelp
@rem compiler (HCRTF.exe).
@rem
@rem Any copyright in this file is dedicated to the Public Domain.
@rem http://creativecommons.org/publicdomain/zero/1.0/
@rem
@rem $Rev$
@rem $Date$
@rem ---------------------------------------------------------------------------


@echo off

setlocal

set HelpDir=..\Help
set HelpFile=PJDropFiles.hlp
set ErrorMsg=

if "%HC%" == "" set ErrorMsg=Environment variable HC not set
if not "%ErrorMsg%" == "" goto error

%HC% -x %HelpDir%\%HelpFile%
if errorlevel 1 set ErrorMsg=Compilation failed
if not "%ErrorMsg%"=="" goto error
goto success

:error
echo *** ERROR: %ErrorMsg%
goto end

:success
echo Succeeded

:end

endlocal
