---
title: 'Xv6'
position: 7
---

###**Xv6, a simple Unix-like teaching operating system**

####**Introduction**

Xv6 is a teaching operating system developed
in the summer of 2006 for MIT's
operating systems course,
[6.828: Operating System Engineering](http://pdos.csail.mit.edu/6.828).
 We hope that xv6 will be useful in other courses too.
This page collects resources to aid the use of xv6 in other courses,
including a commentary on the source code itself.

####**History and Background**

For many years, MIT had no operating systems course.
In the fall of 2002, one was created to teach operating systems engineering.
In the course lectures, the class worked through
[Sixth Edition Unix (aka V6)](#unix-version-6)
using John Lions's famous commentary.
In the lab assignments, students wrote most of an exokernel operating system,
eventually named Jos, for the Intel x86.
Exposing students to multiple
systems&ndash;V6 and Jos&ndash;helped
develop a sense of the spectrum of operating system designs.

V6 presented pedagogic challenges from the start.
Students doubted the relevance of an obsolete 30-year-old operating system
written in an obsolete programming language (pre-K&R C)
running on obsolete hardware (the PDP-11).
Students also struggled to learn the low-level details of two different
architectures (the PDP-11 and the Intel x86) at the same time.
By the summer of 2006, we had decided to replace V6
with a new operating system, xv6, modeled on V6
but written in ANSI C and running on multiprocessor
Intel x86 machines.
Xv6's use of the x86 makes it more relevant to
students' experience than V6 was
and unifies the course around a single architecture.
Adding multiprocessor support requires handling concurrency head on with
locks and threads (instead of using special-case solutions for
uniprocessors such as
enabling/disabling interrupts) and helps relevance.
Finally, writing a new system allowed us to write cleaner versions
of the rougher parts of V6, like the scheduler and file system.
6.828 substituted xv6 for V6 in the fall of 2006. 

####**Xv6 sources and text**

The latest xv6 source is available via
<pre>git clone git://pdos.csail.mit.edu/xv6/xv6.git</pre>
We also distribute the sources as a printed booklet with line numbers
that keep everyone together during lectures.  The booklet is available as
[xv6-rev7.pdf]({{ urls.production_url }}/readings/xv6/xv6-rev7.pdf).
To get the version corresponding to this booklet, run
<pre>git checkout -b xv6-rev7 xv6-rev7</pre>

The xv6 source code is licensed under the traditional
[MIT license](http://www.opensource.org/licenses/mit-license.php);
see the LICENSE file in the source distribution.
To help students read through xv6
and learn about the main ideas in operating systems
we also distribute a
[textbook/commentary]({{ urls.production_url }}/readings/xv6/book-rev7.pdf)
for the latest xv6.
The line numbers in this book refer to the above source booklet.

Xv6 compiles using the GNU C compiler,
targeted at the x86 using ELF binaries.
On BSD and Linux systems, you can use the native compilers;
On OS X, which doesn't use ELF binaries,
you must use a cross-compiler.
Xv6 does boot on real hardware, but typically
we run it using the QEMU emulator.
Both the GCC cross compiler and QEMU
can be found on the
[CS422/522 tools page]({{ urls.production_url }}/tools).

####**Unix Version 6**

6.828's xv6 is inspired by Unix V6 and by:

Lions' *Commentary on UNIX' 6th Edition*, John Lions, Peer to
Peer Communications; ISBN: 1-57398-013-7; 1st edition (June 14, 2000).

* An on-line version of
  (Lions' Commentary)[http://www.lemis.com/grog/Documentation/Lions]
  and (the source code)[http://v6.cuzuco.com/]

* The v6 source code is also available
  [online](http://minnie.tuhs.org/UnixTree/V6/usr/sys/)
	through
  [the PDP Unix Preservation Society](http://minnie.tuhs.org/PUPS/).

The following is useful to read the original code:

*The PDP11/40 Processor Handbook</i>, Digital Equipment Corporation, 1972.*

* A [PDF](http://pdos.csail.mit.edu/6.828/2005/readings/pdp11-40.pdf)
  (made from scanned images, and not text-searchable)

* A [web-based version](http://pdos.csail.mit.edu/6.828/2005/pdp11/)
  that is indexed by instruction name.

####**Feedback**
If you are interested in using xv6 or have used xv6 in a course,
we would love to hear from you.
If there's anything that we can do to make xv6 easier
to adopt, we'd like to hear about it.
We'd also be interested to hear what worked well and what didn't.

Russ Cox (rsc@swtch.com)<br>
Frans Kaashoek (kaashoek@mit.edu)<br>
Robert Morris (rtm@mit.edu)<br>
You can reach all of us at 6.828-staff@pdos.csail.mit.edu.
