# elm-new

A CLI tool that generates a file hierarchy for starting a new Elm project. Inspired by `mix new` and `rails new`.

## Installation

```
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v1.1.0 > elm-new.tar.gz
tar -zxf elm-new.tar.gz
cd elm-new-1.1.0
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

Run the test suite with `make test`.
