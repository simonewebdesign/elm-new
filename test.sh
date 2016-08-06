#!/bin/bash

cli=bin/elm-new

function ok {
  echo -e " \e[32m✓\e[0m"
}

function fail {
  echo -e " \e[31mFAIL\e[0m"
  exit_status=1
}

# Print test title
function test {
  echo -n $1
}

# Print debug info
function debug {
  echo -e "\n\e[2m*** $1\e[0m"
}

# Create a sandbox folder to run the tests in isolation
function sandbox {
  mkdir sandbox ; cd sandbox
}

# Cleanup the sandbox
function clean {
  cd .. ; rm -R sandbox
}


echo Running test suite...

test "prints help (-h|--help)"
if [[ $($cli -h) == "usage:"* ]]; then ok; else fail; fi

test "prints version (-V|--version)"
if [ "$($cli -V)" == "1.1.1" ]; then ok; else fail; fi

sandbox
debug "Running $cli with no args..."
../$cli >/dev/null

test "elm-package.json exists"
if [ -f "elm-package.json" ]; then ok; else fail; fi

test "README.md exists"
if [ -f "README.md" ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f ".gitignore" ]; then ok; else fail; fi

test "src folder exists"
if [ -d "src" ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f "src/Main.elm" ]; then ok; else fail; fi

test "src/MainBeginner.elm does not exist"
if [ ! -f "src/MainBeginner.elm" ]; then ok; else fail; fi

test "src/MainHelloWorld.elm does not exist"
if [ ! -f "src/MainHelloWorld.elm" ]; then ok; else fail; fi

test "It's an Html.program"
if grep --quiet Html.program src/Main.elm; then ok; else fail; fi

clean
sandbox
debug "Running $cli --beginner..."
../$cli --beginner >/dev/null

test "elm-package.json exists"
if [ -f "elm-package.json" ]; then ok; else fail; fi

test "README.md exists"
if [ -f "README.md" ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f ".gitignore" ]; then ok; else fail; fi

test "src folder exists"
if [ -d "src" ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f "src/Main.elm" ]; then ok; else fail; fi

test "src/MainBeginner.elm does not exist"
if [ ! -f "src/MainBeginner.elm" ]; then ok; else fail; fi

test "src/MainHelloWorld.elm does not exist"
if [ ! -f "src/MainHelloWorld.elm" ]; then ok; else fail; fi

test "It's an Html.beginnerProgram"
if grep --quiet Html.beginnerProgram src/Main.elm; then ok; else fail; fi

clean
sandbox
debug "Running $cli --hello-world..."
../$cli --hello-world >/dev/null

test "elm-package.json exists"
if [ -f "elm-package.json" ]; then ok; else fail; fi

test "README.md exists"
if [ -f "README.md" ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f ".gitignore" ]; then ok; else fail; fi

test "src folder exists"
if [ -d "src" ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f "src/Main.elm" ]; then ok; else fail; fi

test "src/MainBeginner.elm does not exist"
if [ ! -f "src/MainBeginner.elm" ]; then ok; else fail; fi

test "src/MainHelloWorld.elm does not exist"
if [ ! -f "src/MainHelloWorld.elm" ]; then ok; else fail; fi

test "It's a 'Hello world' program"
if grep --quiet "Hello, World!" src/Main.elm; then ok; else fail; fi

clean

exit $exit_status
