---
title: Factorial zeros
layout: default
---

How many zeros are there in 100!?

100! is 100 factorial, which is all the numbers up to 100 multiplied togther.

<details><summary></summary>

100! has 24 zeros.

### Proof

The number of zeros at the end of a number tells us how many times 10 divides
into the number. Each 10 that divides a number can be broken down into a 5 and
a 2.

For factorial, factors of 2 are very common - every even number adds at least
one 2. Thus for every 5, there will always be a 2 available. Therefore we only
need to count how many times 5 goes into the factorial.

Every multiple of 5 introduces another 5 to the factorial's factors. There are
$$ \left\lfloor \frac{n}{5} \right\rfloor $$ 5s in the numbers up to $$n$$.
However, we also need to count an extra 5 for every multiple of $$5^2$$, and
so on for all powers of 5. We can only stop when the powers of 5 exceed $$n$$.

Thus to calculate the number of times 5 divides $$n!$$, and thus the number of
zeros at the end, we have:

$$ \sum_{i=1} \left\lfloor \frac{n}{5^i} \right\rfloor $$

For $$n=100$$:

$$
\left\lfloor \frac{100}{5} \right\rfloor
  + \left\lfloor \frac{100}{25} \right\rfloor
= 20+4 = 24
$$

</details>
