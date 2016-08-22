use std::env;
use std::io::Write;

fn main() {
    for arg in env::args() {
        match &arg as &str {

            "-h" | "--help" => {
                println!("usage: elm-new [-V|--version] [-h|--help] [-b|--beginner] [--hello-world] [path]");
            }

            "-V" | "--version" => {
                println!("1.1.1");
            }

            arg => {
                if arg.starts_with('-') {
                    std::io::stderr()
                        .write(b"elm-new: illegal option --badarg")
                        .ok()
                        .expect("could not write to stderr");

                    println!("usage: elm-new [-V|--version] [-h|--help] [-b|--beginner] [--hello-world] [path]");
                }

                continue;
                // std::process::exit(0);
            }
        }
    }
}
