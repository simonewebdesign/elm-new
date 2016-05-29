# elm-new

An unopinionated tool for initializing an Elm 0.17 project. Inspired by `mix new` and `rails new`.

## Installation

```
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v0.2.0 > elm-new.tar.gz
tar -zxf elm-new.tar.gz
cd elm-new-0.2.0
sudo make install
```

## Usage

```
$ mkdir my-elm-project
$ cd my-elm-project
$ elm new
.
├── elm-package.json
├── .gitignore
├── README.md
└── src
    └── Main.elm

1 directory, 4 files

Your Elm program has been created successfully.
You can use "elm-make" to compile it:

    elm-make src/Main.elm

Run "elm" for more commands.
```
