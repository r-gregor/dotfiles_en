# fzf
# Autogenerated from man page /usr/share/man/man1/fzf.1.gz
complete -c fzf -s x -l extended -d 'Extended-search mode.  Since 0. 10. 9, this is enabled by default'
complete -c fzf -s e -l exact -d 'Enable exact-match'
complete -c fzf -s i -d 'Case-insensitive match (default: smart-case match)'
complete -c fzf -s n -l nth -d 'Comma-separated list of field index expressions for limiting search scope'
complete -c fzf -l with-nth -d 'Transform each item using index expressions within finder'
complete -c fzf -s d -l delimiter -d 'Field delimiter regex for --nth and --with-nth (default: AWK-style) '
complete -c fzf -l no-sort -d 'Do not sort the result'
complete -c fzf -l tac -d 'Reverse the order of the input . RS e. g.  history | fzf --tac --no-sort . RE'
complete -c fzf -l tiebreak -d 'Comma-separated list of sort criteria to apply when the scores are tied. br  '
complete -c fzf -s m -l multi -d 'Enable multi-select with tab/shift-tab'
complete -c fzf -l ansi -d 'Enable processing of ANSI color codes'
complete -c fzf -l no-mouse -d 'Disable mouse'
complete -c fzf -l color -d 'Color configuration'
complete -c fzf -l black -d 'Use black background'
complete -c fzf -l reverse -d 'Reverse orientation'
complete -c fzf -l margin -d 'Comma-separated expression for margins around the finder. br  . br '
complete -c fzf -l tabstop -d 'Number of spaces for a tab character (default: 8)'
complete -c fzf -l cycle -d 'Enable cyclic scroll'
complete -c fzf -l no-hscroll -d 'Disable horizontal scroll'
complete -c fzf -l hscroll-off -d 'Number of screen columns to keep to the right of the highlighted substring (d…'
complete -c fzf -l inline-info -d 'Display finder info inline with the query'
complete -c fzf -l prompt -d 'Input prompt (default: \'> \')'
complete -c fzf -l toggle-sort -d 'Key to toggle sort.  For the list of the allowed key names, see --bind'
complete -c fzf -l bind -d 'Comma-separated list of custom key bindings'
complete -c fzf -l history -d 'Load search history from the specified file and update the file on completion'
complete -c fzf -l history-size -d 'Maximum number of entries in the history file (default: 1000)'
complete -c fzf -l header -d 'The given string will be printed as the sticky header'
complete -c fzf -l header-lines -d 'The first N lines of the input are treated as the sticky header'
complete -c fzf -s q -l query -d 'Start the finder with the given query'
complete -c fzf -s 1 -l select-1 -d 'Automatically select the only match'
complete -c fzf -s 0 -l exit-0 -d 'Exit immediately when there\'s no match'
complete -c fzf -s f -l filter -d 'Filter mode.  Do not start interactive finder'
complete -c fzf -l print-query -d 'Print query as the first line'
complete -c fzf -l expect -d 'Comma-separated list of keys that can be used to complete fzf in addition to …'
complete -c fzf -l sync -d 'Synchronous search for multi-staged filtering'
complete -c fzf -s 2

