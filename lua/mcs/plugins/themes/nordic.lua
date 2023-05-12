local nord = require('nordic')
nord.setup({
  -- Available themes: 'nordic', 'onedark'.
  -- Onedark is WIP.
  theme = 'nordic',
  -- Enable bold keywords.
  bold_keywords = true,
  -- Enable italic comments.
  italic_comments = true,
  -- Enable general editor background transparency.
  transparent_bg = false,
  -- Enable brighter float border.
  bright_border = true,
  -- Nordic specific options.
  -- Set all to false to use original Nord colors.
  -- Adjusts some colors to make the theme a bit nicer (imo).
  nordic = {
      -- Reduce the overall amount of blue in the theme (diverges from base Nord).
      -- reduced_blue = true,
  },
  -- Onedark specific options.
  -- Set all to false to keep original onedark colors.
  -- Adjusts some colors to make the theme a bit nicer (imo).
  -- WIP.
  onedark = {
      -- Brighten the whites to fit the theme better.
      -- brighter_whites = true,
  },
  -- Override the styling of any highlight group.
  override = {
    NormalFloat = {
      fg = "#82b5ba",
      bg = "#41484d",
    }, -- Normal text in floating windows. Text in second after Pmenu popup
---    NormalSB = {
---      fg = "#82b5ba",
---      bg = "#41484d",
---    }, -- normal text in sidebar
---    FloatBorder = {
---      fg = "#82b5ba",
---      bg = "#41484d",
---    },
    Pmenu = {
      fg = "#82b5ba",
      bg = "#41484d",
    }, -- Popup menu
  },
  cursorline = {
      -- Enable bold font in cursorline.
      bold = false,
      -- Avialable styles: 'dark', 'light'.
      theme = 'light',
      -- Hide the cursorline when the window is not focused.
      hide_unfocused = true,
  },
  noice = {
      -- Available styles: `classic`, `flat`.
      style = 'classic',
  },
  telescope = {
      -- Available styles: `classic`, `flat`.
      style = 'classic',
  },
  leap = {
      -- Dims the backdrop when using leap.
      dim_backdrop = false,
  },
})
nord.load()
