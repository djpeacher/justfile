# justfile

My user-level `justfile`! ([docs](https://just.systems/man/en/chapter_67.html))

```sh
$ .just       
Available recipes:
    hello       # Hello World!
    pyenv-find  # Find all .python-version files
    pyenv-venvs # List all pyenv virtualenvs
```

```sh
# Assumes you have `just` installed.
cd ~
git clone https://github.com/djpeacher/justfile.git
just justfile/init
.just hello # Start a new session.
```
