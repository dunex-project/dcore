# D CORE #

This is a simple rewrite of coreutils in D, work in progress. Most of the behaviors, at this stage, will be more similar to the FreeBSD coreutils than GNU Coreutils, so as to adhere more closely to the minimum set of functionality defined by POSIX. Once that is implemented, we can look at making thingns diverge from both to be more usable or more ergonomic.

My personal challenge for myself is to implement this mostly from manpages of Linux and FreeBSD, including library manpages. Obviously it depends on some stdc library interfaces and options. Hopefully it'll be portable to other Unix-likes (I am developing in Linux).

# FAQ #

## WHY? ##

Fun.

# Tha list #
## Done ##

* yes
* tee
* tty
* echo
* uname (this doesn't match Linux, but matches FreeBSD's implementation)
* hostid
* true / false (i called it "return" and it will work if you name it true, or false).
* sync
* basename
* tsort
* dirname
* cut (extends functionality in useful ways that are substantially better than gnu version).
* unlink
* seq
* sleep

## WIP ##

* mkdir
* cksum (doesn't work - algorithm isn't standard and implementation isn't correct).
* wc (-c and -l work, of course, but the -L and -w counts are different from GNU version for unknown reasons).
* deesh (this is a big ol project in itself)
* su (Clipsey is doing that)
* factor (works for up to ulong length things but is a naive implementation that is slower than good implementations)

## Todo ##

* Generic core.sys.posix style wrappers for stdc that aren't already in there that we use.
* Generic command boilerplate for --help, --verbose, --version on all commands. Also provide a way to specify filename(s) as part of the command line spec.
* Generic IO / logging / error boilerplate
* ls / vdir / dir
* cp
* mv
* rm
* rmdir
* ln
* chmod
* chown
* touch
* dd
* df
* du
* chroot
* cat
* head
* tail
* sort
* tr
* uniq
* test
* md5sum / shasum / etc.
* base64 / base32
* paste
* join
* comm
* fmt
* fold
* expand
* pr
* split
* hostname
* date
* pwd
* nice
* who
* id
* groups
* whoami
* env
* install
* link
* mkfifo
* mknod
* shred
* chgrp
* expr
* logname
* nohup
* patch
* pinky
* printenv
* printf
* stty
* users
* csplit
* nl
* od
* ptx
* sum
* tac
* ... and anything else, see also: https://en.wikipedia.org/wiki/List_of_Unix_commands

# Maybe ? #

* i18n
* deesh the D language shell. It should have its own simple shell scripting language maybe based on D syntax (or like something) but with pipes and whatnot.
* a fully chrootable environment written in D.
* init? inetd? full userland?! kernel!!!???
