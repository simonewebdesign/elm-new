@echo off

setlocal EnableDelayedExpansion

set choice=0
set dest=.

for %%a in (%*) do (

    set arg=%%a

    if %%a == --help (
        echo usage: elm-new [-V --version] [-h --help] [-b --beginner] [--hello-world] [path]
        exit /b

    ) else if %%a == -h (
        echo usage: elm-new [-V --version] [-h --help] [-b --beginner] [--hello-world] [path]
        exit /b

    ) else if %%a == --version (
        echo 1.2.0
        exit /b

    ) else if %%a == -V (
        echo 1.2.0
        exit /b

    ) else if %%a == --beginner (
        set choice=1

    ) else if %%a == -b (
        set choice=1

    ) else if %%a == --hello-world (
        set choice=2

    ) else if "!arg:~0,1!" == "-" (
        echo elm-new: illegal option !arg! 1>&2
        echo usage: elm-new [-V --version] [-h --help] [-b --beginner] [--hello-world] [path]
        exit /b 1

    ) else (
        set dest=%%a
    )
)


robocopy %~dp0\share\elm-new "%dest%" /e >nul 2>&1

if %choice% == 0 (
    del "%dest%\src\MainBeginner.elm"
    del "%dest%\src\MainHelloWorld.elm"

) else if %choice% == 1 (
    move "%dest%\src\MainBeginner.elm" "%dest%\src\Main.elm" >nul 2>&1
    del "%dest%\src\MainHelloWorld.elm"

) else if %choice% == 2 (
    move "%dest%\src\MainHelloWorld.elm" "%dest%\src\Main.elm" >nul 2>&1
    del "%dest%"\src\MainBeginner.elm
)


echo Your Elm program has been created successfully.
echo.
echo You can use "elm-make" to compile it:
echo.
echo     elm-make src/Main.elm
echo.
echo Run "elm" for more commands.

exit /b
