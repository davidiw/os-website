---
title: 'Schedule'
position: 2
layout: default
---

This is the anticipated schedule for lectures and assignments.
Assignments and due dates will be officially announced during class
at which point the calendar will be updated, if necessary.

<!--
Template:
    <span class="text-primary">
      <b>Lecture: </b>
    </span>
    <span class="text-success">
      <b>Prepration: </b>
    </span>
    <span class="text-info">
      <b>Assignment: </b>
    </span>
    <span class="text-warning">
      <b>Special Day</b>
    </span>
    <span class ="text-danger">
      <b>Due: </b>
    </span>
-->

<script type="text/javascript">
  var x = 1;
  function lectnum() {
    document.write(x++);
  }

  var cd = new Date("August 25, 2014 12:00:00");
  var day_in_ms = 24 * 60 * 60 * 1000;
  var months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];

  function getDate() {
    d = cd;
    cd = new Date(cd.getTime() + day_in_ms);
    while(cd.getDay() == 0 || cd.getDay() == 6)
      cd = new Date(cd.getTime() + day_in_ms);
    document.write(d.getDate() + " " + months[d.getMonth()]);
  }
</script>

<table class="table">
 <thead>
  <tr>
   <th>Monday</th>
   <th>Tuesday</th>
   <th>Wednesday</th>
   <th>Thursday</th>
   <th>Friday</th>
  </tr>
 </thead>
 <tbody>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script> </b>:
      <a href="{{ urls.production_url }}/lectures/lec1.html">Operating systems</a>
    </span><br />
    <span class="text-success">
     <b>Preparation: </b> xv6 book ch 0, <br />
        Operating system concepts (osc) ch [1], 2
    </span><br />
    <span class="text-info">
     <b>Assignment: </b><a href="{{ urls.production_url }}/lab/shell">shell exercise</a><br />
     <b>Assignment: </b><a href="{{ urls.production_url }}/lab/lab1">Lab 1</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-danger">
      <b>Due: </b>shell assignment
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>:</b> x86 architecture
    </span><br />
    <span class="text-success">
      <b>Preparation: </b> xv6 book ch 1, app. B
    </span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-warning">Labor Day</span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Virtual memory
    </span><br />
    <span class="text-success">
      <b>Preparation: </b> xv6 book ch 2, osc ch 8
    </span><br />
    <span class="text-info">
      <b>Assignment: </b><a href="{{ urls.production_url }}/lab/lab2">Lab 2</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 1
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Memory Management
    </span><br />
    <span class="text-success">
      <b>Preparation: </b> osc ch 9
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Traps and interrupts
    </span><br />
    <span class="text-success">
      <b>Preparation: </b> xv6 book ch 3 up to drivers
    </span><br />
    <span class="text-info">
      <b>Assignment: </b><a href="{{ urls.production_url }}/lab/lab3">Lab 3a</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-danger">
      <b>Due: </b>Lab 2
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Processes and Threads
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>osc ch 3.1-3.3, ch 4
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Synchronization
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>xv6 book ch 4, osc ch 5
    </span><br />
    <span class="text-info">
      <b>Assignment: </b><a href="{{ urls.production_url }}/lab/lab3">Lab 3b</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 3a
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Code review: </b>Shell, Lab 1, Lab 2</b>
    </span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Paper review: </b>
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab4">Lab 4a</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 3b
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Scheduling
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>xv6 book ch 5, osc ch 6
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Interprocess Communication
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>osc ch 3.4-3.6
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab4">Lab 4b</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 4a
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Code review: </b> Lab 3
    </span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Hacking day</b>
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab4">Lab 4c</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 4b
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> File systems
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>xv6 book ch 6, osc ch 11 and 12
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> I/O and Drivers
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>xv6 book ch 3 Drivers, osc ch 13
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab5">Lab 5</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 4c
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> I/O and Drivers
    </span><br />
    <span class="text-success">
      <b>Preparation: </b>xv6 book ch 3 Drivers, osc ch 13
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-warning">October recess</span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Midterm Exam</b>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Networking
    </span><br />
    <span class="text-success">
      <b>Preparation: </b> osc ch 17
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab6">Lab 6a</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 5
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
   <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Distributed systems
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Virtualization
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab6">Lab 6b</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 6a
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   </tr>
   <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b>OS Organization
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Race conditions
    </span><br />
    <span class="text-info">
      <b>Assignment: </b> <a href="{{ urls.production_url }}/lab/lab7">Lab 7</a>
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class ="text-danger">
      <b>Due: </b> Lab 6b
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b>
        Multi-processor coordination: scalable locks
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b>
        Multi-processor coordination: lock free
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-warning">November recess</span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-warning">November recess</span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Paper review:</b>
    </span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-primary">
      <b>Lecture <script type="text/javascript">lectnum()</script>: </b> Language / OS co-design
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-danger">
      <b>Due: </b> Lab 7
    </span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
  <tr>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
    <span class="text-warning">Final exam 7 PM</span>
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
   <td>
    <span class="text-muted"><script type="text/javascript">getDate()</script></span><br />
   </td>
  </tr>
 </tbody>
</table>
