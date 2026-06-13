https://chaos.social/@jaseg/113911307317793824

> People always go on about how microwave stuff is "black magic", but did anyone ever point out how the Yttrium Iron Garnet (YIG) spheres that are widely used as the core component of electrically tunable microwave components are literal crystal balls?

> Image below from https://ieeexplore.ieee.org/abstract/document/8230960 , a paper describing the construction of a oscillator built around a YIG sphere.

---

https://bsky.app/profile/retr0.id/post/3lgt5hieogs2i

> But wait: how exactly did Wang produce these 100-odd constraints? Her paper doesn't say much in this regard and other accounts online indicate that they were produced mostly by staring really hard at MD4.

> Ray Wang @ghostly_gray • Follow
> Implementing Wang's MD4 collision attack... and all the papers I've read say that she found the right difference patterns by "intuition" x.x
5:22 AM • sep 8, 2017 5 0 Reply (2 copy link Read more on Twitter)

> We don't actually need to know how Wang arrived at the right constraints to carry out our attack, but it would be nice to understand this part better. If you have a good explanation, please let me know!

---

https://www.beyond3d.com/content/articles/15/
> Origin of Quake3's Fast InvSqrt() - Part Two - Page 1

https://web.archive.org/web/20061205095258/https://www.beyond3d.com/articles/fastinvsqrt/

    > Is that something we can attribute to you?  Analysis shows it to be
    > extremely clever in its method and supposedly from the Q3 source.  
    > Most people say it's your work, a few say it's Michael Abrash's.  Do 
    > you know who's responsible, possibly with a history of sorts?
 
> Not me, and I don't think it is Michael.  Terje Matheson perhaps?
> John Carmack         

> From: Gary Tarolli
Sent: Mon 05/09/2005 14:23
Subject: RE: FW: Origin of fast approximated inverse square root

A blast from the past!

I definitely recognize the code below, but I can't take credit for it.
I remember running across it over 10 years ago, and I also remember
rederiving it.  I think it's just Newton-Raphson iteration with a very
clever first approx.

I also remember simulating different values for the hex constant
0x5f3759df. I may have done this for the IRIS indigo work I did,
or some consulting at Kubota, I'm not 100% sure.

Given the amount of math it does, and its accuracy, and not requiring
a table, it is a pretty great piece of code.

I especially like the integer ops
       i = 0x5f3759df - (i >> 1);
which actually is doing a floating point computation in integer - it
took a long time to figure out how and why this works, and I can't
remember the details anymore.

Ah those were the days - fast integer and slow floating point....

So it did pass by my keyboard many many years ago, I may have tweaked
the hex constant a bit or so, but other than that I can't take credit
for it, except that I used it a lot and probably contributed to its
popularity and longevity.

p.s. sorry in taking so long to reply  

###

Even the closest thing to an author cannot state the origin of the specific 

---

Seymour Cray's Tunnels

http://michael-starobin.squarespace.com/blogcontent/digging-in-seymours-cave

---

