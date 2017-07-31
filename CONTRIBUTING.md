# Contributing

If your idea is really big, maybe it's worth discussing before even starting to work on it. If that's the case, please just [open a new issue](https://github.com/simonewebdesign/elm-new/issues/new).

## Development

Getting started with development is really easy: there's no build step, just a Bash script. It is located under the `bin` folder.

The other folder, `share`, contains the templates that the tool can generate. All the script really does is just copy these templates from that location to another.

There is also a Makefile, it is used to install/uninstall and to run the tests:

    make test

Before submitting a PR, just make sure the tests are still passing. You may also want to write new ones to test your feature.

After you've opened a PR, Travis CI will run the tests for you. You can keep pushing more commits to your branch; Travis will keep testing your changes.

Please be patient while waiting for your PR to be reviewed. We may suggest some changes or improvements or alternatives.

### Testing on Windows

Here's how it's currently tested on AppVeyor (PowerShell):

    cmd.exe /c 'install.bat'
    bash -c "./test.sh ./elm-new"

You don't have to run this. A new build will be triggered automatically when you'll open a pull request.
