---
title: Lake monster
layout: default
---

You are in a row boat in the middle of a circular lake. On the shore of the
lake is a monster who will eat you if it catches you. Luckily, the monster
can't swim and, on land, you can run faster than the monster.
You are safe while you are in the boat, and if you reach the shore ahead of the
monster then you can escape.
Both you and the monster can turn instantaneously.

The monster can run 4 times as fast as you can row. How can you escape?

<details><summary></summary>

Let $$r$$ be the radius of the lake.

First note that the simple strategy of rowing directly away from the monster
fails. You need to travel a distance of $$r$$, the monster needs to travel
$$\pi r$$ but does so 4 times faster.

However, you can travel further away from the center while keeping the monster
on the opposite side. If you are closer than $$ \frac{r}{4} $$ from the center
then you can row in a circle faster than the monster can circle the lake.

So first row to a distance of $$ \frac{r}{4} $$ from the
center while keeping the monster opposite you. From there you can row directly
to the closest shore. The monster will still have to travel a distance of
$$\pi r$$, but you only have to travel $$ \frac{3}{4} r $$.

Even though you are 4 times slower, you will reach the shore first because
$$\pi r < 4 \times \frac{3}{4} r = 3 r$$.

### Extension

This strategy works as long as the monster is no more than
$$\pi + 1 \approx 4.14$$ times faster.

However, this strategy is not optimal and you can escape a monster who is up to
~4.6 times faster. For a proof see
[this blog post](http://datagenetics.com/blog/october12013/index.html).

</details>