# genrsa
# Autogenerated from man page /usr/share/man/man1/genrsa.1.gz
complete -c genrsa -o help -d 'Print out a usage message'
complete -c genrsa -o out -d 'Output the key to the specified file'
complete -c genrsa -o passout -d 'The output file password source'
complete -c genrsa -o aes128 -o aes192 -o aes256 -o aria128 -o aria192 -o aria256 -o camellia128 -o camellia192 -o camellia256 -o des -o des3 -o idea -d 'These options encrypt the private key with specified cipher before outputting…'
complete -c genrsa -o F4 -s 3 -d 'The public exponent to use, either 65537 or 3.  The default is 65537'
complete -c genrsa -o rand -d 'A file or files containing random data used to seed the random number generat…'
complete -c genrsa -o writerand -d 'Writes random data to the specified file upon exit'
complete -c genrsa -o engine -d 'Specifying an engine (by its unique id string) will cause genrsa to attempt t…'
complete -c genrsa -o primes -d 'Specify the number of primes to use while generating the \\s-1RSA\\s0 key'

