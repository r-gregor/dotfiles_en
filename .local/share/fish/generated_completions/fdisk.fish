# fdisk
# Autogenerated from man page /usr/share/man/man8/fdisk.8.gz
complete -c fdisk -s b -l sector-size -d 'Specify the sector size of the disk'
complete -c fdisk -s B -l protect-boot -d 'Don\'t erase the begin of the first disk sector when create a new disk label'
complete -c fdisk -s c -l compatibility -d 'Specify the compatibility mode, \'dos\' or \'nondos\''
complete -c fdisk -s h -l help -d 'Display a help text and exit'
complete -c fdisk -s L -l color -d 'Colorize the output'
complete -c fdisk -s l -l list -d 'List the partition tables for the specified devices and then exit'
complete -c fdisk -s o -l output -d 'Specify which output columns to print'
complete -c fdisk -s s -l getsz -d 'Print the size in 512-byte sectors of each given block device'
complete -c fdisk -s t -l type -d 'Enable support only for disklabels of the specified type, and disable support…'
complete -c fdisk -s u -l units -d 'When listing partition tables, show sizes in \'sectors\' or in \'cylinders\''
complete -c fdisk -s C -l cylinders -d 'Specify the number of cylinders of the disk'
complete -c fdisk -s H -l heads -d 'Specify the number of heads of the disk'
complete -c fdisk -s S -l sectors -d 'Specify the number of sectors per track of the disk'
complete -c fdisk -s w -l wipe -d 'Wipe filesystem, RAID and partition-table signatures from the device, in orde…'
complete -c fdisk -s W -l wipe-partition -d 'Wipe filesystem, RAID and partition-table signatures from a newly created par…'
complete -c fdisk -s V -l version -d 'Display version information and exit'
