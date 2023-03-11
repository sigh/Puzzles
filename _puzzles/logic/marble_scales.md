---
title: Marble scales
layout: default
---

## 8 marbles

You have 8 marbles and a balance scale. All the marbles have the same weight,
except one which is slightly heavier.

How do you determine which is the heavy marble in the minimum number of
weighings.

<details><summary></summary>

We can do it in 2 weighings.

If we only have 3 marbles, we can determine the heaviest with one just weighing:
Put a marble on each side of the scale, and leave one aside.

* If the scale is unbalanced then the heavier side is the heavy marble.
* Otherwise the marble left aside is the heavy marble.

To solve the problem for 8 marbles, first weigh 3 marbles on each side of the
scale, leaving 2 aside:

* If the scale is unbalanced, take the 3 marbles on the heavy side and determine
  the heavy marble with one weighing as above.
* Otherwise weigh the 2 remaining marbles to determine which is heavier.

</details>

## 12 marbles

You have 12 marbles and a balance scale. All the marbles have the same weight,
except one which is different. The odd marble may be either heavier or lighter.

How do you determine which is the odd marble in the minimum number of
weighings. You must also determine whether it is heavier or lighter.

Note: This is difficult and the solution is not particularly intuitive.

<details><summary></summary>

We can do it in 3 weighings.

First note, that if we have 3 marbles with 1 odd marble then we can find the
odd marble in one weighing if we know that the odd marble is heavier or lighter.
Simply weigh 2 of the 3. If the scale is unequal then we've identified the odd
marble, otherwise the odd marble is the remaining marble.

First group the marbles into 3 groups of 4. Weigh 2 of the groups:

* If the groups are of equal weight:
  * Mark all eight marbles weighed as good.
  * Take 3 of the 4 remaining marbles and weigh them against 3 good marbles:
    * If the two sides wiegh the same then the last marble is the odd marble.
      Weigh it against a good marble to determine if it heavier or lighter.
    * If the two sides are unequal, then we know that the odd marble is in the
      group of 3, and we know whether it is heavier or lighter.
      This is just the 3 marble case which can be solved in one weighing.
* If the groups are unequal:
  * The 4 remaining marbles are good.
  * From the scale we have a heavy group of 4 and a light group of 4.
  * Now will weigh 3 marbles from the light group and one from the heavy group
    against 3 good and 1 from the light group:
    * If the side with 3 light and 1 heavy is heavier then the odd marble
      is either the 1 from the heavy group, or the 1 from the light group on the
      light side. Comparing either of these with a good marble will identify
      the odd marble.
    * If the side with 3 light and 1 heavy is lighter, then one of the 3 from
      the light group is the odd marble.
      This is just the 3 marble case which can be solved in one weighing.
    * If the scale is equal then the odd marble is one of the 3 remaining
      marbles from the heavy group.
      This is just the 3 marble case which can be solved in one weighing.

</details>

## General case

In the general case there are $$N$$ marbles with one odd marble. We may or
may not know whether the odd ball is heavier or lighter.

The general case solution is explored in this
[math stackexchange post](https://math.stackexchange.com/questions/15423/optimal-algorithm-for-finding-the-odd-sphere-with-a-balance-scale/336224#336224).
