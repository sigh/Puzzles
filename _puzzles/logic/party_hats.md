---
title: Party hats
layout: default
---

There is a party of logicians, and just towards the end of the party the host
seats everyone down in a circle. They puts a hat on each person's head such that
everyone else could see it but the person themselves could not.

There were many, many different colours of hats. The host instructed them that
a bell would be rung at regular intervals: at the moment when a person knew the
colour of their own hat, they must leave at the next bell.

As they were all very good logicians, leaving at the wrong bell was unacceptable
and would be disastrous to their reputations. The host reassures the group by
stating that the puzzle would not be impossible for anybody present.

How did they all leave?

<details><summary></summary>

First we determine that there must be at least 2 of each hat colour.
If there was a person with a unique hat colour, then they could
in no way determine that their was even a valid colour. However, the host said
that everyone has enough information to solve the puzzle and leave. Thus there
must be at least two people with each hat colour.

We now form a hypothesis and prove it via induction:

**Hypothesis**: If there are $$n$$ people with a hat of colour $$c$$, then
they will all leave on the $$(n-1)$$th bell.

If there are only two people for a given colour $$c$$, then both of them will
count only one hat of colour $$c$$ in the group. Thus they will both know that
their own hat colour must also be $$c$$. Therefore they both leave on the first
bell, satisfying the **Hypothesis**.

Suppose there are $$n$$ people with hats of a given colour $$c$$, and suppose
the **Hypothesis** is true for $$n-1$$. Then everyone with hat colour $$c$$ will
see $$n-1$$ people with colour $$c$$. On the $$(n-1)$$th bell none of them will
leave, thus they will all conclude there must be more than $$n-1$$ people with a
hat of colour $$c$$. Thus they will determine that they must have a hat of colour
$$c$$.

Therefore, because the **Hypothesis** is true for $$n=2$$, and
the **Hypothesis** being true for $$n-1$$ implies it is true for $$n$$, we have
that the **Hypothesis** is true for all $$n \ge 2$$.

Therefore, everyone eventually leaves. (Compare this with
[Marked prisoners]({{ 'puzzles/marked-prisoners' | relative_url }})).

</details>
