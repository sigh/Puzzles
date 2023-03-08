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

A couple of observations:

* Since our friend will finish of a partially eaten apple, there
is no benefit in travelling non-integer distances.
* If our friend travels a distance $$d_1$$, then they could equally travel the
same distance in two steps. First travel a distance $$d_0 < d_1$$, then travel
the rest of the distance. The apples can even be stored at $$d_0$$ while the
friend does other things.

Taking these together, we can consider the problem 1 km at a time. Thus we
just need to determine the most efficient way to transport $$a$$ apples 1 km.

Given that a 1 km trip can't be broken up and that each trip will cost exactly
1 apple, we need to minimize the number of trips. To do this we fill up the car
as much as possible (up to $$C$$ apples) for each trip, giving us:

$$ n = \left\lceil \frac{a}{C} \right\rceil $$

Where $$n$$ is the number of car trips, and the number of apples eaten.
Afterwards, there will be $$a-n$$ apples left. Now we can calculate the number
of apples at any distance with:

$$ a_0 = A $$

$$ a_{d+1} = a_d - \left\lceil \frac{a_d}{C} \right\rceil $$

In our case, $$ a_0 = 3000 $$ gives $$ a_{1000} = 833 $$.

We can simplify the calculation by realizing that while
$$ \left\lceil \frac{a_{d+1}}{C} \right\rceil = \left\lceil \frac{a_d}{C} \right\rceil $$
we don't need to set the apples down as the number of trips will remain the
same.

Thus we can travel as far as we can until the apples can be split across one
fewer trips - when the total number of apples is the next lower
multiple of $$C$$. The distance traveled is determined by the number of apples
we have to spare and the number of trips:

$$ d =
  \begin{cases}
    \frac{C}{\left\lceil \frac{a}{C} \right\rceil} \text{ if } a \mid C \\
    \frac{a \mod C}{\left\lceil \frac{a}{C} \right\rceil} \text{ if } a \nmid C
  \end{cases}
$$

Because we only deal with integer distances, if we are required to go a
non-integer distance $$d$$ we round up.

Applying this strategy to our problem:

* Stage 1
  * Take 1000 apples at a time to $$d = \left\lceil \frac{1000}{3}
    \right\rceil = 334$$
  * We now have 1998 apples left, at a distance of 334 km
* Stage 2
  * Take 998 apples a further $$d = \frac{998}{2}= 499$$
  * We now have 1000 apples left at 833 km
* Stage 3
  * Take 1000 apples until the end, which is $$d = 167$$ km away
  * We end up with 833 apples at the destination.

</details>
