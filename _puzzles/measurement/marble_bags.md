---
title: Marble bags
layout: default
---

You have 100 bags of 100 marbles. All of the marbles in all of the bags are
identical 1 gram marbles, except for one of the bags, which contains marbles
that weigh 1.001 grams. You have a scale that can to an accuracy of 0.001 grams.

What is the minimum number of weighings required to identify the bag with the
slightly heavier marbles?

<details><summary></summary>

You only need 1 weighing.

### Proof

Number each bag from 1 to 100. Onto the scale put $$i$$ marbles from bag
\#$$i$$. That is put 1 marble from bag \#1, 2 marbles from bag \#2 and so on.

The total number of marbles, $$M$$, on the scale is:

$$
\begin{align}
M & = \sum_{i=1}^{100} i \\
& = \frac{100 (100 + 1)}{2} \\
& = 5050
\end{align}
$$

The difference between the actual weight and 5050 grams divided by 0.001 will
give you the number of the bag with the slightly heavier marbles.

</details>
