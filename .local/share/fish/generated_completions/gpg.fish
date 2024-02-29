# gpg
# Autogenerated from man page /usr/share/man/man1/gpg.1.gz
complete -c gpg -l default-key -d 'Use name as the default key to sign with'
complete -c gpg -l default-recipient -d 'Use name as default recipient if option --recipient is not used and don\'t ask…'
complete -c gpg -l default-recipient-self -d 'Use the default key as default recipient if option --recipient is not used an…'
complete -c gpg -l no-default-recipient -d 'Reset --default-recipient and --default-recipient-self'
complete -c gpg -s v -l verbose -d 'Give more information during processing'
complete -c gpg -l no-verbose -d 'Reset verbose level to 0'
complete -c gpg -s q -l quiet -d 'Try to be as quiet as possible'
complete -c gpg -l no-batch -d 'Use batch mode.   Never ask, do not allow interactive commands'
complete -c gpg -l no-tty -d 'Make sure that the TTY (terminal) is never used for any output'
complete -c gpg -l yes -d 'Assume "yes" on most questions'
complete -c gpg -l no -d 'Assume "no" on most questions'
complete -c gpg -l list-options -d 'This is a space or comma delimited string that gives options used when listin…'
complete -c gpg -l verify-options -d 'This is a space or comma delimited string that gives options used when verify…'
complete -c gpg -l disable-large-rsa -d 'With --gen-key and --batch, enable the creation of larger RSA secret keys tha…'
complete -c gpg -l disable-dsa2 -d 'Enable hash truncation for all DSA keys even for old DSA Keys up to 1024 bit'
complete -c gpg -l photo-viewer -d 'This is the command line that should be run to view a photo ID'
complete -c gpg -l exec-path -d 'Sets a list of directories to search for photo viewers and keyserver helpers'
complete -c gpg -l keyring -d 'Add file to the current list of keyrings'
complete -c gpg -l secret-keyring -d 'Same as --keyring but for the secret keyrings'
complete -c gpg -l primary-keyring -d 'Designate file as the primary public keyring'
complete -c gpg -l trustdb-name -d 'Use file instead of the default trustdb'
complete -c gpg -l homedir -d 'Set the name of the home directory to dir'
complete -c gpg -l pcsc-driver -d 'Use file to access the smartcard reader.  The current default is `libpcsclite'
complete -c gpg -l disable-ccid -d 'Disable the integrated support for CCID compliant readers'
complete -c gpg -l reader-port -d 'This option may be used to specify the port of the card terminal'
complete -c gpg -l display-charset -d 'Set the name of the native character set'
complete -c gpg -l no-utf8-strings -d 'Assume that command line arguments are given as UTF8 strings'
complete -c gpg -l options -d 'Read options from file and do not try to read them from the default options f…'
complete -c gpg -l no-options -d 'Shortcut for --options /dev/null'
complete -c gpg -l bzip2-compress-level -d 'Set compression level to n for the ZIP and ZLIB compression algorithms'
complete -c gpg -l bzip2-decompress-lowmem -d 'Use a different decompression method for BZIP2 compressed files'
complete -c gpg -l no-mangle-dos-filenames -d 'Older version of Windows cannot handle filenames with more than one dot'
complete -c gpg -l no-ask-cert-level -d 'When making a key signature, prompt for a certification level'
complete -c gpg -l default-cert-level -d 'The default to use for the check level when signing a key'
complete -c gpg -l min-cert-level -d 'When building the trust database, treat any signatures with a certification l…'
complete -c gpg -l trusted-key -d 'Assume that the specified key (which must be given as a full 8 byte key ID) i…'
complete -c gpg -l trust-model -d 'Set what trust model GnuPG should follow.  The models are:  . RS'
complete -c gpg -l no-auto-key-locate -d 'GnuPG can automatically locate and retrieve keys as needed using this option'
complete -c gpg -l keyid-format -d 'Select how to display key IDs.  "short" is the traditional 8-character key ID'
complete -c gpg -l keyserver -d 'Use name as your keyserver'
complete -c gpg -l keyserver-options -d 'This is a space or comma delimited string that gives options for the keyserver'
complete -c gpg -l completes-needed -d 'Number of completely trusted users to introduce a new key signer (defaults to…'
complete -c gpg -l marginals-needed -d 'Number of marginally trusted users to introduce a new key signer (defaults to…'
complete -c gpg -l max-cert-depth -d 'Maximum depth of a certification chain (default is 5)'
complete -c gpg -l simple-sk-checksum -d 'Secret keys are integrity protected by using a SHA-1 checksum'
complete -c gpg -l no-sig-cache -d 'Do not cache the verification status of key signatures'
complete -c gpg -l no-sig-create-check -d 'This options is obsolete.   It has no function'
complete -c gpg -l no-auto-check-trustdb -d 'If GnuPG feels that its information about the Web of Trust has to be updated,…'
complete -c gpg -l no-use-agent -d 'Try to use the GnuPG-Agent'
complete -c gpg -l gpg-agent-info -d 'Override the value of the environment variable \\(aqGPG_AGENT_INFO\\(aq'
complete -c gpg -l lock-once -d 'Lock the databases the first time a lock is requested and do not release the …'
complete -c gpg -l lock-multiple -d 'Release the locks every time a lock is no longer needed'
complete -c gpg -l lock-never -d 'Disable locking entirely'
complete -c gpg -l exit-on-status-write-error -d 'This option will cause write errors on the status FD to immediately terminate…'
complete -c gpg -l limit-card-insert-tries -d 'With n greater than 0 the number of prompts asking to insert a smartcard gets…'
complete -c gpg -l no-random-seed-file -d 'GnuPG uses a file to store its internal random pool over invocations'
complete -c gpg -l no-greeting -d 'Suppress the initial copyright message'
complete -c gpg -l no-secmem-warning -d 'Suppress the warning about "using insecure memory"'
complete -c gpg -l no-permission-warning -d 'Suppress the warning about unsafe file and home directory (--homedir) permiss…'
complete -c gpg -l no-mdc-warning -d 'Suppress the warning about missing MDC integrity protection'
complete -c gpg -l no-require-secmem -d 'Refuse to run if GnuPG cannot get secure memory.  Defaults to no (i. e'
complete -c gpg -l no-require-cross-certification -d 'When verifying a signature made from a subkey, ensure that the cross certific…'
complete -c gpg -l no-expert -d 'Allow the user to do certain nonsensical or "silly" things like signing an ex…'
complete -c gpg -s r -d 'Encrypt for user id name'
complete -c gpg -s R -d 'Encrypt for user ID name, but hide the key ID of this user\'s key'
complete -c gpg -l encrypt-to -d 'Same as --recipient but this one is intended for use in the options file and …'
complete -c gpg -l hidden-encrypt-to -d 'Same as --hidden-recipient but this one is intended for use in the options fi…'
complete -c gpg -l no-encrypt-to -d 'Disable the use of all --encrypt-to and --hidden-encrypt-to keys'
complete -c gpg -l group -d 'Sets up a named group, which is similar to aliases in email programs'
complete -c gpg -l ungroup -d 'Remove a given entry from the --group list'
complete -c gpg -l no-groups -d 'Remove all entries from the --group list'
complete -c gpg -s u -d 'Use name as the key to sign with'
complete -c gpg -l try-all-secrets -d 'Don\'t look at the key ID as stored in the message but try all secret keys in …'
complete -c gpg -s a -d 'Create ASCII armored output'
complete -c gpg -l no-armor -d 'Assume the input data is not in ASCII armored format'
complete -c gpg -s o -d 'Write output to file'
complete -c gpg -l max-output -d 'This option sets a limit on the number of bytes that will be generated when p…'
complete -c gpg -l import-options -d 'This is a space or comma delimited string that gives options for importing ke…'
complete -c gpg -l export-options -d 'This is a space or comma delimited string that gives options for exporting ke…'
complete -c gpg -l with-colons -d 'Print key listings delimited by colons'
complete -c gpg -l fixed-list-mode -d 'Do not merge primary user ID and primary key in --with-colon listing mode and…'
complete -c gpg -l with-fingerprint -d 'Same as the command --fingerprint but changes only the format of the output a…'
complete -c gpg -l no-textmode -d 'Treat input files as text and store them in the OpenPGP canonical text form w…'
complete -c gpg -l no-force-v3-sigs -d 'OpenPGP states that an implementation should generate v4 signatures but PGP v…'
complete -c gpg -l no-force-v4-certs -d 'Always use v4 key signatures even on v3 keys'
complete -c gpg -l force-mdc -d 'Force the use of encryption with a modification detection code'
complete -c gpg -l disable-mdc -d 'Disable the use of the modification detection code'
complete -c gpg -l personal-cipher-preferences -d 'Set the list of personal cipher preferences to string'
complete -c gpg -l personal-digest-preferences -d 'Set the list of personal digest preferences to string'
complete -c gpg -l personal-compress-preferences -d 'Set the list of personal compression preferences to string'
complete -c gpg -l s2k-cipher-algo -d 'Use name as the cipher algorithm used to protect secret keys'
complete -c gpg -l s2k-digest-algo -d 'Use name as the digest algorithm used to mangle the passphrases'
complete -c gpg -l s2k-mode -d 'Selects how passphrases are mangled'
complete -c gpg -l s2k-count -d 'Specify how many times the passphrase mangling is repeated'
complete -c gpg -l gnupg -d 'Use standard GnuPG behavior'
complete -c gpg -l openpgp -d 'Reset all packet, cipher and digest options to strict OpenPGP behavior'
complete -c gpg -l rfc4880 -d 'Reset all packet, cipher and digest options to strict RFC-4880 behavior'
complete -c gpg -l rfc2440 -d 'Reset all packet, cipher and digest options to strict RFC-2440 behavior'
complete -c gpg -l rfc1991 -d 'Try to be more RFC-1991 (PGP 2. x) compliant'
complete -c gpg -l pgp2 -d 'Set up all options to be as PGP 2'
complete -c gpg -l pgp6 -d 'Set up all options to be as PGP 6 compliant as possible'
complete -c gpg -l pgp7 -d 'Set up all options to be as PGP 7 compliant as possible'
complete -c gpg -l pgp8 -d 'Set up all options to be as PGP 8 compliant as possible'
complete -c gpg -l dry-run -d 'Don\'t make any changes (this is not completely implemented)'
complete -c gpg -l list-only -d 'Changes the behaviour of some commands'
complete -c gpg -l interactive -d 'Prompt before overwriting any files'
complete -c gpg -l debug-level -d 'Select the debug level for investigating problems'
complete -c gpg -l debug -d 'Set debugging flags'
complete -c gpg -l debug-all -d 'Set all useful debugging flags'
complete -c gpg -l debug-ccid-driver -d 'Enable debug output from the included CCID driver for smartcards'
complete -c gpg -l enable-progress-filter -d 'Enable certain PROGRESS status outputs'
complete -c gpg -l status-fd -d 'Write special status strings to the file descriptor n'
complete -c gpg -l status-file -d 'Same as --status-fd, except the status data is written to file file'
complete -c gpg -l logger-fd -d 'Write log output to file descriptor n and not to STDERR'
complete -c gpg -l logger-file -d 'Same as --logger-fd, except the logger data is written to file file'
complete -c gpg -l attribute-fd -d 'Write attribute subpackets to the file descriptor n'
complete -c gpg -l attribute-file -d 'Same as --attribute-fd, except the attribute data is written to file file'
complete -c gpg -l no-comments -d 'Use string as a comment string in clear text signatures and ASCII armored mes…'
complete -c gpg -l no-emit-version -d 'Force inclusion of the version string in ASCII armored output'
complete -c gpg -s N -l set-notation -d 'Put the name value pair into the signature as notation data'
complete -c gpg -l set-policy-url -d 'Use string as a Policy URL for signatures (rfc4880:5. 2. 3. 20)'
complete -c gpg -l sig-keyserver-url -d 'Use string as a preferred keyserver URL for data signatures'
complete -c gpg -l set-filename -d 'Use string as the filename which is stored inside messages'
complete -c gpg -l no-for-your-eyes-only -d 'Set the `for your eyes only\' flag in the message'
complete -c gpg -l no-use-embedded-filename -d 'Try to create a file with a name as embedded in the data'
complete -c gpg -l cipher-algo -d 'Use name as cipher algorithm'
complete -c gpg -l digest-algo -d 'Use name as the message digest algorithm'
complete -c gpg -l compress-algo -d 'Use compression algorithm name.  "zlib" is RFC-1950 ZLIB compression'
complete -c gpg -l cert-digest-algo -d 'Use name as the message digest algorithm used when signing a key'
complete -c gpg -l disable-cipher-algo -d 'Never allow the use of name as cipher algorithm'
complete -c gpg -l disable-pubkey-algo -d 'Never allow the use of name as public key algorithm'
complete -c gpg -l no-throw-keyids -d 'Do not put the recipient key IDs into encrypted messages'
complete -c gpg -l not-dash-escaped -d 'This option changes the behavior of cleartext signatures so that they can be …'
complete -c gpg -l no-escape-from-lines -d 'Because some mailers change lines starting with "From " to ">From " it is goo…'
complete -c gpg -l passphrase-repeat -d 'Specify how many times gpg will request a new passphrase be repeated'
complete -c gpg -l passphrase-fd -d 'Read the passphrase from file descriptor n'
complete -c gpg -l passphrase-file -d 'Read the passphrase from file file'
complete -c gpg -l passphrase -d 'Use string as the passphrase'
complete -c gpg -l command-fd -d 'This is a replacement for the deprecated shared-memory IPC mode'
complete -c gpg -l command-file -d 'Same as --command-fd, except the commands are read out of file file'
complete -c gpg -l no-allow-non-selfsigned-uid -d 'Allow the import and use of keys with user IDs which are not self-signed'
complete -c gpg -l allow-freeform-uid -d 'Disable all checks on the form of the user ID while generating a new one'
complete -c gpg -l ignore-time-conflict -d 'GnuPG normally checks that the timestamps associated with keys and signatures…'
complete -c gpg -l ignore-valid-from -d 'GnuPG normally does not select and use subkeys created in the future'
complete -c gpg -l ignore-crc-error -d 'The ASCII armor used by OpenPGP is protected by a CRC checksum against transm…'
complete -c gpg -l ignore-mdc-error -d 'This option changes a MDC integrity protection failure into a warning'
complete -c gpg -l allow-weak-digest-algos -d 'Signatures made with known-weak digest algorithms are normally rejected with …'
complete -c gpg -l weak-digest -d 'Treat the specified digest algorithm as weak'
complete -c gpg -l no-default-keyring -d 'Do not add the default keyrings to the list of keyrings'
complete -c gpg -l skip-verify -d 'Skip the signature verification step'
complete -c gpg -l with-key-data -d 'Print key listings delimited by colons (like --with-colons) and print the pub…'
complete -c gpg -l fast-list-mode -d 'Changes the output of the list commands to work faster; this is achieved by l…'
complete -c gpg -l no-literal -d 'This is not for normal use'
complete -c gpg -l set-filesize -d 'This is not for normal use'
complete -c gpg -l show-session-key -d 'Display the session key used for one message'
complete -c gpg -l override-session-key -d 'Don\'t use the public key but the session key string'
complete -c gpg -l no-ask-sig-expire -d 'When making a data signature, prompt for an expiration time'
complete -c gpg -l default-sig-expire -d 'The default expiration time to use for signature expiration'
complete -c gpg -l no-ask-cert-expire -d 'When making a key signature, prompt for an expiration time'
complete -c gpg -l default-cert-expire -d 'The default expiration time to use for key signature expiration'
complete -c gpg -l allow-secret-key-import -d 'This is an obsolete option and is not used anywhere'
complete -c gpg -l no-allow-multiple-messages -d 'Allow processing of multiple OpenPGP messages contained in a single file or s…'
complete -c gpg -l enable-special-filenames -d 'This options enables a mode in which filenames of the form \\(oq-&n\', where n …'
complete -c gpg -l no-expensive-trust-checks -d 'Experimental use only'
complete -c gpg -l preserve-permissions -d 'Don\'t change the permissions of a secret keyring back to user read/write only'
complete -c gpg -l default-preference-list -d 'Set the list of default preferences to string'
complete -c gpg -l default-keyserver-url -d 'Set the default keyserver URL to name'
complete -c gpg -l list-config -d 'Display various internal configuration parameters of GnuPG'
complete -c gpg -l gpgconf-list -d 'This command is similar to --list-config but in general only internally used …'
complete -c gpg -l gpgconf-test -d 'This is more or less dummy action'
complete -c gpg -l load-extension -d 'Load an extension module'
complete -c gpg -l no-show-photos -d 'Causes --list-keys, --list-sigs, --list-public-keys, --list-secret-keys, and …'
complete -c gpg -l show-keyring -d 'Display the keyring name at the head of key listings to show which keyring a …'
complete -c gpg -l ctapi-driver -d 'Use file to access the smartcard reader.  The current default is `libtowitoko'
complete -c gpg -l always-trust -d 'Identical to --trust-model always.  This option is deprecated'
complete -c gpg -l no-show-notation -d 'Show signature notations in the --list-sigs or --check-sigs listings as well …'
complete -c gpg -l version -d 'Print the program version and licensing information'
complete -c gpg -l help
complete -c gpg -s h -d 'Print a usage message summarizing the most useful command line options'
complete -c gpg -l warranty -d 'Print warranty information'
complete -c gpg -l dump-options -d 'Print a list of all available options and commands'
complete -c gpg -l sign
complete -c gpg -s s -d 'Make a signature'
complete -c gpg -l symmetric -d 'decrypted via a secret key or a passphrase)'
complete -c gpg -l local-user
complete -c gpg -l clearsign -d 'Make a clear text signature'
complete -c gpg -l detach-sign
complete -c gpg -s b -d 'Make a detached signature'
complete -c gpg -l encrypt
complete -c gpg -s e -d 'Encrypt data'
complete -c gpg -s c -d 'Encrypt with a symmetric cipher using a passphrase'
complete -c gpg -l store -d 'Store only (make a simple RFC1991 literal data packet)'
complete -c gpg -l decrypt
complete -c gpg -s d -d 'Decrypt the file given on the command line (or STDIN if no file is specified)…'
complete -c gpg -l output -d verified
complete -c gpg -l verify -d 'Assume that the first argument is a signed file and verify it without generat…'
complete -c gpg -l multifile -d 'This modifies certain other commands to accept multiple files for processing …'
complete -c gpg -l verify-files -d 'Identical to --multifile --verify'
complete -c gpg -l encrypt-files -d 'Identical to --multifile --encrypt'
complete -c gpg -l decrypt-files -d 'Identical to --multifile --decrypt'
complete -c gpg -l list-keys
complete -c gpg -s k
complete -c gpg -l list-public-keys -d 'List all keys from the public keyrings, or just the keys given on the command…'
complete -c gpg -l list-secret-keys
complete -c gpg -s K -d 'List all keys from the secret keyrings, or just the ones given on the command…'
complete -c gpg -l export-secret-subkeys
complete -c gpg -l list-sigs -d 'Same as --list-keys, but the signatures are listed too'
complete -c gpg -l cert-policy-url -d 'notation (see --cert-notation), "X" for an eXpired signature (see --ask-cert-…'
complete -c gpg -l check-sigs -d 'Same as --list-sigs, but the signatures are verified'
complete -c gpg -l fingerprint -d 'List all keys (or the specified ones) along with their fingerprints'
complete -c gpg -l list-packets -d 'List only the sequence of packets.  This is mainly useful for debugging'
complete -c gpg -l card-edit -d 'Present a menu to work with a smartcard'
complete -c gpg -l card-status -d 'Show the content of the smart card'
complete -c gpg -l change-pin -d 'Present a menu to allow changing the PIN of a smartcard'
complete -c gpg -l delete-key -d 'Remove key from the public keyring'
complete -c gpg -l delete-secret-key -d 'Remove key from the secret keyring'
complete -c gpg -l delete-secret-and-public-key -d 'Same as --delete-key, but if a secret key exists, it will be removed first'
complete -c gpg -l export -d 'Either export all keys from all keyrings (default keyrings and those register…'
complete -c gpg -l armor
complete -c gpg -l send-keys -d 'Similar to --export but sends the keys to a keyserver'
complete -c gpg -l export-secret-keys
complete -c gpg -l import
complete -c gpg -l fast-import -d 'Import/merge keys.  This adds the given keys to the keyring'
complete -c gpg -l recv-keys -d 'Import the keys with the given key IDs from a keyserver.  Option'
complete -c gpg -l refresh-keys -d 'Request updates from a keyserver for keys that already exist on the local key…'
complete -c gpg -l search-keys -d 'Search the keyserver for the given names'
complete -c gpg -l fetch-keys -d 'Retrieve keys located at the specified URIs'
complete -c gpg -l update-trustdb -d 'Do trust database maintenance'
complete -c gpg -l edit-key
complete -c gpg -l check-trustdb -d 'Do trust database maintenance without user interaction'
complete -c gpg -l batch -d 'a check is needed.  To force a run even in batch mode add the option'
complete -c gpg -l export-ownertrust -d 'Send the ownertrust values to STDOUT'
complete -c gpg -l import-ownertrust -d 'Update the trustdb with the ownertrust values stored in files (or STDIN if no…'
complete -c gpg -l rebuild-keydb-caches -d 'When updating from version 1. 0. 6 to 1. 0'
complete -c gpg -l print-md
complete -c gpg -l print-mds -d 'Print message digest of algorithm ALGO for all given files or STDIN'
complete -c gpg -l gen-random -d 'Emit count random bytes of the given quality level 0, 1 or 2'
complete -c gpg -l gen-prime -d 'Use the source, Luke :-).  The output format is still subject to change'
complete -c gpg -l enarmor
complete -c gpg -l dearmor -d 'Pack or unpack an arbitrary input into/from an OpenPGP ASCII armor'
complete -c gpg -l gen-key -d 'Generate a new key pair using the current default parameters'
complete -c gpg -l gen-revoke -d 'Generate a revocation certificate for the complete key'
complete -c gpg -l desig-revoke -d 'Generate a designated revocation certificate for a key'
complete -c gpg -l cert-notation -d '"none" removes all notations, setting a notation prefixed with a minus sign (…'
complete -c gpg -l require-cross-certification -d 'this signature by default, so this option is only useful to bring older keys …'
complete -c gpg -l sign-key -d 'Signs a public key with your secret key'
complete -c gpg -l lsign-key -d 'Signs a public key with your secret key but marks it as non-exportable'
complete -c gpg -l enable-large-rsa
complete -c gpg -l enable-dsa2
complete -c gpg -l recv-from
complete -c gpg -l utf8-strings
complete -c gpg -s z
complete -c gpg -l compress-level
complete -c gpg -l mangle-dos-filenames
complete -c gpg -l ask-cert-level
complete -c gpg -l auto-key-locate
complete -c gpg -l auto-check-trustdb
complete -c gpg -l use-agent
complete -c gpg -l require-secmem
complete -c gpg -l expert
complete -c gpg -l recipient
complete -c gpg -l hidden-recipient -d 'unless --default-recipient is given'
complete -c gpg -l - -d 'from the command line, it may be necessary to quote the argument to this opti…'
complete -c gpg -l throw-keyids -d 'handy in case where an encrypted message contains a bogus key ID'
complete -c gpg -s t -l textmode
complete -c gpg -l force-v3-sigs
complete -c gpg -l sig-policy-url -l sig-notation
complete -c gpg -l force-v4-certs
complete -c gpg -l 's2k-*'
complete -c gpg -l escape-from-lines -d 'SHA224, SHA384, and SHA512 digests'
complete -c gpg -s n
complete -c gpg -s i
complete -c gpg -l log-file
complete -c gpg -l comment
complete -c gpg -l emit-version
complete -c gpg -l for-your-eyes-only
complete -c gpg -l use-embedded-filename
complete -c gpg -l allow-non-selfsigned-uid
complete -c gpg -l ask-sig-expire
complete -c gpg -l ask-cert-expire
complete -c gpg -l allow-multiple-messages
complete -c gpg -l show-photos
complete -c gpg -l show-notation
complete -c gpg -l show-policy-url
complete -c gpg -l no-show-policy-url -d 'Show policy URLs in the --list-sigs or --check-sigs listings as well as when …'
complete -c gpg -l dump-cert -d '&D75F22C3F86E355877348498CDC92BD21010A480 By substring match'

