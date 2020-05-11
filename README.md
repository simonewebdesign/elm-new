# elm-new

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

### yarn

    yarn global add elm-new

### Homebrew

    brew install https://raw.githubusercontent.com/simonewebdesign/elm-new/master/elm-new.rb

### Git

    git clone https://github.com/simonewebdesign/elm-new.git
    cd elm-new && sudo make install

---

See [here](https://github.com/simonewebdesign/elm-new/blob/master/INSTALL.md) for other installation options.

---

### Support for older Elm versions

Older versions of Elm are also supported:

- Elm 0.19 => elm-new v2.0.0+
- Elm 0.18 => elm-new v1.3.0
- Elm 0.17 => elm-new v1.1.3
- Elm 0.16 => elm-new v0.1.0

So, for example, if you're using Elm 0.18, you'll want to grab elm-new v1.3.0. You can either install it via `brew` or `npm`, or download it straight from the [releases](https://github.com/simonewebdesign/elm-new/releases) page.

The choices also differ depending on the Elm version. For example, for Elm 0.18 you could choose between:

- [`Html.program`](https://package.elm-lang.org/packages/elm-lang/html/1.1.0/Html-App#program) — the default. Run: `elm-new my-project-name`
- [`Html.beginnerProgram`](https://package.elm-lang.org/packages/elm-lang/html/1.1.0/Html-App#beginnerProgram) — good for learning. Run: `elm-new my-project --beginner`
- [`Navigation.program`](https://package.elm-lang.org/packages/elm-lang/navigation/2.1.0/Navigation#program) — SPA with routing. Run: `elm-new my-project --navigation`

---

## Contributing

Contributors are welcome! Just fork this repo and start hacking away.

Make sure to check out [CONTRIBUTING.md](https://github.com/simonewebdesign/elm-new/blob/master/CONTRIBUTING.md) to get started.
