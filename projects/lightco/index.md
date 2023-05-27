# Messing Around With The Light L16, Lumen, and More

So... I was browsing twitter aimlessly, as one does at four AM.  Trying to make the best of things.

And I came across this.

https://twitter.com/Tauss_srgl/status/1661925079754874880

The Light L16.  The camera with 16 eyes, that said "be not afraid" and personally took tryptophobics in an alley and beat them up for glancing at the camera their photographer was using.

Made in 20XX, it was produced by Light Co. before being homogenized by a very famous tractor DRM company whose name I won't say, oh deer.

Earlier in life I'd tried to make my own with USB stuff, a cursed camera for "synthetic imaging", a bunch of papers and... then ADHD indifference lead to them sitting by the wayside.  So what does the L16 do, how can we work around it being end of life'd, and what life does this silly camera still have to it?

## The Software - The Camera

At it's core, the Lumen L16 runs Android.  Android _6_.  Y'know, a version last security patch'd in 2018?  So this means you can get root on it, right?

Well, yes actually.  "bperryvolatile" on the XDA Developers forum found out that VIKIROOT "Dirty COW" _worked_ on the L16.  Which meant we could now get root on this cursed, arcane device.  So what can you do with that exactly?  Well, I popped a shell with it to find out... after backing up the firmware.  You see, because Light Labs Co. got bought out in 2022 by John Deere (https://www.news-jd.com/john-deere-acquires-light-a-company-that-specializes-in-depth-sensing-and-camera-perception-for-autonomous-vehicles/), lots of firmware, documentation, old versions, are all lost to time. 

Now, I wouldn't want to try and breach those patents, but supporting old hardware they sold is an admirable effort, so a user on GitHub by the name of "helloavo" made the L16 Archive;  a repo with as much archived information as they could find.  So, they had (as of time of recording (5/27/2023))... only version 1.3.5.1.  Now, when I unboxed my L16, I found it had version (XXX TODO CHANGE) still, so I dumped that for posterity much in the same way.

After that, I updated the firmware to latest, and many scary reboots later, I had a "latest good version" L16.

## Lumen

Poking at the desktop software though, it revealed some interesting things to start.  While the program installed to my desktop as a 32-bit app, it _gladly_ slurped up many gigabytes of memory, well past 4GiB.  This indicates that the latest version is, at a minimum, a 64bit app in some respects.  Awesome!

Inside program files we can find a _lot_ of files for QT, indicating that it was built using the QT Desktop framework, specifically QT5, version 5.11.1 according to the `maintinencetool.txt` file, used to install, update, and uninstall the tool.  Cool stuff.

Dropping the binary into Ghidra, linking it to the adjacent DLLs (shared libraries) revealed it is both a behemoth of an application, and that some amount of debug information is still embedded inside of it.  Not suprising, considering it's labeled as beta software and still has bugs that crash it completely.

A user by the name of "charlie-x" on GitHub apparently ran into a crash in a prior version with the versions of Eigen and Ceres packaged with it, both math and algebra libraries used to solve complex equations like those needed for the adjustment tools. (https://charliex2.wordpress.com/2017/12/06/light-co-l16-camera-fixing-the-lumen-software/)

In a fun twist, this user is _also_ the one who made eakins microscope control software, a project that very much inspired me to gut my second ever 3d printer to turn it into a scanning microscope, a project that now sits...very well abandoned.

*pat pat* it's okay, one day you'll get your turn.

## The Shoe

## Be Not Afraid; Internals Time

- FCC ID photos
- the chassis (machined aluminum?)
- a buttload of FPGAs