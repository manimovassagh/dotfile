return {
    {
      "L3MON4D3/LuaSnip",
      lazy = false,
      dependencies = {
        "rafamadriz/friendly-snippets",
        "saadparwaiz1/cmp_luasnip",
      },
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()

  
        local ls = require("luasnip")
        local s = ls.snippet
        local t = ls.text_node
        local i = ls.insert_node
    
        ls.add_snippets("typescript", {
          s("de", {
            t("describe( description , () => {} "),

          }),
        } )

        ls.add_snippets("typescript", {
          s("it", {
            t("it('test', () => {} "),

          }),
        } )

        ls.add_snippets("typescript", {
          s("be", {
            t("beforeEach(() => {}"),

          }),
        } )



      end,
    },
    {
      "hrsh7th/cmp-nvim-lsp",
      lazy = false,
      config = true,
    },
    {
      "hrsh7th/nvim-cmp",
      lazy = false,
      config = function()
        local cmp = require("cmp")
        cmp.setup({
          window = {
            documentation = cmp.config.window.bordered(),
            completion = cmp.config.window.bordered(),
          },
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),

            ['<Tab>'] = cmp.mapping.select_next_item(),
            -- Select the [p]revious item
            ['<S-Tab>'] = cmp.mapping.select_prev_item(),
            
            
          }),
          
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
          }, {
            { name = "buffer" },
          }),
        })
      end,
    },
  }