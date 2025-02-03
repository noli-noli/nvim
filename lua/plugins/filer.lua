return {
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- アイコンを表示
        "MunifTanjim/nui.nvim",
      },
      config = function()
        require("neo-tree").setup({
          filesystem = {
            filtered_items = {
              visible = true, -- ドットファイルも表示
            },
            follow_current_file = true, -- 現在開いているファイルにフォーカス
            use_libuv_file_watcher = true, -- ファイル変更を自動で検知
          },
          window = {
            width = 30,
            mappings = {
              ["o"] = "open",
              ["<CR>"] = "open",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["t"] = "open_tabnew",
            },
          },
        })
      end
    }
  }
  