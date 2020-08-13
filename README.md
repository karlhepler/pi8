# Pi in Base 8

This is for a little project to create a sound dampener in my office. I need to calculate Pi in base 8 to out 3,600 digits so that I can get the varying heights of the blocks of wood that make up the "skyline".

I found this algorithm [here](https://bellard.org/pi/pi_n2/pi_n2.html), initially. I was thinking about attempting to write the implementation in Go because I could not find one. I eventually decided to remove portions of the URL until I got to [this page](https://bellard.org/pi/). It was here that I found the links to the various source code implementations. I chose the initial implementation which most closely matches the algorithm as defined. I had to hunt and peck a bit to change the base, but I eventually got it and this is the result.
