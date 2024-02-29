# b2sum
# Autogenerated from man page /usr/share/man/man1/b2sum.1.gz
complete -c b2sum -s b -l binary -d 'read in binary mode (default unless reading tty stdin)'
complete -c b2sum -s c -l check -d 'read checksums from the FILEs and check them'
complete -c b2sum -s l -l length -d 'digest length in bits; must not exceed the max for the blake2 algorithm and m…'
complete -c b2sum -l tag -d 'create a BSD-style checksum'
complete -c b2sum -s t -l text -d 'read in text mode (default if reading tty stdin)'
complete -c b2sum -s z -l zero -d 'end each output line with NUL, not newline, and disable file name escaping '
complete -c b2sum -l ignore-missing -d 'don\'t fail or report status for missing files'
complete -c b2sum -l quiet -d 'don\'t print OK for each successfully verified file'
complete -c b2sum -l status -d 'don\'t output anything, status code shows success'
complete -c b2sum -l strict -d 'exit non-zero for improperly formatted checksum lines'
complete -c b2sum -s w -l warn -d 'warn about improperly formatted checksum lines'
complete -c b2sum -l help -d 'display this help and exit'
complete -c b2sum -l version -d 'output version information and exit'

