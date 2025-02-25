local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
require("keymap.config")

local plug_map = {
    -- Format
    ["n|<leader>F"] = map_cu("FormatWrite"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Bufferline
    ["n|gb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
    ["n|<leader>bn"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
    ["n|<leader>bp"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
    ["n|<leader>bN"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent(),
    ["n|<leader>bP"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent(),
    ["n|<leader>be"] = map_cr("BufferLineSortByExtension"):with_noremap(),
    ["n|<leader>bd"] = map_cr("BufferLineSortByDirectory"):with_noremap(),
    ["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Packer
    ["n|<leader>ps"] = map_cr("PackerSync"):with_silent():with_noremap():with_nowait(),
    ["n|<leader>pu"] = map_cr("PackerUpdate"):with_silent():with_noremap():with_nowait(),
    ["n|<leader>pi"] = map_cr("PackerInstall"):with_silent():with_noremap():with_nowait(),
    ["n|<leader>pc"] = map_cr("PackerClean"):with_silent():with_noremap():with_nowait(),
    -- #shutup formatter

    -- Lsp mapp work when insertenter and lsp start
    -- ["n|<leader>li"] = map_cr("LspInfo"):with_noremap():with_silent():with_nowait(),
    -- ["n|<leader>lr"] = map_cr("LspRestart"):with_noremap():with_silent():with_nowait(),
    ["n|]a"] = map_cr("Lspsaga diagnostic_jump_next"):with_noremap():with_silent(),
    ["n|[a"] = map_cr("Lspsaga diagnostic_jump_prev"):with_noremap():with_silent(),
    ["n|K"] = map_cr("Lspsaga hover_doc"):with_noremap():with_silent(),
    ["n|<C-Up>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(-1)"):with_noremap():with_silent(),
    ["n|<C-Down>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(1)"):with_noremap():with_silent(),
    ["n|<leader>ca"] = map_cr("Lspsaga code_action"):with_noremap():with_silent(),
    ["v|<leader>ca"] = map_cu("Lspsaga range_code_action"):with_noremap():with_silent(),
    ["n|gd"] = map_cr("Lspsaga preview_definition"):with_noremap():with_silent(),
    -- ["n|gD"] = map_cr("lua vim.lsp.buf.definition()"):with_noremap():with_silent(),
    ["n|sg"] = map_cr("Lspsaga signature_help"):with_noremap():with_silent(),
    ["n|rn"] = map_cr("Lspsaga rename"):with_noremap():with_silent(),
    -- ["n|gr"] = map_cr("lua vim.lsp.buf.references()"):with_noremap():with_silent(),
    ["n|<leader>ss"] = map_cr("ClangdSwitchSourceHeader"):with_noremap():with_silent(),
    ["n|<leader>sv"] = map_cr("ClangdSwitchSourceHeaderVSplit"):with_noremap():with_silent(),
    -- #shutup formatter

    -- FTerm
    ["n|<leader>ft"] = map_cu('lua require("FTerm").toggle()'):with_noremap():with_silent(),
    ["t|<A-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").toggle()]]):with_noremap():with_silent(),
    ["t|<A-S-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").exit()]]):with_noremap():with_silent(),
    -- ["n|<Leader>g"] = map_cu("lua require('FTerm').run('gitui')"):with_noremap():with_silent(),
    -- ["n|<Leader>G"] = map_cu("Git"):with_noremap():with_silent(),
    -- ["n|gps"] = map_cr("G push"):with_noremap():with_silent(),
    -- ["n|gpl"] = map_cr("G pull"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin trouble
    -- ["n|gt"] = map_cr("TroubleToggle"):with_noremap():with_silent(),
    -- ["n|gr"] = map_cr("TroubleToggle lsp_references"):with_noremap():with_silent(),
    ["n|<leader>cd"] = map_cr("TroubleToggle document_diagnostics"):with_noremap():with_silent(),
    ["n|<leader>cw"] = map_cr("TroubleToggle workspace_diagnostics"):with_noremap():with_silent(),
    ["n|<leader>cq"] = map_cr("TroubleToggle quickfix"):with_noremap():with_silent(),
    ["n|<leader>cl"] = map_cr("TroubleToggle loclist"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin nvim-tree
    ["n|<Leader>ls"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),
    -- ["n|<Leader>nf"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent(),
    -- ["n|<Leader>nr"] = map_cr("NvimTreeRefresh"):with_noremap():with_silent(),

    -- Plugin Telescope
    ["n|<leader>lg"] = map_cu("Telescope live_grep"):with_noremap():with_silent(), -- line(live) grep
    ["n|<leader>wg"] = map_cu("Telescope grep_string use_regex=true"):with_noremap():with_silent(), -- word grep
    ["n|<leader>ll"] = map_cu("Telescope current_buffer_fuzzy_find"):with_noremap():with_silent(), -- list lines
    ["n|<leader>lt"] = map_cu("Telescope lsp_document_symbols"):with_noremap():with_silent(), -- list tags(symbols)
    ["n|<leader>rl"] = map_cu("Telescope resume"):with_noremap():with_silent(), -- resume list
    ["n|<leader>cm"] = map_cu("Telescope git_bcommits"):with_noremap():with_silent(), -- list current buffer's git commits
    ["n|gr"] = map_cr("Telescope lsp_references"):with_noremap():with_silent(), -- grep references
    ["n|gi"] = map_cr("Telescope lsp_implementations"):with_noremap():with_silent(), -- grep lsp_implementations
    ["n|<C-p>"] = map_cu("Telescope find_files ignore_current_buffer=true sort_mru=true"):with_noremap():with_silent(),
    ["n|<C-n>"] = map_cu("Telescope buffers ignore_current_buffer=true sort_mru=true"):with_noremap():with_silent(),
    -- ["n|<Leader>fp"] = map_cu("Telescope project"):with_noremap():with_silent(),
    -- ["n|<Leader>fr"] = map_cu("Telescope frecency"):with_noremap():with_silent(),
    -- ["n|<Leader>fb"] = map_cu("Telescope file_browser"):with_noremap():with_silent(),
    -- ["n|<Leader>fg"] = map_cu("Telescope git_files"):with_noremap():with_silent(),
    -- ["n|<Leader>fz"] = map_cu("Telescope zoxide list"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin Dashboard
    ["n|<Leader>ff"] = map_cu("DashboardFindFile"):with_noremap():with_silent(),
    ["n|<Leader>sc"] = map_cu("DashboardChangeColorscheme"):with_noremap(),
    ["n|<Leader>fe"] = map_cu("DashboardFindHistory"):with_noremap():with_silent(),
    ["n|<Leader>fw"] = map_cu("DashboardFindWord"):with_noremap():with_silent(),
    ["n|<Leader>fn"] = map_cu("DashboardNewFile"):with_noremap():with_silent(),
    -- Plugin accelerate-jk
    -- ["n|j"] = map_cmd("v:lua.enhance_jk_move('j')"):with_silent():with_expr(),
    -- ["n|k"] = map_cmd("v:lua.enhance_jk_move('k')"):with_silent():with_expr(),
    -- #shutup formatter

    -- Plugin vim-eft
    ["n|f"] = map_cmd("v:lua.enhance_ft_move('f')"):with_expr(),
    ["n|F"] = map_cmd("v:lua.enhance_ft_move('F')"):with_expr(),
    ["n|t"] = map_cmd("v:lua.enhance_ft_move('t')"):with_expr(),
    ["n|T"] = map_cmd("v:lua.enhance_ft_move('T')"):with_expr(),
    -- ["n|;"] = map_cmd("v:lua.enhance_ft_move(';')"):with_expr(),
    -- #shutup formatter

    -- Plugin Hop
    ["n|<leader>jw"] = map_cu("HopWord"):with_noremap(),
    ["n|<leader>jl"] = map_cu("HopLine"):with_noremap(),
    ["n|<leader>jc"] = map_cu("HopChar1"):with_noremap(),
    ["n|<leader>jcc"] = map_cu("HopChar2"):with_noremap(),
    -- #shutup formatter

    -- Plugin EasyAlign
    ["n|gl"] = map_cmd("v:lua.enhance_align('nga')"):with_expr(),
    ["x|gl"] = map_cmd("v:lua.enhance_align('xga')"):with_expr(),
    -- #shutup formatter

    -- Plugin SymbolsOutline
    ["n|<leader>t"] = map_cr("SymbolsOutline"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin split-term
    ["n|<F5>"] = map_cr("VTerm"):with_noremap():with_silent(),
    ["n|<C-w>t"] = map_cr("VTerm"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin MarkdownPreview
    ["n|<F12>"] = map_cr("MarkdownPreviewToggle"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin auto_session
    ["n|<leader>S"] = map_cu("SaveSession"):with_noremap():with_silent(),
    ["n|<leader>R"] = map_cu("RestoreSession"):with_noremap():with_silent(),
    ["n|<leader>D"] = map_cu("DeleteSession"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin SnipRun
    ["v|<leader>r"] = map_cr("SnipRun"):with_noremap():with_silent(),
    -- #shutup formatter

    -- Plugin dap
    ["n|<F6>"] = map_cr("lua require('dap').continue()"):with_noremap():with_silent(),
    ["n|<leader>dr"] = map_cr("lua require('dap').continue()"):with_noremap():with_silent(),
    ["n|<leader>dd"] = map_cr("lua require('dap').disconnect()"):with_noremap():with_silent(),
    ["n|<leader>db"] = map_cr("lua require('dap').toggle_breakpoint()"):with_noremap():with_silent(),
    ["n|<leader>dB"] = map_cr("lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))"):with_noremap(

    ):with_silent(),
    ["n|<leader>dbl"] = map_cr("lua require('dap').list_breakpoints()"):with_noremap():with_silent(),
    ["n|<leader>drc"] = map_cr("lua require('dap').run_to_cursor()"):with_noremap():with_silent(),
    ["n|<leader>drl"] = map_cr("lua require('dap').run_last()"):with_noremap():with_silent(),
    ["n|<F9>"] = map_cr("lua require('dap').step_over()"):with_noremap():with_silent(),
    ["n|<leader>dv"] = map_cr("lua require('dap').step_over()"):with_noremap():with_silent(),
    ["n|<F10>"] = map_cr("lua require('dap').step_into()"):with_noremap():with_silent(),
    ["n|<leader>di"] = map_cr("lua require('dap').step_into()"):with_noremap():with_silent(),
    ["n|<F11>"] = map_cr("lua require('dap').step_out()"):with_noremap():with_silent(),
    ["n|<leader>do"] = map_cr("lua require('dap').step_out()"):with_noremap():with_silent(),
    ["n|<leader>dl"] = map_cr("lua require('dap').repl.open()"):with_noremap():with_silent(),
    ["o|m"] = map_cu([[lua require('tsht').nodes()]]):with_silent()
    -- #shutup formatter
}

bind.nvim_load_mapping(plug_map)
