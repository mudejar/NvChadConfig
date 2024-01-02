### Mudejar's nvim config 

## Description
This repository contains the custom part of my Neovim configuration. I use NvChad as the base setup, and the custom plugins and configurations made by myself are stored in this repository.

# System requirements and expectations
This repository should be installed as a folder named `custom`, and it should fit into a wider neovim installation with a parent directory located at `$HOME/.config/nvim/` that will resemble the following tree structure:
.
├── init.lua
├── lazy-lock.json
├── LICENSE
└── lua
    ├── core
    │   ├── bootstrap.lua
    │   ├── default_config.lua
    │   ├── init.lua
    │   ├── mappings.lua
    │   └── utils.lua
    ├── custom <------------------------------------ THIS IS THE WHERE THE REPOSITORY SHOULD GO AND BE NAMED
    │   ├── chadrc.lua
    │   ├── configs
    │   │   ├── lspconfig.lua
    │   │   ├── null-ls.lua
    │   │   └── overrides.lua
    │   ├── highlights.lua
    │   ├── init.lua
    │   ├── mappings.lua
    │   ├── plugins.lua
    │   └── README.md
    └── plugins
        ├── configs
        │   ├── cmp.lua
        │   ├── lazy_nvim.lua
        │   ├── lspconfig.lua
        │   ├── mason.lua
        │   ├── nvimtree.lua
        │   ├── others.lua
        │   ├── telescope.lua
        │   └── treesitter.lua
        └── init.lua

This means that a dotfile repository must take into account that this custom configuration is a repository which is to be downloaded in the location of another repository. I have captured how to do this in my [dotfile repository](https://github.com/mudejar/dotfiles).

