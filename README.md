# elm-new

An unopinionated tool for initializing an Elm 0.17 project. Inspired by `mix new` and `rails new`.

## Installation

```
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v1.0.1 > elm-new.tar.gz
tar -zxf elm-new.tar.gz
cd elm-new-1.0.1
sudo make install
```

## Usage

```
$ elm new elm-project
elm-project
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
