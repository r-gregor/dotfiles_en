# prockill
# Autogenerated from man page /usr/share/man/man1/prockill.1.gz
complete -c prockill -o '<signal>' -d 'TQ  -s <signal> . TQ  --signal <signal> Specify the  signal to be sent'
complete -c prockill -s q -l queue -d 'Use  sigqueue(3) rather than  kill(2) and the value argument is used to speci…'
complete -c prockill -s l -l list -d 'List signal names'
complete -c prockill -s L -l table -d 'List signal names in a nice table'
complete -c prockill -s 9 -o SIGKILL -d or
complete -c prockill -o KILL -d 'Negative PID values may be used to choose whole process groups; see the PGID …'
complete -c prockill -s 1 -d 'is special; it indicates all processes except the kill process itself and init'
complete -c prockill -s s
complete -c prockill -l signal -d 'Specify the signal to be sent'
