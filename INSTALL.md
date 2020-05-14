## Installing from source

Have a look at [`install.sh`](https://github.com/simonewebdesign/elm-new/blob/master/install.sh), it contains all the steps to install elm-new in any Linux or OS X machine.

Just open a terminal and run it:

    curl https://raw.githubusercontent.com/simonewebdesign/elm-new/master/install.sh | sh

If it didn't work for you, please let me know by opening a [new issue](https://github.com/simonewebdesign/elm-new/issues/new?title=Installation+issue&body=Please+write+here+about+the+problem+you+are+having+and+the+steps+to+reproduce+it.)!


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


## Windows (cmd.exe, MinGW, Cygwin, PowerShell)

You don't need to clone or download this repo. Just open cmd.exe and run:

    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/simonewebdesign/elm-new/master/install.bat', '%temp%\install.bat')"
    %temp%\install.bat

It will install the tool under `C:\Tools\elm-new`. If you want to just call the tool without specifying the full path, you need to add that path in your PATH environment variable: here's a [guide](http://www.computerhope.com/issues/ch000549.htm).

The tool will also just work on *MinGW*; it can be installed normally as described in the [README](https://github.com/simonewebdesign/elm-new#installation), or from source (see above).

You should be able to install it on *Cygwin* too if you have `make`. Here's [how to get `make`](http://superuser.com/questions/154418/where-do-i-get-make-for-cygwin).

If you're on Windows 10, whether you're using *PowerShell* or not, I'd highly recommend upgrading to the Anniversary Update: see [this page](https://msdn.microsoft.com/en-gb/commandline/wsl/about).
