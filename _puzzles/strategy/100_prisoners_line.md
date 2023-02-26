---
title: 100 prisoners in a line
layout: default
---

A group of 100 prisoners are told that the next day, they will be lined up
single file, all facing forward. Hats of either red or blue colour will be
randomly placed on their heads. Starting from the back each prisoner will be
asked the colour of his hat. If the prisoner answers correctly,  that prisoner
will be released. The prisoners are allowed to come up with a plan overnight.

What is the best plan that will save the most number of prisoners?

{% solution %}

The prisoner at the back will guess red if they sees an even number of red hats
in front of them, or blue if they sees an odd number of red has in front of
them.  When the other prisoners are asked their colour, they add together the
number of red hats the sees with the number of times they hear someone say red
behind them. If it is even they say red, if it is odd, they say blue.

### Proof

This works because the last prisoner makes known the parity of red hats for all
the prisoners in front, and then the prisoners can update the parity based on
what each subsequent prisoners says.

This saves the 99 people in the front with certainty, and the last prisoner with
50% chance.
We can't do any better than chance for the last prisoner as they have no
information about their hat color.

{% endsolution %}
