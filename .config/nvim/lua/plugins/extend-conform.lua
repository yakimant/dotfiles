return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nix = { "alejandra" },
      yaml = { "yamlfmt" },
      yml = { "yamlfmt" },
      ["yaml.ansible"] = { "yamlfmt" },
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },
    },
  },
}
