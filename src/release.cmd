REM --Setup util_root for actual path.
chcp 65001
setlocal
set tmp_exe=Θuroboros.exe
set util_root=C:/Utils

if exist %tmp_exe% ( del %tmp_exe% )
%util_root%/[dot]Net/Boo/bin/booc.exe -debug- -i:icon.ico Θuroboros.boo

if exist %tmp_exe% (
%util_root%/[dot]Net/Extra/ILMerge/ilmerge.exe %tmp_exe% C:/Utils/[dot]Net/Boo/bin/Boo.Lang.dll /t:winexe /ndebug /out:../「Θuroboros」.exe
del %tmp_exe%
)

pause