# asn1parse
# Autogenerated from man page /usr/share/man/man1/asn1parse.1.gz
complete -c asn1parse -o help -d 'Print out a usage message'
complete -c asn1parse -o inform -d 'The input format'
complete -c asn1parse -o in -d 'The input file, default is standard input'
complete -c asn1parse -o out -d 'Output file to place the \\s-1DER\\s0 encoded data into'
complete -c asn1parse -o noout -d 'Don\'t output the parsed version of the input file'
complete -c asn1parse -o offset -d 'Starting offset to begin parsing, default is start of file'
complete -c asn1parse -o length -d 'Number of bytes to parse, default is until end of file'
complete -c asn1parse -s i -d 'Indents the output according to the \\*(L"depth\\*(R" of the structures'
complete -c asn1parse -o oid -d 'A file containing additional \\s-1OBJECT\\s0 IDENTIFIERs (OIDs)'
complete -c asn1parse -o dump -d 'Dump unknown data in hex format'
complete -c asn1parse -o dlimit -d 'Like -dump, but only the first num bytes are output'
complete -c asn1parse -o strparse -d 'Parse the contents octets of the \\s-1ASN. 1\\s0 object starting at offset'
complete -c asn1parse -o genstr -o genconf -d 'Generate encoded data based on string, file or both using ASN1_generate_nconf…'
complete -c asn1parse -o strictpem -d 'If this option is used then -inform will be ignored'

