# justfile

My user-level `justfile`! ([docs](https://just.systems/man/en/chapter_67.html))

```sh
$ .just
Available recipes:
    edit             # Edit this file
    freeze           # Freeze pip to requirements.txt
    hello            # Hello World!
    pyenv-find [dir] # Find all .python-version files
    pyenv-venvs      # List all pyenv virtualenvs
    stash            # Stashes all files, including untracked
```

```sh
# Assumes you have `just` installed.
cd ~
git clone https://github.com/djpeacher/justfile.git
just justfile/init [alias=".just"]
.just hello # Start a new session.
```
