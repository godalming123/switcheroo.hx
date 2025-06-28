# Switcheroo.hx

A helix plugin to switch between `.cpp` and `.h` files with the same base name.

# Installation

- [Install a version of helix that supports plugins](https://github.com/mattwparas/helix/blob/steel-event-system/STEEL.md)
- Clone `switcheroo.hx`:
  ```sh
  git clone https://github.com/godalming123/switcheroo.hx.git ~/.config/helix/switcheroo.hx/
  ```
  
- Add `switcheroo.hx` to `~/.config/helix/init.scm`:
  ```diff
  +(require "switcheroo.hx/main.scm")
  ```
  
- Add a keybinding to trigger the `switcheroo` command in `~/.config/helix/config.toml`:
  ```diff
  +[keys.normal.space.space]
  +s = ":switcheroo"
  ```
