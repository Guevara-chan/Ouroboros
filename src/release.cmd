setlocal
chcp 65001
set tmp_exe=Θuroboros.exe

if exist %tmp_exe% ( del %tmp_exe% )
C:/Utils/[dot]Net/Boo/bin/booc.exe -debug- Θuroboros.boo

if exist %tmp_exe% (
C:/Utils/Misc/ResHacker/ResourceHacker.exe -open %tmp_exe% -save %tmp_exe% -action addoverwrite -resource icon.ico -mask ICONGROUP, MAINICON, 0
C:/Utils/[dot]Net/Extra/ILMerge/ilmerge.exe %tmp_exe% C:/Utils/[dot]Net/Boo/bin/Boo.Lang.dll /t:winexe /ndebug /out:../「Θuroboros」.exe
del %tmp_exe%
)