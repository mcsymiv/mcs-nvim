local color = {
  white = {
    w0 = "#ffffff",
  },

  red = {
    r0 = "#f7d0d0",
  },

  blue = {
    b0 = "#34c6eb",
    b1 = "#82b5ba",
    b2 = "#41484d",
    b3 = "#b8e6f2",
  },

  green = {
    g0 = "#4ede74",
    g1 = "#479e42",
  },

  yellow = {
    y0 = "#f0e086",
    y1 = "#7a6802",
    y2 = "#ebcd09",
  },

  gray = {
    blue0 = "#3a404d",
  },

  pink = {
    p0 = "#ed91ed",
    p1 = "#e6438c",
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
      brighter_whites = true,
  },

  -- Override the styling of any highlight group.
  override = {
    -- Syntax colors
    Title = {
      fg = color.yellow.y2,
    },

    Identifier = {
      fg = color.green.g0,
    }, -- (preferred) any variable name

    Function = {
      fg = color.blue.b0,
    }, -- function name (also: methods for classes)

    Keyword = {
      fg = color.pink.p0,
      bold = false,
    },

    Operator = {
      fg = color.blue.b3,
    },

    Visual = {
      bg = color.red.r0,
      bold = true,
    }, -- Visual mode selection

    -- Telescope
    -- Normals.
    TelescopePromptNormal = {
      bg = color.gray.blue0,
    },
    TelescopeResultsNormal = {
      bg = color.gray.blue0,
    },
    TelescopePreviewNormal = {
      bg = color.gray.blue0,
    },

    -- Borders.
    TelescopeBorder = {
      bg = color.gray.blue0,
      fg = color.gray.blue0,
    },
    TelescopePromptBorder = {
      bg = color.gray.blue0,
      fg = color.gray.blue0,
    },
    TelescopeResultsBorder = {
      bg = color.gray.blue0,
      fg = color.gray.blue0,
    },
    TelescopePreviewBorder = {
      bg = color.gray.blue0,
      fg = color.gray.blue0,
    },

    -- Override of autocompletion styling
    NormalFloat = {
      fg = color.blue.b0,
      bg = color.blue.b2,
    }, -- Normal text in floating windows. Text in second after Pmenu popup

    Pmenu = {
      fg = color.blue.b0,
      bg = color.blue.b2,
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
