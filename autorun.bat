@echo off
doskey ls=cls $T$T dir /p
doskey version=for /f "tokens=3" %%a in ('reg query ^"HKLM^\Software^\Microsoft^\Windows NT^\CurrentVersion^" /v ^"ReleaseID^"') do @echo %%a
prompt $E[32;1m$P$G$E[0m
whoami /groups | find "S-1-16-12288" > nul 
if not errorlevel 1 (
   color 47 
   prompt $e[33;1m$p$e[0;37;41m$g
   doskey bench=winsat disk -drive $1:
) 