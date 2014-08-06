---
title: 'Exercise: Shell'
due_date: '2014-8-29'
---

This assignment will make you more familiar
with the Unix system call interface and the shell
by implementing several features in a small shell.
You can do this assignment on any operating system
that supports the Unix API (a Zoo machine,
your laptop with Linux or Mac OS, etc.).
Please submit your shell to the XXX
at any time before the end of the shopping period (9/10).
However, the course assumes that students
have completed this assignment prior to the second class (8/29).

You are encouraged to experiment with the various shell commands
mentioned in this lesson using your favorite shell, bash, for example.
A rather complete and well written tutorial / document on shell scripting,
namely, bash, can be found [here](http://www.tldp.org/LDP/abs/html/).

While you shouldn't be shy about asking questions via
[Piazza](http://piazza.com/yale/fall2014/cpsc422522)
if you have difficulty in this exercise,
we do expect you to be able to handle this level of C programming on your own
for the rest of the class.
If you're not very familiar with C,
consider this a quick check to see how familiar you are.
Again, do feel encouraged to ask us for help if you have any questions.

Download the [skeleton]({{ urls.production_url }}/files/sh.c) of the xv6 shell,
and look it over.
The skeleton shell contains two main parts:
parsing shell commands and implementing them.
The parser recognizes only simple shell commands such as the following:

```lang-sh
ls > y
cat < y | sort | uniq | wc > y1
cat y1
rm y1
ls |  sort | uniq | wc
rm y
```
Cut and paste these commands into a file `t.sh`

You can compile the skeleton shell as follows:

```
$ gcc sh.c
```

which produces a file named `a.out`, which you can run:

```
$ ./a.out < t.sh
```

This execution will panic because you have not implemented several features.
In the rest of this assignment you will implement those features.

Executing simple commands
-------------------------

Implement simple commands, such as:

```
$ ls
```

The parser already builds an `execcmd` for you,
so the only code you have to write is for the ' ' case in `runcmd`.
To test that you can run "ls".
You might find it useful to look at the manual page for `exec`;
type `man 3 exec`.

You do not have to implement quoting
(i.e., treating the text between double-quotes as a single argument).

I/O redirection
---------------

Implement I/O redirection commands so that you can run:

```lang-sh
echo "6.828 is cool" > x.txt
cat < x.txt
```

The parser already recognizes '>' and '<',
and builds a `redircmd` for you,
so your job is just filling out the missing code in `runcmd` for those symbols.
Make sure your implementation runs correctly with the above test input.
You might find the man pages for `open` (`man 2 open`) and `close` useful.

Note that this shell will not process quotes
in the same way that `bash`, `tcsh`, `zsh`
or other UNIX shells will,
and your sample file `x.txt` is expected to contain the quotes.

Implement pipes
---------------

Implement pipes so that you can run command pipelines such as:

```
$ ls | sort | uniq | wc
```
The parser already recognizes "|", and builds a `pipecmd` for you,
so the only code you must write is for the '|' case in `runcmd`.
Test that you can run the above pipeline.
You might find the man pages for `pipe`, `fork`, `close`, and `dup` useful.

Now you should be able the following command correctly:

```
$ ./a.out < t.sh
```

Don't forget to submit your solution to XXX,
with or without challenge solutions.

Challenge exercises
-------------------

If you'd like to experiment more,
you can add any feature of your choice to your shell.
You might try one of the following suggestions:

 - Implement lists of commands, separated by `;`
 - Implement subshells by implementing `(` and `)`
 - Implement running commands in the background by supporting `&` and `wait`
 - Implement quoting of arguments

All of these require making changing to the parser and the `runcmd` function.
