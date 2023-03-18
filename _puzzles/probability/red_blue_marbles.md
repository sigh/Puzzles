---
layout: default
title: Red marbles, blue marbles
---

You have two jars, 50 red marbles and 50 blue marbles. You need to place all
the marbles into the jars such that when pick a random marble out of a random
jar, you maximize the chances that it will be red. You can arrange the marbles
however you like, but each marble must be in a jar.

How many of each type of marble do you put in each jar?

<details><summary></summary>

Put 1 red marble in one jar, and put all the other marbles in the other jar.

### Proof

For each jar we have the chance that we get a red marble will be  $$ \frac{\text{#
red marbles in jar}}{\text{# total marbles in jar}} $$ . We can maximise our
chance of getting red marble in one jar by making all the marbles in that jar
red.

However we would like as many marbles as possible in the other jar to have a
high chance of getting red in that one also. The minimum number of marbles we
can use is 1, hence we put a single marble in the first jar.

By putting the rest of the marbles in the second jar we get nearly a 75% chance
of picking a red marble. Suppose we have  $$ n \ge 1 $$  of each type of marble, then
the probability of finding a red marble will be:

$$
\begin{align}
P
& =
  \frac{1}{2}\left(1\right) + \frac{1}{2}\left(\frac{n-1}{n+(n-1)}\right) \\
& = \frac{1}{2}\left(\frac{2 n - 1 + n -1}{2 n - 1}\right) \\
& = \frac{1}{2}\left(\frac{3 n - 2}{2 n - 1}\right)
\end{align}
$$

For our problem we have  $$ n = 50 $$ ,  $$ P = 0.7475 $$ .

Note that as  $$ n $$  goes to  $$ \infty $$  we have:

$$
\lim_{n \rightarrow \infty} P = \frac{3}{4}
$$

Thus for any  $$ n $$  we can't get better than  $$ \frac{3}{4} $$  chance.

</details>
