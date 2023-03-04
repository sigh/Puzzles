---
title: Gold chain
layout: default
---

You want to stay at an inn for seven nights. You only have a gold chain with
seven links. The innkeeper agrees to accept this in payment for the stay, but
you only want to pay for one night at a time.

You start to cut a link, but the innkeeper wants you to minimize the damage to
the chain. What is the minimum number of cuts you must make, provided the
provided the innkeeper is happy to return previously given links as change?

<details><summary></summary>

This is possible in one cut.

Cut a single link, the third one, dividing the chain into lengths of 1, 2,
and 4. Then follow this day-by-day plan:

1. Give 1 link.
1. Give 2 links, get 1 link as change.
1. Give 1 link.
1. Give 4 links, get 3 links as change.
1. Give 1 link.
1. Give 2 links, get 1 link as change.
1. Give 1 link.

This is equivalent to counting in binary.

</details>
