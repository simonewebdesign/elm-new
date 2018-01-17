#!/usr/bin/env bash

cli=$1

function ok {
  echo -e ' \033[32m✓\033[0m'
}

function fail {
  echo -e ' \033[31m✗\033[0m'
  exit_status=1
}

# Print test title
function test {
  echo -n "$1"
}

# Print group of tests title
function group {
  echo -e "\n\033[2m*** $1\033[0m"
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

test "prints help (-h)"
if [[ $($cli -h) =~ Usage: ]]; then ok; else fail; fi

test "prints help (--help)"
if [[ $($cli --help) =~ Usage: ]]; then ok; else fail; fi

test "prints version (-V)"
if [ "$($cli -V)" == 1.3.0 ]; then ok; else fail; fi

test "prints version (--version)"
if [ "$($cli --version)" == 1.3.0 ]; then ok; else fail; fi

echo When invalid arg provided,
test "    prints to stderr"
if [[ "$($cli --badarg 2>&1)" =~ "elm-new: illegal option --badarg" ]]; then ok; else fail; fi

test "    prints synopsis to stdout"
if [[ "$($cli --badarg 2>/dev/null)" =~ Usage: ]]; then ok; else fail; fi

test "    exits with error"
if ! $cli --badarg >/dev/null 2>&1; then ok; else fail; fi


sandbox
group "Running $cli with no args..."
../$cli >/dev/null

test "elm-package.json exists"
if [ -f elm-package.json ]; then ok; else fail; fi

test "README.md exists"
if [ -f README.md ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f .gitignore ]; then ok; else fail; fi

test "src/ exists"
if [ -d src ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f src/Main.elm ]; then ok; else fail; fi

test "It's an Html.program"
if grep --quiet Html.program src/Main.elm; then ok; else fail; fi


clean
sandbox
group "Running $cli --beginner..."
../$cli --beginner >/dev/null

test "elm-package.json exists"
if [ -f elm-package.json ]; then ok; else fail; fi

test "README.md exists"
if [ -f README.md ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f .gitignore ]; then ok; else fail; fi

test "src/ exists"
if [ -d src ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f src/Main.elm ]; then ok; else fail; fi

test "It's an Html.beginnerProgram"
if grep --quiet Html.beginnerProgram src/Main.elm; then ok; else fail; fi


clean
sandbox
group "Running $cli --hello-world..."
../$cli --hello-world >/dev/null

test "elm-package.json exists"
if [ -f elm-package.json ]; then ok; else fail; fi

test "README.md exists"
if [ -f README.md ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f .gitignore ]; then ok; else fail; fi

test "src/ exists"
if [ -d src ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f src/Main.elm ]; then ok; else fail; fi

test "It's a 'Hello world' program"
if grep --quiet "Hello, World!" src/Main.elm; then ok; else fail; fi


clean
sandbox
group "Running $cli somepath --hello-world --beginner..."
../$cli somepath --hello-world --beginner >/dev/null

test "elm-package.json exists"
if [ -f somepath/elm-package.json ]; then ok; else fail; fi

test "README.md exists"
if [ -f somepath/README.md ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f somepath/.gitignore ]; then ok; else fail; fi

test "src/ exists"
if [ -d somepath/src ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f somepath/src/Main.elm ]; then ok; else fail; fi

test "It's an Html.beginnerProgram"
if grep --quiet Html.beginnerProgram somepath/src/Main.elm; then ok; else fail; fi


clean
sandbox
group "Running $cli --navigation nav..."
../$cli --navigation nav >/dev/null

test "elm-package.json exists"
if [ -f nav/elm-package.json ]; then ok; else fail; fi

test "README.md exists"
if [ -f nav/README.md ]; then ok; else fail; fi

test ".gitignore exists"
if [ -f nav/.gitignore ]; then ok; else fail; fi

test "src/ exists"
if [ -d nav/src ]; then ok; else fail; fi

test "src/Main.elm exists"
if [ -f nav/src/Main.elm ]; then ok; else fail; fi

test "It's a Navigation.program"
if grep --quiet Navigation.program nav/src/Main.elm; then ok; else fail; fi

clean

exit $exit_status
