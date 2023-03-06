---
title: Gender ratio
layout: default
---

There is a country where every family keeps having children
until they have a boy. If they have a girl, they have another child. If they
have a boy, they stop. Boys are girls are equally likely to be born.

What is the proportion of boys to girls in this country?

<details><summary></summary>

The ratio of boys to girls is 1:1.

### Proof

Let's assume for now that we don't know the strategy that the families use to
decide whether to have another child. However, the births are statistically
independent.

For each birth in the country, we have a $$\frac{1}{2}$$ chance
of having a girl, and a $$\frac{1}{2}$$ chance of having a boy. Thus after $$n$$
births, we expect to have on average $$\frac{n}{2}$$ girls and $$\frac{n}{2}$$ boys.

This gives a ratio of 1:1. Further this is true regardless of what strategy
the families use to decide when to have children.

In this specific case we can also determine the expected number of girls per
family as:

$$
E(g) = \frac{1}{2}(1 + \frac{1}{2}(1 + \frac{1}{2}( 1 + ... )))
= \frac{1}{2} + \frac{1}{2^2} + \frac{1}{2^3} + ...
= 1
$$

This represents that there is a 50% chance of having at least one girl. Given
one girl, there is a 50% chance of having at least 2 girls, and so on.
Since each family stops at one boy, there is on average 1 boy and 1 girl in each family.

</details>
