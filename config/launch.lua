local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh' }
   options.launch_menu = {
      { label = 'PowerShell', args = { 'pwsh' } },
      -- { label = 'PowerShell Desktop', args = { 'powershell' } },
      -- { label = 'Command Prompt', args = { 'cmd' } },
      -- {
      --    label = 'Archlinux',
      --    args = { 'wezterm','ssh', 'wsl' },
      --    -- args = { 'wezterm', 'ssh', 'mafu@127.0.0.1' },
      -- },
      -- {
      --    label = 'Git Bash',
      --    args = { 'C:\\Users\\mafu\\scoop\\apps\\git\\current\\bin\\bash.exe' },
      -- },
      { label = 'Nushell', args = { 'nu' } },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
      { label = 'Zsh', args = { 'zsh' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
