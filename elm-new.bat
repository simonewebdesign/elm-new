@echo off

setlocal EnableDelayedExpansion

set choice=default
set dest=.
set synopsis=^

Usage: elm-new [PATH] [OPTIONS]^

Creates a new project with the specified options. The default is Browser.document.^

^

Options:^

  -b --beginner            Create a Browser.sandbox^

  --hello-world            Create a "Hello, world!" program^

  --navigation             Create a Browser.application^

  -h --help                Show this help text^

  -V --version             Print version^

^

Examples^

  elm-new                        Create a Browser.document in the current directory^

  elm-new my-project             Create a Browser.document in my-project/^

  elm-new my-project --beginner  Create a Browser.sandbox in my-project/^

  elm-new my-spa --navigation    Create a Browser.application in my-spa/^

  elm-new hello --hello-world    Create a `Hello world` program in hello/


for %%a in (%*) do (

    set arg=%%a

    if %%a == --help (
        echo !synopsis!
        exit /b

    ) else if %%a == -h (
        echo !synopsis!
        exit /b

    ) else if %%a == --version (
        echo 1.3.0
        exit /b

    ) else if %%a == -V (
        echo 1.3.0
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
        echo !synopsis!
        exit /b 1

    ) else (
        set dest=%%a
    )
)

robocopy %~dp0\share\elm-new\%choice% "%dest%" /e >nul 2>&1

echo Your Elm program has been created successfully.
echo.
echo You can use "elm make" to compile it:
echo.
echo     elm make src/Main.elm
echo.
echo Run "elm" for more commands.

exit /b
