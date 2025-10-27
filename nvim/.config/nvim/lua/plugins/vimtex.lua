return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.maplocalleader = " "
		-- Config "taken" from https://git.epheme.re/fmouhart/nvim-config-kickstart/commit/b420fa2111a2915c38f8137c966de3ee5db5b7a4
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			callback = function()
				local vimtex_remaps = {
					-- t -> h
					{ mode = { "n", "x" }, source = "tsf", target = "hsf", command = "<plug>(vimtex-cmd-toggle-frac)" },
					{ mode = "n", source = "tsc", target = "hsc", command = "<plug>(vimtex-cmd-toggle-star)" },
					{ mode = "n", source = "tss", target = "hss", command = "<plug>(vimtex-env-toggle-star)" },
					{ mode = "n", source = "tse", target = "hse", command = "<plug>(vimtex-env-toggle)" },
					{ mode = "n", source = "ts$", target = "hs$", command = "<plug>(vimtex-env-toggle-math)" },
					{
						mode = "n",
						source = "tsb",
						target = "hsb",
						command = "<plug>(vimtex-env-toggle-break)",
					},
					{
						mode = { "n", "x" },
						source = "tsd",
						target = "hsd",
						command = "<plug>(vimtex-delim-toggle-modifier)",
					},
					{
						mode = { "n", "x" },
						source = "tsD",
						target = "hsD",
						command = "<plug>(vimtex-delim-toggle-modifier-reverse)",
					},

					-- c -> l
					{ mode = "n", source = "cse", target = "lse", command = "<plug>(vimtex-env-change)" },
					{ mode = "n", source = "csc", target = "lsc", command = "<plug>(vimtex-cmd-change)" },
					{ mode = "n", source = "cs$", target = "ls$", command = "<plug>(vimtex-env-change-math)" },
					{ mode = "n", source = "csd", target = "lsd", command = "<plug>(vimtex-delim-change-math)" },
				}

				for _, remap in pairs(vimtex_remaps) do
					if vim.fn.maparg(remap.source) ~= "" then
						vim.keymap.del(remap.mode, remap.source, { buffer = true })
						vim.keymap.set(
							remap.mode,
							remap.target,
							remap.command,
							{ silent = true, noremap = true, buffer = true }
						)
					end
				end
			end,
		})
	end,
}
