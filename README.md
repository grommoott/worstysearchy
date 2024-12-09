# WorstySearchy plugin for NeoVim

It's a pet-project plugin for NeoVim that adds simple search menu

## Installation

- For Lazy.
    1. Create a new .lua file in your plugins directory
    2. Paste these lines of code into it
    3. Enjoy WorstySearchy!
```lua
return {
    "grommoott/worstysearchy",
    opts = {
        hotkey = "<leader>si", -- by default
        prompt = "Search... worsty..." -- by default
    }
}
```

## Features

Can search through current buffer in normal mode.
