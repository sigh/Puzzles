---
title: Points and coins
layout: default
---

I draw 10 points on a piece of paper. I give you 10 coins of the same size.
Show that you can always cover all the points using the coins, without any
coins overlapping.

<details><summary></summary>

First note that it is not true in general if we have $$n$$ points and $$n$$ coins.
Any layout of coins will always have gaps, and will fail to cover a sufficiently
dense set of points.

Instead consider a infinite hexagonal packing of circles. The density of
such a packing is $$\frac{\pi}{2\sqrt{3}}$$. Take a randomly translated close
packing. Then:

$$
\begin{align}
P(\text{At least one point is not covered})
  \le & \sum_{i=0}^{10} P(\text{The } i\text{th point is not covered}) \\
= & 10 \frac{\pi}{2\sqrt{3}} \\
\le & 9.069 \\
< & 1
\end{align}
$$

Note that this is true regardless of the covariance of the probabilities.
Covariance can only lower the calculated probability.

Since there the probability is less than 1, there is some probability that
a random translation of the hexagonal packing will cover all the points.
If there were no valid translations, then the probability would be 0, thus
a convering translation must exist.

Finally, we note that at most 10 of the coins in the infinite packing must be
covering points because each point can only be under at most one coin. Thus
we only need to use 10 coins.

</details>
