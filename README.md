# elm-new [![Build Status](https://travis-ci.org/simonewebdesign/elm-new.svg?branch=master)](https://travis-ci.org/simonewebdesign/elm-new)

A CLI tool that generates a file hierarchy for starting a new Elm project. Inspired by `mix new` and `rails new`.

The idea is to be able to start coding right away instead of wasting time setting up a project. This is especially useful if you do a lot of prototyping.

Sometimes the [Elm REPL](https://github.com/elm-lang/elm-repl) is enough, but other times you may want to set up an actual project and see how your idea works in practice. elm-new is particularly suited for this situation.



## Installation

```bash
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v1.1.0 > elm-new.tar.gz
tar -zxf elm-new.tar.gz
cd elm-new-1.1.0
sudo make install
```

### Installing in a custom directory (staged install)

elm-new would normally install itself in `/usr/local/bin/elm-new`. If you want to install to a different path, for example say `/tmp/elm`, you can do:

    make DESTDIR=/tmp/elm install

You would then find elm-new under `/tmp/elm/usr/local/bin`.

It is also possible to customize the prefix (`/usr/local` by default). For example:

    make PREFIX=~/opt install

The above would install elm-new under `~/opt/bin`.

In any case, if you wish to simply run `elm-new` without specifying the full path, you need to add the bin folder to `$PATH`. For example, if you're using bash:

    echo 'PATH=~/opt/bin:$PATH' >> ~/.bashrc
    . ~/.bashrc

## Usage

```bash
elm-new  # Initialize an Html.program in the current directory
elm-new mydir/  # Initialize in mydir
elm-new mydir --beginner  # Create an Html.beginnerProgram in mydir
elm-new hello --hello-world  # Generate an "Hello, world!" program
elm-new --version  # Prints the installed version
elm-new --help  # Prints all possible commands
```

Run the test suite with `make test`.
