return {
  'akinsho/toggleterm.nvim',
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal
    local vscode_like_term = Terminal:new {
      direction = 'horizontal',
      size = 9, -- Height of the terminal window
      close_on_exit = false, -- Keep the terminal session alive after exiting
      start_in_insert = true, -- Start in insert mode
    }

    -- Function to toggle the terminal
    function _toggle_vscode_like_term()
      vscode_like_term:toggle()
    end

    -- Keybinding to toggle the terminal
    vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua _toggle_vscode_like_term()<CR>', { noremap = true, silent = true })

    -- Plugin setup
    require('toggleterm').setup {
      size = 9,
      open_mapping = [[<c-\>]], -- Default toggle mapping
      hide_numbers = true,
      direction = 'horizontal',
      close_on_exit = false,
      shell = vim.o.shell,
    }
  end,
}
