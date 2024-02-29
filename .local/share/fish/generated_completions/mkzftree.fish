# mkzftree
# Autogenerated from man page /usr/share/man/man1/mkzftree.1.gz
complete -c mkzftree -s f -l force -d 'Always compress all files, even if they get larger when compressed'
complete -c mkzftree -s z -l level -d 'Select compression level (1-9, default is 9)'
complete -c mkzftree -s u -l uncompress -d 'Uncompress an already compressed tree'
complete -c mkzftree -s p -l parallelism -d 'Compress in parallel'
complete -c mkzftree -s x -l one-filesystem -d 'Do not cross filesystem boundaries, but create directory stubs at mount points'
complete -c mkzftree -s X -l strict-one-filesystem -d 'Do not cross filesystem boundaries, and do not create directory stubs at moun…'
complete -c mkzftree -s C -l crib-path -d 'Steal ("crib") files from another directory if it looks (based on name, size,…'
complete -c mkzftree -s l -l local -d 'Do not recurse into subdirectories, but create the directories themselves'
complete -c mkzftree -s L -l strict-local -d 'Do not recurse into subdirectories, and do not create directories'
complete -c mkzftree -s F -l file -d 'Indicates that INPUT may not necessarily be a directory; this allows operatio…'
complete -c mkzftree -s s -l sloppy -d 'Treat file modes, times and ownership data as less than precious information …'
complete -c mkzftree -s v -l verbose -d 'Increase the program verbosity'
complete -c mkzftree -s V -l verbosity -d 'Set the program verbosity to R value '
complete -c mkzftree -s q -l quiet -d 'Issue no messages whatsoever, including error messages'
complete -c mkzftree -s h -l help -d 'Display a brief help message'
complete -c mkzftree -s w -l version -d 'Display the release version'

