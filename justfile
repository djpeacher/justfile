
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