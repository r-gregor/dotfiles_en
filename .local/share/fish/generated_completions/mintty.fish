# mintty
# Autogenerated from man page /usr/share/man/man1/mintty.1.gz
complete -c mintty -s c -l config -d 'Read settings from the specified configuration file, in addition to the defau…'
complete -c mintty -s C -l loadconfig -d 'Read settings from the specified configuration file, in addition to the defau…'
complete -c mintty -l configdir -d 'Use the given directory to check for resource subdirectories  (themes, sounds…'
complete -c mintty -l dir -d 'Change initial directory to start in'
complete -c mintty -s e -l exec -d 'Execute the specified program in the terminal session and pass on any additio…'
complete -c mintty -s h -l hold -d 'Determine whether to keep the terminal window open when the command has finis…'
complete -c mintty -s i -l icon -d 'Load the window icon from an executable, DLL, or icon file'
complete -c mintty -s l -l log -d 'Copy all output into the specified log file, or standard output if a dash is …'
complete -c mintty -l logfile -d 'Like --log but with logging initially disabled, so just  specifying a potenti…'
complete -c mintty -s o -l option -d 'Override the named config file option with the given value, e. g'
complete -c mintty -s p -l position -d 'Open the window with its top left corner at the specified coordinates'
complete -c mintty -s s -l size -d 'Set the default size of the window in character columns and rows'
complete -c mintty -l nobidi -l nortl -d 'Disable bidi display (right-to-left support).  Same as -o Bidi=0'
complete -c mintty -s t -l title -d 'Use TITLE as the initial window title'
complete -c mintty -s T -l Title -d 'Use TITLE as the permanent window title'
complete -c mintty -s B -l Border -d 'Suppress window title, display only a frame or no border'
complete -c mintty -l tabbar -d 'Activate tabbar for tab-based session switching among virtual tabs'
complete -c mintty -l newtabs -d 'Create a new window even if virtual tabs are enabled, so running a new  tab g…'
complete -c mintty -l horbar -d 'Support horizontal scrolling'
complete -c mintty -s u -l utmp -d 'Create a utmp entry'
complete -c mintty -s w -l window -d 'Set the initial window state: normal, minimized, maximized, full screen, or h…'
complete -c mintty -l class -d 'Use CLASS as the window class name of the main window'
complete -c mintty -s d -l nodaemon -d 'Do not apply "daemonizing"'
complete -c mintty -s D -l daemon -d 'Enforce "daemonizing"'
complete -c mintty -s R -l Report -d 'Report requested information'
complete -c mintty -l trace -d 'This option redirects reporting (and debug) output to a file'
complete -c mintty -l store-taskbar-properties -d 'Enable persistent storage of Windows taskbar properties together with  option…'
complete -c mintty -l nopin -d 'Prevent pinning of the mintty window to the Windows taskbar'
complete -c mintty -s P -l pcon -d 'Enforce enabling or disabling of ConPTY support'
complete -c mintty -l wsl -l WSL -d 'Adjust to WSL (the Windows Subsystem for Linux, or Bash/Ubuntu on Windows):'
complete -c mintty -l WSLmode -d 'Setup a WSL session for the given distribution (like --WSL) but  do not actua…'
complete -c mintty -l rootfs -d 'Provide the root filesystem folder to adjust path conversion properly  for th…'
complete -c mintty -s ~ -d 'Start in the user\'s home directory.  Affects also WSL sessions'
complete -c mintty -s H -l help -d 'Display a brief help message and exit'
complete -c mintty -s V -l version -d 'Print version information and exit'
complete -c mintty -l fg -d 'Sets ForegroundColour'
complete -c mintty -l bg -d 'Sets BackgroundColour'
complete -c mintty -l cr -d 'Sets CursorColour'
complete -c mintty -l selfg -d 'Sets HighlightForegroundColour'
complete -c mintty -l selbg -d 'Sets HighlightBackgroundColour'
complete -c mintty -l fn -l font -d 'Sets Font'
complete -c mintty -l fs -d 'Sets FontSize'
complete -c mintty -l geometry -d 'Sets size and position, extending xterm syntax by an optional monitor number'
complete -c mintty -l en -d 'Sets Charset within the current locale'
complete -c mintty -l lf -d 'Sets Log, the log file name'
complete -c mintty -l sl -d 'Sets ScrollbackLines; effectively limited by MaxScrollbackLines'
complete -c mintty -o c/--config -o C/--loadconfig -d 'These are read in order after the default config files,  with settings in lat…'
complete -c mintty -o o/--option
complete -c mintty -s 1
complete -c mintty -s n -d 'will input the current date on Ctrl+Shift+d, disable window closing with Alt+…'

