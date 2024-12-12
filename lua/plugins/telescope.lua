return {
  {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup{
        defaults = {
          mappings = {
            i = { -- Insert mode mappings
              ["<C-c>"] = require('telescope.actions').close,
              ["<Esc>"] = require('telescope.actions').close,
            },
            n = { -- Normal mode mappings
              ["q"] = require('telescope.actions').close,
            },
          },
        },
      }
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<Space>f', builtin.find_files, {})
      vim.keymap.set('n', '<Space>g', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
