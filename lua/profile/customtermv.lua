
local te_buf = nil
local te_win_id = nil

local v = vim
local fun = v.fn
local cmd = v.api.nvim_command
local gotoid = fun.win_gotoid
local getid = fun.win_getid

local function openTerminalV()
	if fun.bufexists(te_buf) ~= 1 then
		cmd("au TermOpen * setlocal nonumber norelativenumber signcolumn=no")
		cmd("vsp | winc L | vert res 80 | te")
		te_win_id = getid()
		te_buf = fun.bufnr('%')
	elseif gotoid(te_win_id) ~= 1 then
		cmd("sb " .. te_buf .. "| winc L | vert res 80")
		te_win_id = getid()
	end
	cmd("startinsert")
end

local function hideTerminalV()
	if gotoid(te_win_id) == 1 then
		cmd("hide")
	end
end

function ToggleTerminalV()
	if gotoid(te_win_id) == 1 then
		hideTerminalV()
	else
		openTerminalV()
	end
end

