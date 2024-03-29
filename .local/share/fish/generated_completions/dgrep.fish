# dgrep
# Autogenerated from man page /usr/share/man/man1/dgrep.1.gz
complete -c dgrep -s h -l help -d 'Print help and exit'
complete -c dgrep -s V -l version -d 'Print version and exit'
complete -c dgrep -s q -l quiet -d 'Suppress message about date/time and duration parser errors'
complete -c dgrep -s i -l input-format -d 'Input format, can be used multiple times'
complete -c dgrep -s b -l base -d 'For underspecified input use DT as a fallback to fill in missing fields'
complete -c dgrep -s e -l backslash-escapes -d 'Enable interpretation of backslash escapes in the output and input format spe…'
complete -c dgrep -s o -l only-matching -d 'Show only the part of a line matching DATE'
complete -c dgrep -s v -l invert-match -d 'Select non-matching lines'
complete -c dgrep -l from-locale -d 'Interpret dates on stdin or the command line as coming from the locale LOCALE…'
complete -c dgrep -l from-zone -d 'Consider date/times on stdin as coming from the zone ZONE, default: UTC'
complete -c dgrep -s z -l zone -d 'Consider date/times in EXPRESSION as coming from the zone ZONE, default: UTC'
complete -c dgrep -l eq -d 'Lines match when date/times are equal to EXPRESSION'
complete -c dgrep -l ne -d 'Lines match when date/times are not the same as EXPRESSION'
complete -c dgrep -l gt -d 'Lines match when date/times are newer than EXPRESSION'
complete -c dgrep -l lt -d 'Lines match when date/times are older than EXPRESSION'
complete -c dgrep -l ge -d 'Lines match when date/times are newer than or equal EXPRESSION'
complete -c dgrep -l le -d 'Lines match when date/times are older than or equal EXPRESSION'
complete -c dgrep -l nt -d 'Lines match when date/times are newer than or equal EXPRESSION'
complete -c dgrep -l ot -d 'Lines match when date/times are older than or equal EXPRESSION.  FORMAT SPECS'

