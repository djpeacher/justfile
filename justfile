
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

# Edit this file
edit:
    code ~/justfile/

# Find all .python-version files
pyenv-find dir="~/Developer ~/Desktop":
    @echo "🤖 Searching for .python-version files..."
    @find {{ dir }} -type f -name ".python-version" -print -exec cat {} \;

# List all pyenv virtualenvs
pyenv-venvs:
    @echo "🤖 These are all your virtualenvs..."
    @pyenv virtualenvs | grep -v "envs" | sed -E 's/^(.*) \(.*\/([0-9]+\.[0-9]+\.[0-9]+)\)$/\1 \2/' 

# Freeze pip to requirements.txt
freeze:
    pip freeze > requirements.txt