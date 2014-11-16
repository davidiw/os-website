---
title: 'Lab 7: Final Project'
due_date: '2014-12-4'
---

Introduction
------------

For the final project,
you should explore an interesting,
not necessarily novel topic in operating systems
that has not already covered in the labs.
The project may be completed independently or in groups of two.
The challenge / work load should be commensurate to group size.

You are free to pick your project;
however, you will be graded upon the difficulty of your project,
how much you were able to complete,
and your documentation.
Your documentation should include a single command
that exercises your code on a zoo machines.
This should demonstrate your implementation.
Each group member must submit a copy in their repository
and the documentation must list each group members name.
Only (ascii) text files and PDFs will be accepted.
The due date is firm, there will be no late days and no extensions.

If you are in doubt about your project,
please e-mail us or visit during office hours.

### Getting Started

Use Git to prepare a new lab7 branch:

```lang-sh
$ cd ~/cs422/lab
$ git checkout --no-track -b lab7 lab6
Switched to a new branch "lab7"
$ git push --set-upstream origin lab7
Total 0 (delta 0), reused 0 (delta 0)
To /c/cs422/SUBMIT/lab/netid.git
 * [new branch]      lab7 -> lab7
Branch lab7 set up to track remote branch refs/remotes/origin/lab7.
...
$
```

Even if you do not extend JOS,
please submit your code and report via git.
The document you create can either be a pure text file:
project.txt
or a pdf file: project.pdf
in the root of your JOS repository.
If you do not extend JOS,
put your code under the directory lab7 in your JOS repository.

### Example Projects

- Build a virtual machine monitor that can run multiple guests
  (for example, multiple instances of JOS), using
  [x86 VM support](http://wiki.osdev.org/VMX).
- Do something useful with the x86
  [Trusted Execution Technology]
  ({{ urls.production_url }}/readings/hardware/txt.pdf).
  For example, run applications without having to trust the kernel.
  [Here](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-51.pdf)
   is a recent paper on this topic.
- Make the JOS file system support writing, file creation,
  logging for durability, etc., perhaps taking ideas from Linux EXT3.
- Use file system ideas from
  [Soft updates](http://www.ece.cmu.edu/~ganger/papers/osdi94.pdf),
  [WAFL](https://ng.gnunet.org/sites/default/files/10.1.1.40.3691.pdf),
  ZFS, or another advanced file system.
- Add snapshots to a file system, so that a user can look at the file system
  as it appeared at various points in the past.
  You'll probably want to use some kind of copy-on-write for disk storage
  to keep space consumption down.
- Build a [distributed shared memory]
  (http://www.cdf.toronto.edu/~csc469h/fall/handouts/nitzberg91.pdf)
  (DSM) system,
  so that you can run multi-threaded shared memory parallel programs
  on a cluster of machines,
  using paging to give the appearance of real shared memory.
  When a thread tries to access a page that's on another machine,
  the page fault will give the DSM system a chance
  to fetch the page over the network from whatever machine currently stores.
- Allow processes to migrate from one machine to another over the network.
  You'll need to do something about the various pieces of a process's state,
  but since much state in JOS is in user-space it may be easier
  than process migration on Linux.
- Implement [paging](http://en.wikipedia.org/wiki/Paging)
  to disk in JOS, so that processes can be bigger than RAM.
  Extend your pager with swapping.
- Implement
  [mmap()](http://en.wikipedia.org/wiki/Mmap)  of files for JOS.
- Use [xfi](http://static.usenix.org/event/osdi06/tech/erlingsson.html)
   to sandbox code within a process.
- Support x86 2MB or 4MB pages.
- Modify JOS to have kernel-supported threads inside processes.
  Implementing scheduler activations would be one way to do this project.
- Use fine-grained locking or lock-free concurrency in JOS in the kernel
  or in the file server (after making it multithreaded).
  The linux kernel uses
  [read copy update](http://en.wikipedia.org/wiki/Read-copy-update)
  to be able to perform
  read operations without holding locks.
  Explore RCU by implementing it in JOS use it
  to support a name cache with lock-free reads.
- Implement ideas from the [Exokernel papers]
  ({{ urls.production_url }}/readings/papers/engler95exokernel.pdf),
  for example the packet filter.
- Make JOS have soft real-time behavior.
  You will have to identify some application for which this is useful.
- Make JOS run on 64-bit CPUs.
  This includes redoing the virtual memory system to use 4-level pages tables.
- Port JOS to a different microprocessor.
  The [osdev wiki](http://wiki.osdev.org/Main_Page) may be helpful.
- A window system for JOS, including graphics driver and mouse.
  See reference page for some documentation.
  [sqrt(x)](http://web.mit.edu/amdragon/www/pubs/sqrtx-6.828.html)
  is an example JOS window system (and writeup).
- Implement [dune](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-117.pdf)
  to export privileged hardware instructions
  to user-space applications in JOS.
- Intel recently announced
  [transactional memory support]
  (http://en.wikipedia.org/wiki/Transactional_Synchronization_Extensions)
  for its upcoming processors.
  Implement support for Intel's TSX in the QEMU emulator.
  A follow-on project would be to explore the use of Intel TSX primitives
  in writing concurrent software, such as extending the JOS kernel
  to use transactional memory.
- Write a user-level debugger; add strace-like functionality;
  hardware register profiling (e.g. Oprofile); call-traces
- Binary emulation for (static) Linux executables

### Completing the Lab

**This completes the lab.**
Before handing in, use `git status` and `git diff`
to examine your changes
and don't forget to `git add` your project report.
When you're ready,
commit your changes with `git commit -am 'my lab 7'`,
then `git push`.
