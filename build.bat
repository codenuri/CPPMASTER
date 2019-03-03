cls

@echo [101;93mg++ %* -std=c++17[0m
@_g++ %* -std=c++17 -fno-diagnostics-color -o g++-out.exe

@IF %ERRORLEVEL% EQU 0 (
	echo [7m[ g++ ½ÇÇà°á°ú ][0m
  	g++-out.exe
) ELSE (
	echo [7mError !![0m
)

@echo.
@echo.

@echo [101;93mcl %* /permissive- /std:c++17[0m
@cl  %* /permissive- /std:c++17 /nologo /EHsc /link /out:cl-out.exe

@IF %ERRORLEVEL%  EQU 0 (
	echo [7m[ cl ½ÇÇà°á°ú ][0m
	cl-out.exe
)ELSE (
	echo [7mError !![0m
)

@echo.