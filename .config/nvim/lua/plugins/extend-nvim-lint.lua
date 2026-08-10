return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", os.getenv("XDG_CONFIG_HOME") .. "/.markdownlint-cli2.yaml", "--" },
        },
      },
      linters_by_ft = {
        make = { "checkmake" },
      },
    },
  },
}
