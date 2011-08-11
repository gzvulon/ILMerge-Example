@ECHO OFF

rem #    set .NET version and output folder name
set net="v4, C:\Windows\Microsoft.NET\Framework\v4.0.30319"
set output=Output

rem #    process arguments
set ILMerge=%1ILMerge\ILMerge.exe
set target_path=%2
set target_file=%~nx2
set target_dir=%~dp2
set ConfigurationName=%3

rem #    set output path and result file path
set outdir=%target_dir%%output%
set result=%outdir%\%target_file%

rem #    print info
@echo     Start %ConfigurationName% Merging %target_file%. 
@echo Target: %target_path%
@echo target_dir: %target_dir%
@echo Config: %ConfigurationName% 

rem #    recreate outdir
IF EXIST "%outdir%" rmdir /S /Q "%outdir%"
md "%outdir%"

rem #    run merge cmd
@echo Merging: '%ILMerge% /wildcards /targetplatform:%net% /out:"%result%" %target_path% "%target_dir%*.dll"'
%ILMerge% /wildcards /targetplatform:%net% /out:"%result%" %target_path% "%target_dir%*.dll"

rem #    if succeded
IF %ErrorLevel% EQU 0 (
    
    rem #    clear real output folder and put there result assembly
    IF %ConfigurationName%==Release (

        del  %target_dir%*.*
        del  %target_dir%*.dll
        del  %target_dir%*.pdb
        del  %target_dir%*.xml
        del  %target_dir%*.*
        
        copy %result% %target_dir%
        rmdir /S /Q %outdir%
        set result=%target_path% 
        @echo Result: %target_file% "->  %target_path%"
    ) ELSE (
       @echo Result: %target_file% "->  %result%" )
   
   set status=succeded 
) ELSE (
    set status=failed )

@echo Merge %status% 
