---
title: Jewel thieves
layout: default
---

Two thieves conspire to steal a valuable necklace made of diamonds and rubies.
The jewels are evenly spaced, but the diamonds and rubies are arbitrarily
arranged. After they take it home, they decide that the only way to divide the
jewels fairly is to physically cut the necklace in half.

Prove that, if there is an even number of diamonds and an even number of rubies,
it's possible to cut the necklace into two pieces, each of which contains half
the diamonds and half the rubies.

<details><summary></summary>

Note that the necklace must be divided at two opposite points, as each thief
will have to end up with the same number of jewels.

Start with arbitrary provisional cutting points  which divide the necklace in
two. If one side has more diamonds than the other, you rotate the cut by one
jewel. If the switched jewels were the same, it changes nothing and you rotate
again. If they're different, the number of diamonds on one side will either go
up one or down one. Eventually, by the time you've rotated the cut 180 degrees,
the sides of the original cut will have swapped.

Since each rotation changes the number by one, and the diffence in the number of
diamonds has been negated, then at some point they must have been equal.
If the diamonds are equal then the rubies are also equal since each half has the
same number of jewels.

</details>
