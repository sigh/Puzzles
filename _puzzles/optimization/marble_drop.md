---
title: Marble dropping
layout: default
---

You are in a 100 story building and you have two identical marbles. You want to
find out the highest floor in the building you can drop marbles off without them
breaking. After you drop a marble, if it breaks it is unusable. If it survives
it is not weakened at all.

Find the minimum number of drops you need to guarantee finding the highest floor
you can safely drop marbles from.

<details><summary></summary>

You need at most 14 drops.

### Proof

Let the maximum number of drops be $$d$$. If we have 1 marble we can only test $$d$$
floors by starting from the bottom and working our way up.

With 2 marbles, we know if we break the first marble on the first drop, we will
only have 1 marble and $$d-1$$ drops. Therefore our first drop should be floor
$$(d-1) + 1 = d$$, since we can test the lower floors with one marble is required.

If the first drop succeeds we still have 2 marbles, but only $$d-1$$
drops. Therefore if the second drop fails we can only test $$d-2$$ floors with 1
marble. Thus we should go $$d-1$$ floors above where we are, or floor number $$ d +
(d-1) $$.

Continuing like this we can see that the maximum number of floors we can test is
given by:

$$
F_{max} = \sum_{i=1}^d i
$$

The smallest $$d$$ such that we can test 100 floors is 14.

Drop the first marble on floors $$[14, 27, 39, 50, 60, 69, 77, 84, 90, 95, 99]$$
until it breaks. Then with the second marble, incrementally test the floors
starting from one above the last good drop.

### General case

With $$M$$ marbles and $$D$$ drops, the number of floors you can test is given by:

$$
F(M,D) = \sum_{m=1}^{\min(M,D)} {D \choose m}
$$

Firstly note, having more than $$M > D$$ is useless because even if a marble broke
on every drop, we would only need $$M = D$$ marbles. Thus we will restrict the
number of marbles to $$M = \min(M, D)$$ without loss of generality.

In any given strategy, decide how many marbles will break, and call it $$m$$. If
you know which drops those marbles broke on that is enough to tell you the floor
number (given you know the strategy used to pick the floors).

There are $${D \choose m}$$ different ways of choosing the positions where the
marbles break. If we sum over all possible numbers of marbles broken it will
give us the maximum number of different floors we can test with $$M$$ marbles and
$$D$$ drops, with any strategy.

Any strategy that achieves this limit is thus optimal.

Let us define such a strategy. We will use the variables:

* $$d$$ for the current number of drops left
* $$m$$ for the current number of marbles left
* $$x_{max}$$ for the maximum floor number we can safely drop a marble from.
* $$x$$ for the current floor number

Initially set $$d=D$$, $$m=M$$, $$x_{max} = 0$$ and $$x = 0$$.
Then proceed as follows:

* Set $$x = x_{max} + F(m-1, d-1) + 1$$
* Drop a marble from from floor $$x$$, and set $$d = d-1$$

  * If it survives set $$x_{max} = x$$
  * If it breaks set $$m = m - 1$$

* If $$d > 0$$ and $$m > 0$$ jump back to the top
* Otherwise stop, the maximum safe floor is $$x_{max}$$

</details>
