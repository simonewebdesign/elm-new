#!/usr/bin/env node

spawn = require('child_process').spawnSync
cli = require('os').platform() === 'win32' ? __dirname + '/elm-new.bat' : __dirname + '/bin/elm-new'
cmd = spawn(cli, process.argv.slice(2))

// npm will rename .gitignore to .npmignore at publish time. See: https://github.com/npm/npm/issues/14216
spawn('mv', [__dirname + '/share/elm-new/.npmignore', __dirname + '/share/elm-new/.gitignore'])

stderr = cmd.stderr.toString()
stdout = cmd.stdout.toString()

if (stderr !== '') console.error(stderr)
if (stdout !== '') console.log(stdout)
if (stderr !== '') process.exit(1)
