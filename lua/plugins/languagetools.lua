return {
  { "nvim-treesitter/nvim-treesitter" },

  -- Language Server stuff
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").vtsls.setup({})
    end,
  },

  -- lsp config; which is "informed" by blink.cmp.
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },

    -- using `opts` for defining servers
    opts = {
      servers = {
        lua_ls = {},
        vtsls = {},
        gopls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers) do
        -- passing config.capabilities to blink.cmp merges with the capabilities in your
        -- `opts[server].capabilities, if you've defined it
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end,
  },

  -- CMP. here we go again...
  {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- snippet support
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },

  -- and a little noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        view = 'cmdline',
      },
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    },
  },

  -- DAP Debug Access Protocol
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "microsoft/vscode-js-debug",
        version = "1.x",
        build = "npm i && npm run compile vsDebugServerBundle && mv dist out"
      },
    },
    config = function()
      -- require("dap-vscode-js").setup({
      --   debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
      --   adapters = { 'pwa-node' },
      -- })

      local dap = require("dap")

      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          args = {
            vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }

      dap.configurations["javascript"] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }
      dap.configurations["javascriptreact"] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }
      -- NOTE: for this to work, the system must have ts-node installed globally
      dap.configurations["typescript"] = {
        {
          type = 'pwa-node',
          request = 'launch',
          name = 'Launch Current File',
          cwd = vim.fn.getcwd(),
          runtimeExecutable = 'ts-node',
          args = {
            '${file}',
          },
          sourceMaps = true,
          protocol = 'inspector',
          skipFiles = {
            '<node_internals>/**',
            'node_modules/**',
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
        },
      }
      dap.configurations["typescriptreact"] = {
        {
          type = 'pwa-node',
          request = 'attach',
          name = '[deno] dev attach',
          sourceMaps = true,
          protocol = 'inspector',
          skipFiles = {
            '<node_internals>/**',
            'node_modules/**',
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          attachSimplePort = 9229,
        },
        {
          type = 'pwa-node',
          request = 'launch',
          name = '[deno] dev',
          cwd = vim.fn.getcwd(),
          runtimeExecutable = 'deno',
          args = {
            'run',
            '--inspect-brk',
            'dev',
          },
          sourceMaps = true,
          protocol = 'inspector',
          skipFiles = {
            '<node_internals>/**',
            'node_modules/**',
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          attachSimplePort = 9229,
        },
        {
          type = 'pwa-node',
          request = 'launch',
          name = '[npm] dev',
          cwd = vim.fn.getcwd(),
          runtimeExecutable = 'npm',
          args = {
            'run',
            'dev',
          },
          sourceMaps = true,
          protocol = 'inspector',
          skipFiles = {
            '<node_internals>/**',
            'node_modules/**',
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          attachSimplePort = 9229,
        },
      }

      dap.adapters["delve"] = function(callback, config)
        if config.mode == 'remote' and config.request == 'attach' then
          callback({
            type = 'server',
            host = config.host or '127.0.0.1',
            port = config.port or '38697'
          })
        else
          callback({
            type = 'server',
            port = '${port}',
            executable = {
              command = 'dlv',
              args = { 'dap', '-l', '127.0.0.1:${port}', '--log', '--log-output=dap' },
              detached = vim.fn.has("win32") == 0,
            }
          })
        end
      end

      -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
      dap.configurations["go"] = {
        {
          type = "delve",
          name = "Debug",
          request = "launch",
          program = "${file}"
        },
        {
          type = "delve",
          name = "Debug test", -- configuration for debugging test files
          request = "launch",
          mode = "test",
          program = "${file}"
        },
        -- works with go.mod packages and sub packages 
        {
          type = "delve",
          name = "Debug test (go.mod)",
          request = "launch",
          mode = "test",
          program = "./${relativeFileDirname}"
        },
      }
    end,
  },

  -- UI for DAP
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("dapui").setup()
    end,
  },
}

