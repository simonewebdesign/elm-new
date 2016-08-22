## Installing from source

1. Either clone this repository or download a release from the releases page.
2. `cd` in the folder and run `sudo make install`.

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
