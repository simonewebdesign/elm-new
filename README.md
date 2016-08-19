# elm-new [![Build Status](https://travis-ci.org/simonewebdesign/elm-new.svg?branch=master)](https://travis-ci.org/simonewebdesign/elm-new)

A CLI tool that generates a file hierarchy for starting a new Elm project. Inspired by `mix new` and `rails new`.

The idea is to be able to start coding right away instead of wasting time setting up a project. This is especially useful if you do a lot of prototyping.

Sometimes the [Elm REPL](https://github.com/elm-lang/elm-repl) is enough, but other times you may want to set up an actual project and see how your idea works in practice. elm-new is particularly suited for this situation.

## Features

- Very lightweight (less than 1kB! ~46 sloc)
- Simple to install and use
- Easy to add more templates and customize existing ones

## Installation

For Linux and Mac, open a terminal and run:

    curl https://raw.githubusercontent.com/simonewebdesign/elm-new/master/install.sh | sh

It will ask for root privileges (i.e. sudo password). If you have specific needs, for example you want to install to a location where you don't need root permission, check [INSTALL.md](https://raw.githubusercontent.com/simonewebdesign/elm-new/master/INSTALL.md).

Windows is not supported yet - hopefully it will be very soon!

## Usage

```bash
elm-new  # Initialize an Html.program in the current directory
elm-new mydir/  # Initialize in mydir
elm-new mydir --beginner  # Create an Html.beginnerProgram in mydir
elm-new hello --hello-world  # Generate an "Hello, world!" program
elm-new --version  # Prints the installed version
elm-new --help  # Prints all possible commands
```

### Customizing the templates

There are 3 templates by default:

- [Main.elm](https://github.com/simonewebdesign/elm-new/blob/master/share/elm-new/src/Main.elm) - The Elm Architecture, with model-view-update and subscriptions (Html.program)
- [MainBeginner.elm](https://github.com/simonewebdesign/elm-new/blob/master/share/elm-new/src/MainBeginner.elm) - Simplified Elm Architecture with model-view-update, but no subscriptions (Html.beginnerProgram)
- [MainHelloWorld.elm](https://github.com/simonewebdesign/elm-new/blob/master/share/elm-new/src/MainHelloWorld.elm) - Just prints "Hello, World!"

You'll find these templates under `/usr/local/share/elm-new/src`. Feel free to customize them, or even add new ones!

### Contributing to elm-new

If you want to submit a pull request, that's great! Please check the [contributing guidelines](https://github.com/simonewebdesign/elm-new/blob/master/CONTRIBUTING.md#contributing) for more information on how to get started.

If you have an idea for making this tool better, please don't hesitate to open a [new issue](https://github.com/simonewebdesign/elm-new/issues/new). Thanks!
