---
title: Dice groups
layout: default
---

On a table in front of you there are two groups of 5 dice each. One of the
groups adds to 12 and the other to 16.
You are blindfolded and asked to create two piles which add up to the same
number.

How can you do it?

<details><summary></summary>

Move a die from one pile to the other, so you have a pile of 6 dice and a pile
of 4 dice. Flip all the dice in the pile of 4. The two piles will have the same
sum.

### Proof

First note that opposite sides of a dice add up to 7. Thus flipping the dice
changes the value from $$x$$ to $$7-x$$. Filling a group of $$n$$ dice changes
the total from $$x$$ to $$7n-x$$.

The sum of the all the dice in front of you is 28. Thus if the total of one
group is $$x$$ then the total of the other group would be $$28-x$$. If a group
only had 4 dice then we could make the groups equal by flipping the 4 dice.
The flipped group would have a total of $$7\times4-(28-x) = x$$.

If we shift a die from one group to the other the overall total remains 28, but
now we have a group of 4 which we can flip.

</details>
