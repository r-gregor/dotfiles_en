# dateadd
# Autogenerated from man page /usr/share/man/man1/dateadd.1.gz
complete -c dateadd -s h -l help -d 'Print help and exit'
complete -c dateadd -s V -l version -d 'Print version and exit'
complete -c dateadd -s q -l quiet -d 'Suppress message about date/time and duration parser errors and fix-ups'
complete -c dateadd -s f -l format -d 'Output format'
complete -c dateadd -s i -l input-format -d 'Input format, can be used multiple times'
complete -c dateadd -s b -l base -d 'For underspecified input use DT as a fallback to fill in missing fields'
complete -c dateadd -s e -l backslash-escapes -d 'Enable interpretation of backslash escapes in the output and input format spe…'
complete -c dateadd -s S -l sed-mode -d 'Copy parts from the input before and after a matching date/time'
complete -c dateadd -l locale -d 'Format results according to LOCALE, this would only affect month and weekday …'
complete -c dateadd -l from-locale -d 'Interpret dates on stdin or the command line as coming from the locale LOCALE…'
complete -c dateadd -l from-zone -d 'Interpret dates on stdin or the command line as coming from the time zone ZONE'
complete -c dateadd -s z -l zone -d 'Convert dates printed on stdout to time zone ZONE, default: UTC'

