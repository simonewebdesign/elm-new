# elm new [![Build Status](https://travis-ci.org/simonewebdesign/elm-new.svg?branch=master)](https://travis-ci.org/simonewebdesign/elm-new)

A CLI tool that **generates a file hierarchy for starting a new Elm project**. Same as `mix new`, `rails new`, `lein new` etc.

The idea is to be able to start coding right away instead of wasting time with the initial boilerplate. This is especially useful if you do a lot of prototyping.

## Features

- **Template based** — choose between `program`, `beginnerProgram` and `Navigation.program`
- **No dependencies** — all you need is a shell (like bash, zsh, fish, etc.)
- **Very simple** to install and use

## Usage

```bash
elm new                        # Initialize an Html.program in the current directory
elm new my-project             # Initialize an Html.program in my-project/
elm new my-project --beginner  # Initialize an Html.beginnerProgram in my-project/
elm new my-spa --navigation    # Initialize a Navigation.program in my-spa/
elm new hello --hello-world    # Initialize an "Hello, world!" program in hello/
elm new --version              # Prints the installed version
elm new --help                 # Prints all possible commands
```

## Example

```
$ elm new my-awesome-project

my-awesome-project
├── .gitignore
├── README.md
├── elm-package.json
└── src
    └── Main.elm

1 directory, 4 files

Your Elm program has been created successfully.
You can use "elm-make" to compile it:

    cd my-awesome-project
    elm-make src/Main.elm

Run "elm" for more commands.
```

## Installation

For **Linux**, **Mac**, and **Windows**, open a terminal and run:

    curl -L git.io/vX5cV | sh

#### From npm

    npm install -g elm-new

See [here](https://github.com/simonewebdesign/elm-new/blob/master/INSTALL.md) for other installation options.
