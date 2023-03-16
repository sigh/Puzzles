---
title: 10x10 tiling
layout: default
---

Suppose there is a 10x10 grid.

![10x10 grid]({{ 'images/10_10_tiling_grid.png' | relative_url }})

Can you tile it completely with 1x4 tiles (oriented in any direction)?

![1x4 tile]({{ 'images/10_10_tiling_tile.png' | relative_url }})

<details><summary></summary>

No, it is impossible.

### Proof

Label the grid cells with letters A-D as follows, filling in each diagonal
line with each successive label:

![10x10 grid labelled]({{ 'images/10_10_tiling_ABCD.png' | relative_url }})

Note that anywhere you place a 1x4 tile, it will cover one of each label A-D.
Thus each letter will be covered the same number of times.

However, the grid has an _unequal_ count of each letter.
Note that each row has either two or three of each letter. Looking at just the
letters A and B:

![10x10 grid labelled AB]({{ 'images/10_10_tiling_AB.png' | relative_url }})

There are 5 rows with 3 As, but 6 rows with 3 Bs. Hence there is one more B
than As in the grid. Thus any tiling that covers every A will leave a B
uncovered.

</details>