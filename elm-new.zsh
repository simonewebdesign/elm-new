#compdef elm-new

__elm_new() {
    _arguments -s -S \
        "(- *)"{-h,--help}"[Print help text]" \
        "(- *)"{-V,--version}"[Print version]" \
        --hello-world"[Create a \"Hello, world!\" program]" \
        {-b,--beginner}"[Create a Browser.sandbox]" \
        --navigation"[Create a Browser.application]"
}

__elm_new
