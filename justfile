
[private]
default:
  @just --justfile ~/justfile/justfile --list

[private]
choose:
  @just --justfile ~/justfile/justfile --choose

[private]
init:
    @echo "\nalias .just='just --justfile ~/justfile/justfile --working-directory .'" >> ~/.zprofile
    @echo ".just alias added to .zprofile! Start a new session to use it."

# Hello World!
hello:
    #!/usr/bin/env python
    val = input("Hello ____? ")
    print(f"Hello {val}!")

# Find all .python-version files
pyenv-find:
    @echo "🤖 Searching for .python-version files..."
    @find ~/Developer ~/Desktop -type f -name ".python-version" -print -exec cat {} \;

# List all pyenv virtualenvs
pyenv-venvs:
    @echo "🤖 These are all your virtualenvs..."
    @pyenv virtualenvs | grep -v "envs" | sed -E 's/^(.*) \(.*\/([0-9]+\.[0-9]+\.[0-9]+)\)$/\1 \2/' 

