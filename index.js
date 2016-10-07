#!/usr/bin/env node

const spawn = require('child_process').spawnSync
const cli = require('os').platform() === 'win32' ? 'elm-new.bat' : 'bin/elm-new'
const cmd = spawn(cli, process.argv.slice(2))

if (cmd.stderr) console.error(cmd.stderr.toString())
if (cmd.stdout) console.log(cmd.stdout.toString())
if (cmd.stderr) process.exit(1)
