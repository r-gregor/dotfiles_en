# exim
# Autogenerated from man page /usr/share/man/man8/exim.8.gz
complete -c exim -l help -d 'This option causes Exim to output a few sentences stating what it is'
complete -c exim -l version -d 'This option is an alias for -bV and causes version information to be displayed'
complete -c exim -o Ac -d '-Am These options are used by Sendmail for selecting configuration files and …'
complete -c exim -o 'B<type>' -d 'This is a Sendmail option for selecting 7 or 8 bit processing'
complete -c exim -o bd -d 'This option runs Exim as a daemon, awaiting incoming SMTP connections'
complete -c exim -o bdf -d 'This option has the same effect as -bd except that it never disconnects from …'
complete -c exim -o be -d 'Run Exim in expansion testing mode'
complete -c exim -o bem -d 'This option operates like -be except that it must be followed by the name of …'
complete -c exim -o bF -d 'This option is the same as -bf except that it assumes that the filter being t…'
complete -c exim -o bf -d 'This option runs Exim in user filter testing mode; the file is the filter fil…'
complete -c exim -o bfd -d 'This sets the domain of the recipient address when a filter file is being tes…'
complete -c exim -o bfl -d 'This sets the local part of the recipient address when a filter file is being…'
complete -c exim -o bfp -d 'This sets the prefix of the local part of the recipient address when a filter…'
complete -c exim -o bfs -d 'This sets the suffix of the local part of the recipient address when a filter…'
complete -c exim -o bh -d 'This option runs a fake SMTP session as if from the given IP address, using t…'
complete -c exim -o bhc -d 'This option operates in the same way as -bh, except that address verification…'
complete -c exim -o bi -d 'Sendmail interprets the -bi option as a request to rebuild its alias file'
complete -c exim -o bI:help -d 'We shall provide various options starting -bI: for querying Exim for informat…'
complete -c exim -o bI:dscp -d 'This option causes Exim to emit an alphabetically sorted list of all recognis…'
complete -c exim -o bI:sieve -d 'This option causes Exim to emit an alphabetically sorted list of all supporte…'
complete -c exim -o bm -d 'This option runs an Exim receiving process that accepts an incoming, locally-…'
complete -c exim -o bmalware -d 'This debugging option causes Exim to scan the given file or directory (depend…'
complete -c exim -o bnq -d 'By default, Exim automatically qualifies unqualified addresses (those without…'
complete -c exim -o bP -d 'If this option is given with no arguments, it causes the values of all Exim\'s…'
complete -c exim -o bp -d 'This option requests a listing of the contents of the mail queue on the stand…'
complete -c exim -o bpa -d 'This option operates like -bp, but in addition it shows delivered addresses t…'
complete -c exim -o bpc -d 'This option counts the number of messages in the queue, and writes the total …'
complete -c exim -o bpr -d 'This option operates like -bp, but the output is not sorted into chronologica…'
complete -c exim -o bpra -d 'This option is a combination of -bpr and -bpa'
complete -c exim -o bpru -d 'This option is a combination of -bpr and -bpu'
complete -c exim -o bpu -d 'This option operates like -bp but shows only undelivered top-level addresses …'
complete -c exim -o brt -d 'This option is for testing retry rules, and it must be followed by up to thre…'
complete -c exim -o brw -d 'This option is for testing address rewriting rules, and it must be followed b…'
complete -c exim -o bS -d 'This option is used for batched SMTP input, which is an alternative interface…'
complete -c exim -o bs -d 'This option causes Exim to accept one or more messages by reading SMTP comman…'
complete -c exim -o bt -d 'This option runs Exim in address testing mode, in which each argument is take…'
complete -c exim -o bV -d 'This option causes Exim to write the current version number, compilation numb…'
complete -c exim -o bv -d 'This option runs Exim in address verification mode, in which each argument is…'
complete -c exim -o bvs -d 'This option acts like -bv, but verifies the address as a sender rather than a…'
complete -c exim -o bw -d 'This option runs Exim as a daemon, awaiting incoming SMTP connections, simila…'
complete -c exim -s C -d 'This option causes Exim to find the runtime configuration file from the given…'
complete -c exim -o 'D<macro>' -d 'This option can be used to override macro definitions in the configuration fi…'
complete -c exim -o 'd<debug' -d 'This option causes debugging information to be written to the standard error …'
complete -c exim -o 'dd<debug' -d 'This option behaves exactly like -d except when used on a command that starts…'
complete -c exim -o dropcr -d 'This is an obsolete option that is now a no-op'
complete -c exim -s E -d 'This option specifies that an incoming message is a locally-generated deliver…'
complete -c exim -o ex -d 'There are a number of Sendmail options starting with -oe which seem to be cal…'
complete -c exim -s F -d 'This option sets the sender\'s full name for use when a locally-generated mess…'
complete -c exim -s f -d 'This option sets the address of the envelope sender of a locally-generated me…'
complete -c exim -s G -d 'This option is equivalent to an ACL applying: '
complete -c exim -s h -d 'This option is accepted for compatibility with Sendmail, but has no effect'
complete -c exim -s i -d 'This option, which has the same effect as -oi, specifies that a dot on a line…'
complete -c exim -s L -d 'This option is equivalent to setting syslog_processname in the config file an…'
complete -c exim -s M -d 'This option requests Exim to run a delivery attempt on each message in turn'
complete -c exim -o Mar -d 'This option requests Exim to add the addresses to the list of recipients of t…'
complete -c exim -o MC -d 'This option is not intended for use by external callers'
complete -c exim -o MCA -d 'This option is not intended for use by external callers'
complete -c exim -o MCD -d 'This option is not intended for use by external callers'
complete -c exim -o MCd -d 'This option is not intended for use by external callers'
complete -c exim -o MCG -d 'This option is not intended for use by external callers'
complete -c exim -o MCK -d 'This option is not intended for use by external callers'
complete -c exim -o MCL -d 'This option is not intended for use by external callers'
complete -c exim -o MCP -d 'This option is not intended for use by external callers'
complete -c exim -o MCp -d 'This option is not intended for use by external callers'
complete -c exim -o MCQ -d 'This option is not intended for use by external callers'
complete -c exim -o MCq -d 'This option is not intended for use by external callers'
complete -c exim -o MCS -d 'This option is not intended for use by external callers'
complete -c exim -o MCT -d 'This option is not intended for use by external callers'
complete -c exim -o MCr -d '-MCs <SNI> These options are not intended for use by external callers'
complete -c exim -o MCt -d 'This option is not intended for use by external callers'
complete -c exim -o Mc -d 'This option requests Exim to run a delivery attempt on each message, in turn,…'
complete -c exim -o Mes -d 'This option requests Exim to change the sender address in the message to the …'
complete -c exim -o Mf -d 'This option requests Exim to mark each listed message as "frozen"'
complete -c exim -o Mg -d 'This option requests Exim to give up trying to deliver the listed messages, i…'
complete -c exim -o MG -d 'This option requests that each listed message be moved from its current queue…'
complete -c exim -o Mmad -d 'This option requests Exim to mark all the recipient addresses in the messages…'
complete -c exim -o Mmd -d 'This option requests Exim to mark the given addresses as already delivered ("…'
complete -c exim -o Mrm -d 'This option requests Exim to remove the given messages from the queue'
complete -c exim -o Mset -d 'This option is useful only in conjunction with -be (that is, when testing str…'
complete -c exim -o Mt -d 'This option requests Exim to "thaw" any of the listed messages that are "froz…'
complete -c exim -o Mvb -d 'This option causes the contents of the message body (-D) spool file to be wri…'
complete -c exim -o Mvc -d 'This option causes a copy of the complete message (header lines plus body) to…'
complete -c exim -o Mvh -d 'This option causes the contents of the message headers (-H) spool file to be …'
complete -c exim -o Mvl -d 'This option causes the contents of the message log spool file to be written t…'
complete -c exim -s m -d 'This is a synonym for -om that is accepted by Sendmail (https://docs. oracle'
complete -c exim -s N -d 'This is a debugging option that inhibits delivery of a message at the transpo…'
complete -c exim -s n -d 'This option is interpreted by Sendmail to mean "no aliasing"'
complete -c exim -s O -d 'This option is interpreted by Sendmail to mean set option'
complete -c exim -o oA -d 'This option is used by Sendmail in conjunction with -bi to specify an alterna…'
complete -c exim -o oB -d 'This is a debugging option which limits the maximum number of messages that c…'
complete -c exim -o odb -d 'This option applies to all modes in which Exim accepts incoming messages, inc…'
complete -c exim -o odf -d 'This option requests "foreground" (synchronous) delivery when Exim has accept…'
complete -c exim -o odi -d 'This option is synonymous with -odf'
complete -c exim -o odq -d 'This option applies to all modes in which Exim accepts incoming messages, inc…'
complete -c exim -o odqs -d 'This option is a hybrid between -odb/-odi and -odq'
complete -c exim -o oee -d 'If an error is detected while a non-SMTP message is being received (for examp…'
complete -c exim -o oem -d 'This is the same as -oee, except that Exim always exits with a non-zero retur…'
complete -c exim -o oep -d 'If an error is detected while a non-SMTP message is being received, the error…'
complete -c exim -o oeq -d 'This option is supported for compatibility with Sendmail, but has the same ef…'
complete -c exim -o oew -d 'This option is supported for compatibility with Sendmail, but has the same ef…'
complete -c exim -o oi -d 'This option, which has the same effect as -i, specifies that a dot on a line …'
complete -c exim -o oitrue -d 'This option is treated as synonymous with -oi'
complete -c exim -o oMa -d 'A number of options starting with -oM can be used to set values associated wi…'
complete -c exim -o oMaa -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMai -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMas -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMi -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMm -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMr -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMs -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o oMt -d 'See -oMa above for general remarks about the -oM options'
complete -c exim -o om -d 'In Sendmail, this option means "me too", indicating that the sender of a mess…'
complete -c exim -o oo -d 'This option is ignored'
complete -c exim -o oP -d 'This option is useful only in conjunction with -bd or -q with a time value'
complete -c exim -o oPX -d 'This option is not intended for general use'
complete -c exim -o or -d 'This option sets a timeout value for incoming non-SMTP messages'
complete -c exim -o os -d 'This option sets a timeout value for incoming SMTP messages'
complete -c exim -o ov -d 'This option has exactly the same effect as -v'
complete -c exim -o oX -d 'This option is relevant only when the -bd (start listening daemon) option is …'
complete -c exim -o oY -d 'This option controls the creation of an inter-process communications endpoint…'
complete -c exim -o pd -d 'This option applies when an embedded Perl interpreter is linked with Exim'
complete -c exim -o ps -d 'This option applies when an embedded Perl interpreter is linked with Exim'
complete -c exim -o 'p<rval>:<sval>' -d 'For compatibility with Sendmail, this option is equivalent to '
complete -c exim -s q -d 'This option is normally restricted to admin users'
complete -c exim -o 'q<qflags>' -d 'The -q option may be followed by one or more flag letters that change its beh…'
complete -c exim -o qq -d 'An option starting with -qq requests a two-stage queue run'
complete -c exim -o qi -d 'If the i flag is present, the queue runner runs delivery processes only for t…'
complete -c exim -o qf -d 'If one f flag is present, a delivery attempt is forced for each non-frozen me…'
complete -c exim -o qff -d 'If ff is present, a delivery attempt is forced for every message, whether fro…'
complete -c exim -o ql -d 'The l (the letter "ell") flag specifies that only local deliveries are to be …'
complete -c exim -o 'q<qflags><time>' -d 'When a time value is present, the -q option causes Exim to run as a daemon, s…'
complete -c exim -o 'qR<rsflags>' -d 'This option is synonymous with -R.  It is provided for Sendmail compatibility'
complete -c exim -o 'qS<rsflags>' -d 'This option is synonymous with -S'
complete -c exim -o 'R<rsflags>' -d 'The <rsflags> may be empty, in which case the white space before the string i…'
complete -c exim -s r -d 'This is a documented (for Sendmail) obsolete alternative name for -f'
complete -c exim -o 'S<rsflags>' -d 'This option acts like -R except that it checks the string against each messag…'
complete -c exim -o Tqt -d 'This is an option that is exclusively for use by the Exim testing suite'
complete -c exim -s t -d 'When Exim is receiving a locally-generated, non-SMTP message on its standard …'
complete -c exim -o ti -d 'This option is exactly equivalent to -t -i'
complete -c exim -o tls-on-connect -d 'This option is available when Exim is compiled with TLS support'
complete -c exim -s U -d 'Sendmail uses this option for "initial message submission", and its documenta…'
complete -c exim -s v -d 'This option causes Exim to write information to the standard error stream, de…'
complete -c exim -s x -d 'AIX uses -x for a private purpose ("mail from a local mail program has Nation…'
complete -c exim -s X -d 'This option is interpreted by Sendmail to cause debug information to be sent …'

