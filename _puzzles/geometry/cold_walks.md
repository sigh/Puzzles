---
title: Cold walks
layout: default
---

Which places on the earth can you walk one kilometer south,
then one kilometer west, then one kilometer north and end up in the same spot?

Assume the earth is a perfect sphere and oceans or mountains don't get in
your way.

<details><summary></summary>

### North pole

The simplest place with this property is the north pole. After you walk south,
any amount of distance walking west will leave the north pole one kilometer
north of you.

### Other solutions

However, there are also an infinite number of places near the _south_ pole with
this property. Consider the circle centered on the south pole, with a
circumference of one kilometer. Walking west
for one kilometer from anywhere on this line will return you to the same
position. Thus if we start one kilometer north of this circle, then we also
satisfy the problem.

Walking once around the south pole is not the only way to stay in the same
place. We could choose a smaller circle such that walking west one kilometer
would circle the south pole $$n$$ times, for any positive integer $$n$$.

The circumference of a circle on a sphere is given by
$$c = 2 \pi R \sin\left(\frac{r}{R}\right)$$ where $$R$$ is the radius of the
sphere (the Earth). Since the circumference must be $$\frac{1}{n}$$ we have:

$$ r = R \arcsin\left(\frac{1}{2 \pi R n}\right) $$

Since we need to start one kilometer north of any of these circles, that means
that we need to start at any point:

$$ \left(R \arcsin\left(\frac{1}{2 \pi R n}\right) + 1\right)$$
kilometers north of the south pole for any positive integer $$n$$.

</details>
