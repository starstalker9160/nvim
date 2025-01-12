local M = {}

function M.setup()
    vim.cmd [[highlight clear]]
    vim.cmd [[if exists("syntax_on") | syntax reset | endif]]

    local colors = {
        bg = "#CBC7AF",
        fg = "#444139",
        accent = "#2A2A2A",
        red = "#D76750",
        green = "#8C9440",
        yellow = "#E6DDAF",
        blue = "#197BBD",
        purple = "#7D8EFF",
        teal = "#068d9d",
        gray = "#6C6B62",
        white = "#FFFFFF",
    }

    vim.cmd("hi Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
    vim.cmd("hi NormalNC guibg=" .. colors.bg .. " guifg=" .. colors.fg)
    vim.cmd("hi StatusLine guibg=" .. colors.accent .. " guifg=" .. colors.bg)
    vim.cmd("hi StatusLineNC guibg=" .. colors.gray .. " guifg=" .. colors.bg)

    vim.cmd("hi Comment guifg=" .. colors.gray) 
    vim.cmd("hi String guifg=" .. colors.green) 
    vim.cmd("hi Keyword guifg=" .. colors.purple) 
    vim.cmd("hi Function guifg=" .. colors.blue) 
    vim.cmd("hi Identifier guifg=" .. colors.accent) 
    vim.cmd("hi Type guifg=" .. colors.teal) 
    vim.cmd("hi Constant guifg=" .. colors.red) 

    vim.cmd("hi Search guibg=" .. colors.yellow .. " guifg=" .. colors.bg) 
    vim.cmd("hi IncSearch guibg=" .. colors.blue .. " guifg=" .. colors.bg) 
    vim.cmd("hi MatchParen guibg=" .. colors.gray .. " guifg=" .. colors.fg) 
  
    vim.cmd("hi Visual guibg=" .. colors.accent .. " guifg=" .. colors.bg)
    vim.cmd("hi VisualNOS guibg=" .. colors.accent .. " guifg=" .. colors.bg)
  
    vim.cmd("hi LineNr guifg=" .. colors.gray) 
    vim.cmd("hi CursorLineNr guifg=" .. colors.white) 
    vim.cmd("hi Cursor guibg=" .. colors.accent .. " guifg=" .. colors.bg) 
  
    vim.cmd("hi Error guifg=" .. colors.red .. " guibg=" .. colors.bg) 
    vim.cmd("hi Warning guifg=" .. colors.yellow .. " guibg=" .. colors.bg) 
  
    vim.cmd("hi DiffAdd guifg=" .. colors.green .. " guibg=" .. colors.bg) 
    vim.cmd("hi DiffChange guifg=" .. colors.blue .. " guibg=" .. colors.bg) 
    vim.cmd("hi DiffDelete guifg=" .. colors.red .. " guibg=" .. colors.bg) 
    vim.cmd("hi DiffText guifg=" .. colors.purple .. " guibg=" .. colors.bg) 
  
    vim.cmd("hi TabLine guibg=" .. colors.bg .. " guifg=" .. colors.gray) 
    vim.cmd("hi TabLineFill guibg=" .. colors.bg) 
    vim.cmd("hi TabLineSel guibg=" .. colors.accent .. " guifg=" .. colors.bg) 
  
    vim.cmd("hi StatusLine guibg=" .. colors.accent .. " guifg=" .. colors.bg)
    vim.cmd("hi StatusLineNC guibg=" .. colors.bg .. " guifg=" .. colors.gray)
  
    vim.cmd("hi Delimiter guifg=" .. colors.accent) 
end

return M
