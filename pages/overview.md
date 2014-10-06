---
title: 'Overview'
position: 1
---


Description
-----------

CPSC422/522 teaches the fundamentals of operating systems.
You will study in detail, virtual memory, kernel and user mode, system calls,
threads, context switches, interrupts, interprocess communication,
coordination of concurrent activities,
and the interface between software and hardware.
Most importantly, you will study the interactions between these concepts,
and how to manage the complexity introduced by interactions.

**Prerequisites:** [CPSC 323 Introduction to Systems Programming and Computer
Organization](http://zoo.cs.yale.edu/classes/cs323).
For graduate students, an equivalent basic systems programming course
or general knowledge covering C/C++ programming,
programming with pointers, Unix shells, pipes, fork/join, etc.

**Textbooks:**

* The course follows [6.828 xv6 textbook]
  ({{ urls.production_url }}/readings/xv6/book-rev7.pdf)

* Optional:
  [Operating System Concepts by Silberschatz, Galvin, and Gagne]
  (http://www.amazon.com/Operating-System-Concepts-Abraham-Silberschatz/dp/1118063333)

Course content
--------------

To master the concepts, CPSC422/522 is organized in three parts:
lectures, readings, and labs.
The lectures and readings familiarize you with the main concepts.
The labs force you to understand the concepts at a deep level,
since you will build an operating system from the ground up.
Upon completing the labs,
you will appreciate the meaning of design goals
such "reducing complexity" and "conceptual integrity".

The lectures are organized in two main blocks.
The first block introduces
[xv6 (x86 version 6)]({{ urls.production_url }}/xv6),
a re-implementation of Unix Version 6 developed in the 1970s.
In each lecture we will take one part of xv6 and study its source code;
homework assignments will help you prepare for these lectures.
At the end of the first block (about half-way the term),
you will understand the source code for a well-designed operating system
for an Intel-based PC,
which will help you in building your own operating system.

The second block of lectures covers
important operating systems concepts invented after Unix v6.
We will study the more modern concepts by reading research papers
and discussing them in lecture.
You will also implement some of these newer concepts in your operating system.

You may wonder why we are studying an operating system that resembles Unix v6
instead of the latest and greatest version of Linux, Windows, or BSD Unix.
xv6 is big enough to illustrate the basic design
and implementation ideas in operating systems.
On the other hand, xv6 is far smaller than any modern production O/S,
and correspondingly easier to understand.
xv6 has a structure similar to many modern operating systems;
once you've explored xv6 you will find much
that is familiar inside kernels such as Linux.

There are 7 labs that build on each other,
culminating in a primitive operating system
on which you can run simple commands through your own shell.
The operating system you will build, called JOS,
will have Unix-like functions (e.g., fork, exec),
but is implemented in an exokernel style
(i.e., the Unix functions are implemented
mostly as user-level library instead of built-in to the kernel).
The major parts of the JOS operating system are:

1. Booting
1. Memory management
1. User-level environments
1. Preemptive multitasking
1. File system and spawn
1. Networking
1. A shell

The JOS skeleton code is provided for you, but you will have to do all the hard
work.  You'll find that xv6 helps you understand many of the goals you're
trying to achieve in JOS, but that JOS occupies a very different point in the
design and implementation space from xv6.

You will develop your JOS operating system for a standard x86-based personal
computer, the same one used for xv6. To simplify development we will use a
complete machine simulator (Qemu) in the class for development and debugging.
This simulator is real enough, however, that you will be able to boot your own
operating system on physical hardware if you wish.

At the end of the lab you will be able to find your way around the source code
of most operating systems, and more generally, be comfortable with system
software. You will understand many operating systems concepts in detail and
will be able to use them in other environments. You will also understand the
x86 processor and the C programming language well.

Grading policy
--------------

**Lectures (10% of grade):**
Throughout the semester,
there will be attendance checks as well as presentation days.
On presentation days,
each student is responsible for submitting a printed copy
of a review for each paper presented.
The presenting student must prepare a presentation
and submit it electronically.
In addition to getting credit for a review,
the presenting student will gain a waiver on late days
for a single lab.

**Labs (60% of grade):**
There are a total of 6 core labs and a final challenge lab.
Some labs consist of more than 1 part.
You are expected to complete the labs individually
and on their assigned due dates.
Lab 3 and 4 consist of multiple parts.
Questions assigned in these parts must be turned in
by the due date;
however, we will not grade code
until all the components of a lab are completed.
You may turn in the assignment up to 3 days late,
each day late will result in 10% reduction in grade.
Submit early and often.
It is certainly better to submit incomplete code
that receives 75/80 points
than one day late correct code
that would receive only a 72/80.
You will be graded only by your last submission.
Approved absences will only allow extensions
for the portion of the lab missed.

**Midterm exam (15% of grade):**

**Final exam (15% of grade):**

Collaboration
-------------

You are welcome to discuss the homework and labs with other students,
but all of your written work and code must be your own
and must carefully acknowledge all contributions of ideas by others,
whether from classmates or from sources you have read.
Do not post your lab or homework solutions
on publicly accessible web sites (such as GitHub).

Acknowledgements
----------------

The website is based on [Caffeinated 6.828](http://sipb.mit.edu/iap/6.828/).<br>
The course contents derive from both Frans Kooshoek's course
[6.828: Operating System Engineering](http://pdos.csail.mit.edu/6.828/2012/).
