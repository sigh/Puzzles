---
title: Colliding ants
layout: default
---

You have an large supply of ants. Each ant moves at 1 m/s. When two ants
collide, they reverse directions.

## Ants on a stick

Suppose you have a 1m long stick. On the stick are ants, randomly placed and
facing left or right randomly. When an ant reaches either end end of the stick,
it falls off.

Find the upper limit of the time it takes for the stick to be clear of ants,
regardless of the original setup.

{% solution %}

The stick will be clear of ants in, at most, 1 second.

### Proof

When two ants reverse direction, it is equivalent to the two ants moving past
each other because the identity of each ant doesn't matter. Thus for the 1m
long stick, all ants will have fallen off after 1 second.

{% endsolution %}

## Ants on a ring

Suppose you have a ring with a circumference of 1 m.  There are 100 ants
evenly spaced, 1 cm apart from each other on the ring. The ant are numbered in
clockwise order so that \#2 is just clockwise of \#1, and \#1 is just clockwise
of \#100, etc. At time $$t = 0$$, all the prime-numbered ants (\#2, \#3, \#5,
... \#97) start walking clockwise, while the other ants start walking
counter-clockwise.

How far from its starting position is ant \#1 at time $$t=1$$ second?

{% solution %}

Ant \#1 and will have moved 50 cm counter-clockwise along ring (it will be on
the opposite side of the ring).

### Proof

As with the ants on a stick, two ants colliding is equivalent to them
passing past each other if we don't care about their identities. Thus at $$t=1$$
there will be an ant on each of the position where there was $$t=0$$, though this
maybe a different ant to the original ant.

However, since the ants actually reverse direction when they collide, the
relative order of the ants remain unchanged. Ant \#1 remains between \#2 and
\#100, ant \#2 remains between \#1 and \#3, etc.

Since all ants end on one of the starting points at $$t=1$$, ant \#1 shifts
counter-clockwise by $$x$$ cm for some integer $$-100 \le x \le 100 $$. Because the
relative order of the ants remains the same, and there is an ant on each of the
original positions at $$t=1$$, all ants must have shifted counter-clockwise by the
same distance $$x$$ cm.

At any point in time, 25 ant are moving clockwise and 75 ants are moving
counter-clockwise as there are 25 prime numbers in the first 100 positive
integers.
This gives a total velocity of all the ants of 50 cm/s counter-clockwise for
any time $$t$$.
Thus at time $$t=1$$ the ants will all have moved counter-clockwise by 50 cm,
meaning each individual ant will have moved counter-clockwise by 50 cm.

{% endsolution %}
