complete --command elm-new  --no-files --arguments "--hello-world --navigation --help --version"

complete --command elm-new --require-parameter --long-option beginner --short-option b --description 'Create a Browser.sandbox'
complete --command elm-new --require-parameter --long-option hello-world --description 'Create a "Hello, world!" program'
complete --command elm-new --require-parameter --long-option navigation --description 'Create a Browser.application'
complete --command elm-new --require-parameter --long-option 'help' --short-option h --description 'Print help text'
complete --command elm-new --require-parameter --long-option version --short-option V --description 'Print version'
