-- [nfnl] Compiled from after/plugin/gitsigns.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(bufnr)
  local gs = package.loaded.gitsigns
  local function map(mode, l, r, opts)
    opts = (opts or {})
    opts.buffer = bufnr
    return vim.keymap.set(mode, l, r, opts)
  end
  local function _2_()
    if vim.wo.diff then
      return "]c"
    else
    end
    local function _4_()
      return gs.next_hunk()
    end
    vim.schedule(_4_)
    return "<Ignore>"
  end
  map("n", "<leader>ghn", _2_, {expr = true})
  local function _5_()
    if vim.wo.diff then
      return "[c"
    else
    end
    local function _7_()
      return gs.prev_hunk()
    end
    vim.schedule(_7_)
    return "<Ignore>"
  end
  map("n", "<leader>ghp", _5_, {expr = true})
  map("n", "<leader>ghr", gs.reset_hunk)
  local function _8_()
    return gs.reset_hunk({vim.fn.line("."), vim.fn.line("v")})
  end
  map("v", "<leader>ghr", _8_)
  map("n", "<leader>ghs", gs.preview_hunk)
  local function _9_()
    return gs.blame_line({full = true})
  end
  map("n", "<leader>ghB", _9_)
  map("n", "<leader>gtB", gs.toggle_current_line_blame)
  map("n", "<leader>ghd", gs.diffthis)
  local function _10_()
    return gs.diffthis("~")
  end
  return map("n", "<leader>ghD", _10_)
end
return (require("gitsigns")).setup({current_line_blame = true, on_attach = _1_})
