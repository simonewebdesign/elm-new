@echo off

setlocal EnableDelayedExpansion

set choice=default
set dest=.

for %%a in (%*) do (

    set arg=%%a

    if %%a == --help (
        echo usage: elm-new [path] [-b --beginner] [--hello-world] [--navigation] [-h --help] [-V --version]
        exit /b

    ) else if %%a == -h (
        echo usage: elm-new [path] [-b --beginner] [--hello-world] [--navigation] [-h --help] [-V --version]
        exit /b

    ) else if %%a == --version (
        echo 1.2.0
        exit /b

    ) else if %%a == -V (
        echo 1.2.0
        exit /b

    ) else if %%a == --beginner (
        set choice=beginner

    ) else if %%a == -b (
        set choice=beginner

    ) else if %%a == --hello-world (
        set choice=hello-world

    ) else if %%a == --navigation (
        set choice=navigation

    ) else if "!arg:~0,1!" == "-" (
        echo elm-new: illegal option !arg! 1>&2
        echo usage: elm-new [path] [-b --beginner] [--hello-world] [--navigation] [-h --help] [-V --version]
        exit /b 1

    ) else (
        set dest=%%a
    )
)

robocopy %~dp0\share\elm-new\%choice% "%dest%" /e >nul 2>&1

echo Your Elm program has been created successfully.
echo.
echo You can use "elm-make" to compile it:
echo.
echo     elm-make src/Main.elm
echo.
echo Run "elm" for more commands.

exit /b
