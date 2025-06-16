-- ~/.config/nvim/lua/plugins/avante.lua
return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- ¡No pongas "*" aquí!
  opts = {
    ------------------------------------------------------------------
    -- Proveedor principal: DeepSeek (API compatible con OpenAI)     --
    ------------------------------------------------------------------
    provider = "deepseek",
    providers = {
      deepseek = {
        -- Heredamos el parser y la lógica por defecto del proveedor OpenAI
        __inherited_from = "openai",

        -- Endpoint y autenticación
        endpoint = "https://api.deepseek.com/v1",

        -- Modelo que ofrece DeepSeek (ajusta si usas otro)
        model = "deepseek-chat",

        -- Ajustes extra para la request
        extra_request_body = {
          timeout = 30000, -- ms
          temperature = 0.25,
          max_completion_tokens = 8192,
        },
      },
    },
  },

  -- Compilación (opcional – instala binarios si no existen)
  build = "make", -- `make BUILD_FROM_SOURCE=true` si prefieres compilar

  --------------------------------------------------------------------
  -- Dependencias recomendadas (idénticas a la plantilla del repo)  --
  --------------------------------------------------------------------
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "stevearc/dressing.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      ft = { "markdown", "Avante" },
      opts = { file_types = { "markdown", "Avante" } },
    },
  },
}
