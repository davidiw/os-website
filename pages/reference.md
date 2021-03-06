---
title: 'References'
position: 4
---

Reading materials
-----------------

### UNIX

-   [The UNIX Time-Sharing
    System](http://citeseer.ist.psu.edu/10962.html), [Dennis M.
    Ritchie](http://cm.bell-labs.com/who/dmr/) and [Ken
    L.Thompson](http://cm.bell-labs.com/who/ken/),. Bell System
    Technical Journal 57, number 6, part 2 (July-August 1978) pages
    1905-1930. [(local copy)]({{ urls.production_url }}/readings/ritchie78unix.pdf) You read this
    paper in 6.033.
-   [The Evolution of the Unix Time-sharing
    System](http://cm.bell-labs.com/cm/cs/who/dmr/hist.html), Dennis M.
    Ritchie, 1979.
-   *The C programming language (second edition)* by Kernighan and
    Ritchie. Prentice Hall, Inc., 1988. ISBN 0-13-110362-8, 1998.

### x86 Emulation

-   [QEMU](http://www.qemu.org/) - A fast and popular x86 platform and
    CPU emulator.
    -   [User manual](http://wiki.qemu.org/Qemu-doc.html)
-   [Bochs](http://bochs.sourceforge.net) - A more mature, but quirkier
    and much slower x86 emulator. Bochs is generally a more faithful
    emulator of real hardware than QEMU.
    -   [User
        manual](http://bochs.sourceforge.net/doc/docbook/user/index.html)
    -   [Debugger
        reference](http://bochs.sourceforge.net/doc/docbook/user/internal-debugger.html)

### x86 Assembly Language

-   *[PC Assembly Language](http://www.drpaulcarter.com/pcasm/)*, Paul
    A. Carter, November 2003. [(local copy)]({{ urls.production_url }}/readings/pcasm-book.pdf)
-   *[Intel 80386 Programmer's Reference
    Manual](http://www.logix.cz/michal/doc/i386/)*, 1987 (HTML). [(local
    copy - PDF)]({{ urls.production_url }}/readings/i386.pdf) [(local copy -
    HTML)]({{ urls.production_url }}/readings/i386/toc.htm) Much shorter than the full current Intel Architecture manuals
    below, but describes all processor features used in CS422/522.
-   [IA-32 Intel Architecture Software Developer's
    Manuals](http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html),
    Intel, 2007. Local copies:
    -   [Volume I: Basic Architecture]({{ urls.production_url }}/readings/ia32/IA32-1.pdf)
    -   [Volume 2A: Instruction Set Reference,
        A-M]({{ urls.production_url }}/readings/ia32/IA32-2A.pdf)
    -   [Volume 2B: Instruction Set Reference,
        N-Z]({{ urls.production_url }}/readings/ia32/IA32-2B.pdf)
    -   [Volume 3A: System Programming Guide, Part
        1]({{ urls.production_url }}/readings/ia32/IA32-3A.pdf)
    -   [Volume 3B: System Programming Guide, Part
        2]({{ urls.production_url }}/readings/ia32/IA32-3B.pdf)
-   Multiprocessor references:
    -   [MP specification]({{ urls.production_url }}/readings/ia32/MPspec.pdf)
    -   [IO APIC]({{ urls.production_url }}/readings/ia32/ioapic.pdf)
-  [AMD64 Architecture Programmer's
    Manual](http://developer.amd.com/documentation/guides/Pages/default.aspx#manuals). Covers
    both the "classic" 32-bit x86 architecture and the new 64-bit
    extensions supported by the latest AMD and Intel processors.
-   Writing inline assembly language with GCC:
    -   [Brennan's Guide to Inline
        Assembly](http://www.delorie.com/djgpp/doc/brennan/brennan_att_inline_djgpp.html),
        Brennan "Mr. Wacko" Underwood
    -   [Inline assembly for x86 in
        Linux](http://www.ibm.com/developerworks/linux/library/l-ia.html),
        Bharata B. Rao, IBM
    -   [GCC-Inline-Assembly-HOWTO](http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html),
        Sandeep.S
-   Loading x86 executables in the ELF format:
    -   [Tool Interface Standard (TIS) Executable and Linking Format
        (ELF)]({{ urls.production_url }}/readings/elf.pdf). The definitive standard for the ELF format.

### PC Hardware Programming

-   General PC architecture information
    -   [Phil Storrs PC Hardware
        book](http://web.archive.org/web/20040603021346/http://members.iweb.net.au/~pstorr/pcbook/),
        Phil Storrs, December 1998.
    -   [Bochs technical hardware specifications
        directory](http://bochs.sourceforge.net/techdata.html).
-   General BIOS and PC bootstrap
    -   [BIOS Services and Software
        Interrupts](http://www.htl-steyr.ac.at/~morg/pcinfo/hardware/interrupts/inte1at0.htm),
        Roger Morgan, 1997.
    -   ["El Torito" Bootable CD-ROM Format
        Specification]({{ urls.production_url }}/readings/boot-cdrom.pdf), Phoenix/IBM, January
        1995.
-   VGA display - kern/console.c
    -   [VESA BIOS Extension (VBE)
        3.0](http://web.archive.org/web/20080302090304/http://www.vesa.org/public/VBE/vbe3.pdf),
        [Video Electronics Standards Association](http://www.vesa.org/),
        September 1998. [(local copy)]({{ urls.production_url }}/readings/hardware/vbe3.pdf)
    -   VGADOC, Finn Thøgersen, 2000. [(local copy -
        text)]({{ urls.production_url }}/readings/hardware/vgadoc/) [(local copy -
        ZIP)]({{ urls.production_url }}/readings/hardware/vgadoc4b.zip)
    -   [Free VGA Project](http://www.osdever.net/FreeVGA/home.htm),
        J.D. Neal, 1998.
-   Keyboard and Mouse - kern/console.c
    -   [Adam Chapweske's
        resources](http://www.computer-engineering.org/index.html).
-   8253/8254 Programmable Interval Timer (PIT) - inc/timerreg.h
    -   [82C54 CHMOS Programmable Interval
        Timer](http://www.intel.com/design/archives/periphrl/docs/23124406.htm),
        Intel, October 1994. [(local copy)]({{ urls.production_url }}/readings/hardware/82C54.pdf)
    -   [Data Solutions 8253/8254
        Tutorial](http://www.decisioncards.com/io/tutorials/8254_tut.html),
        Data Solutions.
-   8259/8259A Programmable Interrupt Controller (PIC) - kern/picirq.\*
    -   [8259A Programmable Interrupt
        Controller]({{ urls.production_url }}/readings/hardware/8259A.pdf), Intel, December 1988.
-   Real-Time Clock (RTC) - kern/kclock.\*
    -   [Phil Storrs PC Hardware
        book](http://web.archive.org/web/20040603021346/http://members.iweb.net.au/~pstorr/pcbook/),
        Phil Storrs, December 1998. In particular:
        -   [Understanding the
            CMOS](http://web.archive.org/web/20040603021346/http://members.iweb.net.au/~pstorr/pcbook/book5/cmos.htm)
        -   [A list of what is in the
            CMOS](http://web.archive.org/web/20040603021346/http://members.iweb.net.au/~pstorr/pcbook/book5/cmoslist.htm)
    -   [CMOS Memory
        Map](http://bochs.sourceforge.net/techspec/CMOS-reference.txt),
        Padgett Peterson, May 1996.
    -   [M48T86 PC Real-Time
        Clock](http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001009.pdf),
        ST Microelectronics, April 2004. [(local
        copy)]({{ urls.production_url }}/readings/hardware/M48T86.pdf)
-   16550 UART Serial Port - kern/console.c
    -   [PC16550D Universal Asynchronous Receiver/Transmitter with
        FIFOs](http://www.national.com/pf/PC/PC16550D.html), National
        Semiconductor, 1995.
    -   [Technical Data on 16550](http://byterunner.com/16550.html),
        Byterunner Technologies.
    -   [Interfacing the Serial / RS232
        Port](http://www.beyondlogic.org/serial/serial.htm), Craig
        Peacock, August 2001.
-   IEEE 1284 Parallel Port - kern/console.c
    -   [Parallel Port Central](http://www.lvr.com/parport.htm), Jan
        Axelson.
    -   [Parallel Port Background](http://www.fapo.com/porthist.htm),
        Warp Nine Engineering.
    -   [IEEE 1284 - Updating the PC Parallel
        Port](http://zone.ni.com/devzone/cda/tut/p/id/3466), National
        Instruments.
    -   [Interfacing the Standard Parallel
        Port](http://www.beyondlogic.org/spp/parallel.htm), Craig
        Peacock, August 2001.
-   IDE hard drive controller - fs/ide.c
    -   [AT Attachment with Packet Interface - 6 (working
        draft)]({{ urls.production_url }}/readings/hardware/ATA-d1410r3a.pdf), ANSI, December
        2001.
    -   [Programming Interface for Bus Master IDE
        Controller]({{ urls.production_url }}/readings/hardware/IDE-BusMaster.pdf), Brad Hosler,
        Intel, May 1994.
    -   [The Guide to ATA/ATAPI
        documentation](http://suif.stanford.edu/~csapuntz/ide.html),
        Constantine Sapuntzakis, January 2002.
-   Sound cards (not supported in JOS, but you're welcome to do
    it as a challenge problem!)
    -   [Sound Blaster Series Hardware Programming
        Guide]({{ urls.production_url }}/readings/hardware/SoundBlaster.pdf), Creative Technology,
        1996.
    -   [8237A High Performance Programmable DMA
        Controller]({{ urls.production_url }}/readings/hardware/8237A.pdf), Intel, September 1993.
    -   [Sound Blaster 16 Programming
        Document](http://homepages.cae.wisc.edu/~brodskye/sb16doc/sb16doc.html),
        Ethan Brodsky, June 1997.
    -   [Sound
        Programming](http://www.inversereality.org/tutorials/sound%20programming/soundprogramming.html),
        Inverse Reality.
-   E100 Network Interface Card
    -   [Intel 8255x 10/100 Mbps Ethernet Controller Family Open Source
        Software Developer Manual]({{ urls.production_url }}/readings/hardware/8255X_OpenSDM.pdf)
    -   [82559ER Fast Ethernet PCI Controller
        Datasheet]({{ urls.production_url }}/readings/hardware/82559ER_datasheet.pdf)
-   E1000 Network Interface Card
    -   [PCI/PCI-X Family of Gigabit Ethernet Controllers Software
        Developer’s Manual]({{ urls.production_url }}/readings/hardware/8254x_GBe_SDM.pdf)

### Research Papers
-   [SPIN—an extensible microkernel for application-specific operating system services]
    ({{ urls.production_url }}/readings/papers/bershad95spin.pdf),
    Brian N. Bershad, Craig Chambers, Susan Eggers, Chris Maeda, Dylan McNamee,
    Przemyslaw Pardyak, Stefan Savage, and Emin Gun Sirer,
    ACMS SIGOPS Operating Systems Review, January  1995.
-   [Mach: A New Foundation For UNIX Developer]
    ({{ urls.production_url }}/readings/papers/accetta86microkernel.pdf),
    Mike Accetta, Robert Baron, William Bolosky, David Golub, Richard Rashid,
    Avadis Tevanian, and Michael Young,
    USENIX Summer, 1986.
-   [Microkernel operating system architecture and Mach]
    ({{ urls.production_url }}/readings/papers/black92microkernel.pdf),
    David L. Black, USENIX Workshop on Micro-Kernels
    and Other Kernel Architectures, April 1992.
-   [Exokernel: an operating system architecture for application-level resource management]
    ({{ urls.production_url }}/readings/papers/engler95exokernel.pdf),
    Dawson R. Engler, M. Frans Kaashoek, and James O'Toole Jr.,
    ACM SIGOPS Operating Systems Review, December 1995.
-   [Thoth, a Portable Real-Time Operating System]
    ({{ urls.production_url }}/readings/papers/cheriton79thoth.pdf),
    David R. Cheriton, Michael A. Malcom, Lawrence S. Melen, and Gary R. Safer,
    Communications of the ACM, February 1979.
-   [Contiki - a Lightweight and Flexible Operating System for Tiny Networked Sensors]
    ({{ urls.production_url }}/readings/papers/dunkels04contiki.pdf),
    Adam Dunkels, Bjorn Gronvall, and Thiemo Voight,
    IEEE Local Computer Networks, 2004.
-   [Xen and the Art of Virtualization]
    ({{ urls.production_url }}/readings/papers/barham03xen.pdf),
    Paul Barham, Boris Dragovic, Keir Fraser, Steven Hand, Tim Harris,
    Alex Ho, Rolf Neugebauer, Ian Pratt, and Andrew Warfield,
    ACM SIGOPS Operating Systems Review, December 2003.
-   [Formal Requirements for Virtualizable Third Generation Architectures]
    ({{ urls.production_url }}/readings/papers/popek74virtual.pdf),
    Gerald J. Popek and Robert P. Goldberg,
    Communications of the ACM, July 1974.
-   [The Design and Implementation of a Log-Structured File System]
    ({{ urls.production_url }}/readings/papers/rosenblum92lfs.pdf),
    Mendel Rosenblum and John K. Ousterhout,
    ACM Transactions on Computer Systems, February 1992.
-   [End-to-End Arguments in System Design]
    ({{ urls.production_url }}/readings/papers/saltzer84e2e.pdf)
    Jerome H. Saltzer, David P. Reed, and David D. Clark,
    ACM Transactions on Computer Systems,
    November 1984.
-   [Reflections on an Operating System Design]
    ({{ urls.production_url }}/readings/papers/lampson76design.pdf)
    Butler W. Lampson and Howard E. Sturgis,
    Communications of the ACM,
    May 1976.
-   [Singularity: Rethinking the Software Stack]
    ({{ urls.production_url }}/readings/papers/hunt07singularity.pdf),
    Galen C. Hunt and James R. Larus,
    ACM SIGOPS Operating Systems Review,
    April 2007
