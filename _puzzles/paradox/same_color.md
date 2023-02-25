---
title: All horses are the same color
---

We will prove that in any group of horses, all horses are the same color.

We will use induction to prove this claim.
First, we establish a base case for one horse ($$ n = 1 $$).
We then prove that if $$ n $$ horses have the same color, then $$ n+1 $$ horses must also have the same color.

The **base case**,  $$ n=1 $$  is trivially true. In a group with
one horse, all horses have the same color.

For the **inductive case**, assume that $$ n $$ horses always are the same color.

Consider a group consisting of $$ n+1 $$ horses.
First, exclude one horse and look only at the other $$ n $$
horses; all these are the same color, since this is given by the inductive case.
Likewise, exclude some other horse (not identical to the one first removed) and look only at the other $$ n $$
horses. By the same reasoning, these, too, must also be of the same color.
Since the first excluded horse is in the second set of $$ n $$ horses, it is the same color as the non-excluded horses and
by the same logic so is the second excluded horse.
Hence all $$ n + 1 $$ horses are the
same color.

This proves the inductive case that if any group of $$ n $$ horses are the
same color, then so is any group of $$ n+1 $$ horses.

Thus, in any group of horses, all horses must be the same color.

Where is the flaw in the logic?

{% solution %}

The flaw is in assuming it is possible to find a horse who was not excluded by either of the groups of $$ n $$ in the inductive case.

For the two exluded horses to be the same color, there must be a third horse
in the group to compare against.

Thus the induction fails for $$ n=2 $$.

{% endsolution %}
