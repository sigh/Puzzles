---
title: Flipping coins
layout: default
---

On a table in front of you there are 100 coins, 20 heads up and 80 tails up. You
are blindfolded and asked to create two groups of coins each with an equal
number of heads up.

How can you do it?

{% solution %}

Arbitrarily split the coins up into a group of 20 and a group of 80. Now flip
all the coins in the group of 20.  Now both groups have the same number of heads
up.

### Proof

Let the number of coins in the group of 80 be $$h_{80}$$.

There are 20 coins with heads up initially, so immediately after we split up the
groups, the number of heads in the group of 20 is $$20 - h_{80} $$.

When we flip the coins in the group of 20, the number of heads in the group
becomes $$ 20 - (20 - h_{80}) = h_{80}$$. Thus now the two groups have the same
number of heads showing.

{% endsolution %}
