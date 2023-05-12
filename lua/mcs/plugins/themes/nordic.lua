local color = {
  blue = {
    light = "#82b5ba",
    dark = "#41484d",
  },

  yellow = {
    light = "#f0e086",
    dark = "#7a6802",
  },

  gray = {
    blue = "#3a404d",
  }
}

-- converts decimal hex number into hexadecimal
-- credit to /37796287 answer on SO
local function dectohex(num)
  if num == 0 then
      return '0'
  end
  local neg = false
  if num < 0 then
      neg = true
      num = num * -1
  end

  -- performs hex conversion 
  local hexstr = "0123456789ABCDEF"
  local result = ""
  while num > 0 do
      local n = math.fmod(num, 16)
      result = string.sub(hexstr, n + 1, n + 1) .. result
      num = math.floor(num / 16)
  end

  if neg then
      result = '-' .. result
  end

  return result
end

-- converts #aaccff hex string 
-- color into decimal value
local function hextodec(num)
  local hex = num:gsub("#", "")
  return tonumber(hex, 16)
end

-- decreases hex color decimal value
-- returns #aaccff hex color string
local function dimhex(c)
  local c_dec = hextodec(c)
  local result = dectohex(c_dec - 300)
  print(result)
  return "#" .. result
end

local nord = require('nordic')


-- Nordic setup
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
    reduced_blue = true,
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
    -- Syntax
    Identifier = {
      fg = "#f51be6",
    }, -- (preferred) any variable name
    None = {
      fg = "#f51be6",
      bg = "#f51be6",
    },

    -- Telescope
    -- Normals.
    TelescopePromptNormal = {
      bg = color.gray.blue,
    },
    TelescopeResultsNormal = {
      bg = color.gray.blue,
    },
    TelescopePreviewNormal = {
      bg = color.gray.blue,
    },

    -- Borders.
    TelescopeBorder = {
      bg = color.gray.blue,
      fg = color.gray.blue,
    },
    TelescopePromptBorder = {
      bg = color.gray.blue,
      fg = color.gray.blue,
    },
    TelescopeResultsBorder = {
      bg = color.gray.blue,
      fg = color.gray.blue,
    },
    TelescopePreviewBorder = {
      bg = color.gray.blue,
      fg = color.gray.blue,
    },

    -- Override of autocompletion styling
    NormalFloat = {
      fg = color.blue.light,
      bg = color.blue.dark,
    }, -- Normal text in floating windows. Text in second after Pmenu popup

    Pmenu = {
      fg = color.blue.light,
      bg = color.blue.dark,
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
      style = 'flat',
  },

  leap = {
      -- Dims the backdrop when using leap.
      dim_backdrop = false,
  },
})

-- Nordic configuration load
nord.load()
