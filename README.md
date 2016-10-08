# elm new [![Build Status](https://travis-ci.org/simonewebdesign/elm-new.svg?branch=master)](https://travis-ci.org/simonewebdesign/elm-new)

A CLI tool that **generates a file hierarchy for starting a new Elm project**. Same as `mix new`, `rails new`, `lein new` etc.

The idea is to be able to start coding right away instead of wasting time with the initial boilerplate. This is especially useful if you do a lot of prototyping.

## Features

- **Extremely lightweight** – less than 1kB
- **No dependencies** – all you need is Bash
- **Simple to install** and use

## Usage

```bash
elm new                      # Initialize an Html.program in the current directory
elm new elm-proj             # Initialize an Html.program in elm-proj/ directory
elm new elm-proj --beginner  # Initialize an Html.beginnerProgram in elm-proj/ directory
elm new hello --hello-world  # Generate an "Hello, world!" program in hello/ directory
elm new --version            # Prints the installed version
elm new --help               # Prints all possible commands
```

## Example

```
$ elm new elm-is-cool

elm-is-cool
├── .gitignore
├── README.md
├── elm-package.json
└── src
    └── Main.elm

1 directory, 4 files

Your Elm program has been created successfully.
You can use "elm-make" to compile it:

    elm-make src/Main.elm

Run "elm" for more commands.
```

## Installation

For **Linux**, **Mac**, and **Windows**, open a terminal and run:

    curl https://raw.githubusercontent.com/simonewebdesign/elm-new/master/install.sh | sh

#### From npm

    npm install -g elm-new

For other installation options, see [here](https://github.com/simonewebdesign/elm-new/blob/master/INSTALL.md).

---

If you have an idea for making this tool better, please don't hesitate to open a [new issue](https://github.com/simonewebdesign/elm-new/issues/new)!
