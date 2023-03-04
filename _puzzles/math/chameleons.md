---
title: Chameleons
layout: default
---

On a remote island there are population of rare chameleons, each one being
either red, green or blue. If two different coloured chameleons meet then they
will both change to the third colour. For example, if a red chameleons meet a
blue on, they will both turn green. Initially their numbers are as follows:

* 13 red chameleons
* 15 green chameleons
* 17 blue chameleons

Is it ever possible for all the chameleons to become the same colour?

<details><summary></summary>

No, the chameleons can never all be the same colour.

### Proof

Let $$c_B$$ be the number of blue chameleons, $$c_G$$ be the number of green
chameleons, and $$c_R$$ be the number of red chameleons.

Let's look at the number of each colour modulo 3. For any arrangement of colours
$$i$$, $$j$$ and $$k$$ at any time $$t$$ the number of chameleons, $$N_t$$ is:

$$
N_t \equiv \{ c_i, c_j, c_k\} \pmod 3
$$

Now let's assume a chameleon of colour $$i$$ and $$j$$ meet, by our rules the new
numbers are:

$$
\begin{align}
N_{t + \Delta t} & \equiv \{ c_i - 1, c_j - 1, c_k + 2\} \pmod 3 \\
& \equiv \{ c_i - 1, c_j - 1, c_k - 1\} \pmod 3
\end{align}
$$

Thus the difference between the numbers can never change (modulo 3).

Initially we have:

$$
N_0 \equiv \{ c_R, c_G, c_B\} \equiv \{ 1, 0, 2\} \pmod 3
$$

For all the chameleons to be the same colour we would require the other two
colours to both have 0 chameleons. However, from our initial condition this can
never happen because none of the initial numbers are the same modulo 3.

</details>
