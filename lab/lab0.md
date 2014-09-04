---
title: 'Exercise: Shell'
due_date: '2014-8-29'
---

Note: Due to shopping period, we will implement a grace period up until 9/10 @ 11:59 PM.

This assignment will make you more familiar
with the Unix system call interface and the shell
by implementing several features in a small shell.
You can do this assignment on any operating system
that supports the Unix API (a Zoo machine,
your laptop with Linux or Mac OS, etc.).
Please submit your shell using the instructions below
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

### Software Setup

The files you will need for this
and subsequent lab assignments in this course are distributed
using the [Git](http://www.git-scm.com/) version control system.
To learn more about Git, take a look at the
[Git user's manual]
(http://www.kernel.org/pub/software/scm/git/docs/user-manual.html),
or, if you are already familiar with other version control systems,
you may find this [CS-oriented overview of Git]
(http://eagain.net/articles/git-for-computer-scientists/)
useful.

The Git repository for the labs is in `/c/cs422/repo/joslab.git` on the zoo
machines. However you need to set up your own repository
to hand in each lab. To install the files,
use the commands below with the desired
location.
You can log into Zoo remotely via [ssh](http://zoo.cs.yale.edu/).

```lang-sh
$ mkdir ~/cs422
$ cd ~/cs422
$ /c/cs422/apps/setrepo.sh lab
Creating new repository /c/cs422/SUBMIT/lab/netid.git...
****
Now you can use 'git commit' and 'git push' to submit your code!
****
$ cd lab
$
```

If you want to clone the repository remotely onto a non-Zoo machine
after you have configured it as above, first get the path of your
remote directory by running, from your local directory:

```lang-sh
$ git remote show origin
* remote origin
  Fetch URL: /path/to/repo
  Push  URL: /path/to/repo
...
$
```

Suppose it is `/path/to/repo`. You can use `git clone` on your
own computer:

```lang-sh
$ git clone -b shell netid@node.zoo.cs.yale.edu:/path/to/repo lab
Cloning into lab...
$
```

Git allows you to keep track of the changes you make to the code.
For example, if you are finished with one of the exercises,
and want to checkpoint your progress,
you can *commit* your changes by running:

```lang-sh
$ git commit -am 'got I/O redirection working'
Created commit 60d2135: my solution for shell exercise
 1 files changed, 1 insertions(+), 0 deletions(-)
$
```

You can keep track of your changes by using the `git diff` command.
Running `git diff` will display the changes to your code
since your last commit,
and `git diff origin/shell` will display the changes
relative to the initial code supplied for this lab.
Here, `origin/shell` is the name of the git branch with the initial code
you downloaded from our server for this assignment.

### Hand-In Procedure

When you are ready to hand in your lab, first commit your changes with
`git commit`, and then type `git push` in the `lab` directory. The latter
will propagate your changes to your remote repository.

```lang-sh
$ git commit -am "ready to submit my shell"
[shell e3a880d] ready to submit my shell
 2 files changed, 18 insertions(+), 2 deletions(-)

$ git push
Counting objects: 5, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 509 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
To /c/cs422/SUBMIT/lab/netid.git
   f5ab5f6..3da3b46  shell -> shell
$
```

The xv6 shell
---------

Open the skeleton of the xv6 shell in `sh.c`,
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

**This completes the exercise.**
Commit your changes using `git commit` and type `git push` in the `lab`
directory to submit your code.
