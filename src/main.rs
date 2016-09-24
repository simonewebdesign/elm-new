use std::env;
use std::io::Write;
// use std::fs;

fn main() {
    let mut path = ".";

    for arg in env::args() {
        match &arg as &str {
            // temporary solution; should ignore the first argument
            "target/debug/elm-new" => {
                continue;
            }

            "-h" | "--help" => {
                println!("usage: elm-new [-V|--version] [-h|--help] [-b|--beginner] [--hello-world] [path]");
            }

            "-V" | "--version" => {
                println!("1.1.1");
            }

            arg => {
                if arg.starts_with('-') { // arg is bad
                    std::io::stderr()
                        .write(b"elm-new: illegal option --badarg\n")
                        .ok()
                        .expect("could not write to stderr");

                    println!("usage: elm-new [-V|--version] [-h|--help] [-b|--beginner] [--hello-world] [path]");
                    std::process::exit(1);
                } else { // arg is path
                    println!("arg is a path: {}", arg);
                    path = arg;
                    // println!("`mkdir a`");
                    // Create a directory, returns `io::Result<()>`
                    // match fs::create_dir(arg) {
                    //     Err(why) => println!("! {:?}", why.kind()),
                    //     Ok(_) => {},
                    // }

                    // println!("`echo hello > a/b.txt`");
                    // // The previous match can be simplified using the `unwrap_or_else` method
                    // echo("hello", &Path::new("a/b.txt")).unwrap_or_else(|why| {
                    //     println!("! {:?}", why.kind());
                    // });
                }

                continue;
            }
        }
    }

    println!("path was set to {}", path);
}
