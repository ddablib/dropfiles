@rem ---------------------------------------------------------------------------
@rem Script used to create help file for Drop Files Components.
@rem
@rem Copyright (C) Peter Johnson (www.delphidabbler.com), 2010
@rem
@rem Requires evironment variable HC set to full file path to MS WinHelp
@rem compiler (HCRTF.exe).
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
