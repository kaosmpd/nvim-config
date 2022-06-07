require("formatter").setup(
  {
    filetype = {
      lua = {
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      html = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      javascript = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      javascriptreact = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      typescript = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      typescriptreact = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      vue = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      json = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      markdown = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --no-semi --print-width 80"
            },
            stdin = true
          }
        end
      },
      css = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --print-width 80"
            },
            stdin = true
          }
        end
      },
      scss = {
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
              "--single-quote --print-width 80"
            },
            stdin = true
          }
        end
      },
      dart = {
        function()
          return {
            exe = "dart",
            args = {
              "format"
            },
            stdin = true
          }
        end
      }
    }
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua,*.html,*js,*.jsx,*.ts,*.tsx,*.vue,*.json,*.md,*.css,*.scss,*.dart FormatWrite
augroup END
]],
  true
)
