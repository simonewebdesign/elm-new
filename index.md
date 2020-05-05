[![Build Status](https://travis-ci.org/simonewebdesign/elm-new.svg?branch=master)](https://travis-ci.org/simonewebdesign/elm-new) [![Build Status](https://ci.appveyor.com/api/projects/status/5jqfyredn4l7rxtv?svg=true)](https://ci.appveyor.com/project/simone/elm-new)

> Clojure has `lein new`, Elixir has `mix new` and now Elm has `elm new`!

With `elm new` you can easily **start a new Elm project from the command line**.

The idea is to be able to start coding right away instead of wasting time setting up the initial Elm architecture boilerplate.
This is especially useful if you do a lot of prototyping.

## Features

- **No dependencies** — all you need is a shell (like bash, zsh, fish, etc.)
- **Very simple** to install and use. Auto-completion included.
- **100% test covered**. It just works!

Simply choose between:

- [**sandbox**](https://package.elm-lang.org/packages/elm/browser/latest/Browser#sandbox) — good for learning about the Elm Architecture
- [**element**](https://package.elm-lang.org/packages/elm/browser/latest/Browser#element) — an Elm application embedded in an HTML element
- [**document**](https://package.elm-lang.org/packages/elm/browser/latest/Browser#document) — an application that has control over the full HTML document
- [**application**](https://package.elm-lang.org/packages/elm/browser/latest/Browser#application) — a single-page app


## Usage

```bash
elm-new                        # Initialize a Browser.document in the current directory
elm-new my-project             # Initialize a Browser.document in my-project/
elm-new my-project --beginner  # Initialize a Browser.sandbox in my-project/
elm-new my-spa --navigation    # Initialize a Browser.application in my-spa/
elm-new hello --hello-world    # Initialize a "Hello, world!" program in hello/
elm-new --version              # Prints the installed version
elm-new --help                 # Prints all possible commands
```

## Example

```
$ elm-new my-awesome-project

my-awesome-project
├── .gitignore
├── README.md
├── elm.json
└── src
    └── Main.elm

1 directory, 4 files

Your Elm program has been created successfully.
You can use "elm make" to compile it:

    cd my-awesome-project
    elm make src/Main.elm

Run "elm" for more commands.
```

## Installation

**Linux**, **Mac OS X** and **Windows** are supported.

### npm

    npm install -g elm-new

### Homebrew

    brew install https://raw.githubusercontent.com/simonewebdesign/elm-new/master/elm-new.rb

### Git

    git clone https://github.com/simonewebdesign/elm-new.git
    cd elm-new && sudo make install

---

See [here](https://github.com/simonewebdesign/elm-new/blob/master/INSTALL.md) for other installation options.
