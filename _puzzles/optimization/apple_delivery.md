---
title: Apple delivery
layout: default
---

You have 3000 apples. You wish to transport them to a town 1000 km away. A
friend offers to help you with this. His car can hold 1000 apples at
most. However, he loves apples, so if there are any apples in the car, then he
will eat 1 every kilometre that he travels.

You can store apples at any arbitrary point along the way. If your friend has a
partially eaten apple at the end of a trip he will finish the rest of it off.

What is the maximum number of apples you can transport to the other town?

<details><summary></summary>

We can get 833 apples to the other town.

### Proof

Let the town you are in be town \#1 and the destination be town \#2. Let the
distance between them be $$D$$, and the number of apples be $$A$$, and the capacity
of the car be $$C$$ apples.

We notice that since our friend will finish of a partially eaten apple, there
is not benefit in travelling non-integer distances. Thus we will not consider
these.

Suppose for some distance $$d$$, we could start off with $$a_i$$ apples and
finish with $$a_f$$ apples.

Regardless of the strategy, all $$a_f$$ apples must make the full journey. We
want to minimize the number of seperate trips these apples were split across.
Since each car trip consumes at least 1 apple, the minimum number of trips
required is:

$$ n_{min} = \left\lceil \frac{a_f}{C - 1} \right\rceil $$

We want to maximum $$d$$ with:

$$
\left\lceil \frac{a_f}{C - 1} \right\rceil d
=
\left\lceil \frac{a_f}{C - d} \right\rceil d
$$

This occurs when $$\frac{a_f}{C}$$ is an integer. In this case
$$ \left\lceil \frac{a_f}{C} \right\rceil = n_{min} + 1 $$, and thus has the
greatest leaway to increase $$d$$ while keeping
$$ \left\lceil \frac{a_f}{C - d} \right\rceil = n_{min} $$.

To be as efficient as possible, we want each car trip to be as full of apples
as possible (because the cost is the same regardless of how many apples we
transport). Thus as the start of each trip we want $$C$$ apples, giving
$$ n = \left\lceil \frac{a_i}{C} \right\rceil $$.
Setting $$ n = n_{min} $$ we have:

$$ \frac{a_f}{C} = \left\lceil \frac{a_i}{C} \right\rceil -1 $$

Thus our strategy is to keep drive to a distance until we lose $$C$$ apples, and
store the apples there. Then we do the same again with the remaining apples, but
we have to make one less trip each time, so we can save more apples. So at each
stage we drive $$d = \frac{C}{\left\lceil \frac{a_i}{C} \right\rceil}$$.

Because we only deal with integer distances, if we are required to go a
non-integer distance $$d$$ we will store the apples at $$\lfloor d \rfloor$$ and
$$\lceil d \rceil$$.

Applying this strategy to our problem:

* Stage 1
  * Take 1000 apples at a time to $$d = \left\lfloor \frac{1000}{3}
    \right\rfloor = 333$$
  * On the last trip we can go to distance $$d = \left\lceil \frac{1000}{3}
    \right\rceil = 334$$
  * We now have 2000 apples left, at a minimum distance of 333 km
* Stage 2
  * Take 1000 apples a further $$d = \frac{1000}{2}= 500$$
  * We now have 1000 apples left at 833 km
* Stage 3
  * Take 1000 apples until the end, which is $$d = 167$$ km away
  * We end up with 833 apples at the destination.

</details>
