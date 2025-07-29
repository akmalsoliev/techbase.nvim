<img width="535" height="40" alt="techbase-logo" src="https://github.com/user-attachments/assets/5d027d2f-e29e-4193-943c-6cc1ffbf3221" />

> You have entered deeply into the infested starport. But something is wrong.

A colorscheme inspired by [Techbase-style](https://doomwiki.org/wiki/Techbase_map) Doom maps, 1990's technology and conceptions of future technologies, and sci-fi and cosmic horror.

## Screenshots

<details>
<summary>Markdown</summary>

<img width="2370" height="1673" alt="techbase-markdown" src="https://github.com/user-attachments/assets/98cfec31-039b-4916-a661-8cd5ca451601" />

</details>

<details>
<summary>React</summary>

<img width="2242" height="1690" alt="techbase-react" src="https://github.com/user-attachments/assets/cd31475d-8719-4f48-8e24-8b8dc7cba51e" />

</details>

## Installation and Configuration

To use the color scheme with default options with Lazy.nvim:

```lua
{
    "mcauley-penney/techbase.nvim",
    config = function(_, opts)
        vim.cmd.colorscheme("techbase")
    end,
    priority = 1000
}
```

The available options and default configuration are:

```lua
{
    "mcauley-penney/techbase.nvim",
    opts = {
      -- set to true to make the background, floating windows, statusline,
      -- signcolumn, foldcolumn, and tabline transparent
      transparent = false,

      -- allows you to override any highlight group for finer-grained control
      overrides = {},
    },
    config = function(_, opts)
        require("techbase").setup(opts)
        vim.cmd.colorscheme("techbase")
    end,
    priority = 1000
}
```
