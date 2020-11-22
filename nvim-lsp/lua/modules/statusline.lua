local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#191919',
  green = '#98971a',
  orange = '#d65d0e',
  grey = '#928374',
  blue = '#458588',
  red = '#cc241d',
  white =  '#ffffff' 
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

local mode_highlights = {
  n = colors.bg,
  v = colors.orange,
  i = colors.blue,
  c = colors.green,
  R = colors.green,
  t = colors.green,
}

gls.left[1] = {
   ViMode = {
    provider = function()
      local alias = {
        n = "  NORMAL ",
        i = "  INSERT ",
        c = "  COMMAND ",
        v = "  VISUAL ",
        R = "  REPLACE ",
        t = "  TERMINAL ",
      }
      -- dirty hack to get bg updates for vi mode
      local bg, fg = mode_highlights[vim.fn.mode()]
      vim.api.nvim_command(string.format("hi GalaxyViMode guifg=%s guibg=%s gui=bold",
                                         fg, bg))
      return alias[vim.fn.mode()]
    end,
    highlight = {colors.bg, colors.bg, "bold"},
    separator = '▋',
    separator_highlight = {colors.bg, colors.bg},
  },
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[2] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.bg},
  }
}
gls.left[3] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.bg},
  }
}
gls.left[4] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.bg},
  }
}
gls.left[5] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[6] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.orange,colors.bg},
  }
}

gls.right[1] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {colors.blue, colors.bg},
  },
}
gls.right[2] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    highlight = {colors.white, colors.bg}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    separator = '▋',
    separator_highlight = {colors.bg, colors.bg},
    condition = buffer_not_empty,
    highlight = {colors.orange,colors.bg},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {colors.white,colors.bg},
  }
}
