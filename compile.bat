cd C:\nes\AssemblyCrashCourse-main
C:\nes\cc65\bin\cl65 --verbose --target nes ^
cart.s

if exist cart.nes del cart.nes
rename cart cart.nes