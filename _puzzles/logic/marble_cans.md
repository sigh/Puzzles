---
title: Mislabelled marble cans
layout: default
---

You have 3 cans. On is labelled "black" and contains only, one is labelled
"white" and contains only white marbles, the last is labelled "mixed" and
contains both black and white marbles.

## All labels switched

Unfortunately, all the labels get switched so that none of the cans have their
original label. How many marbles do you have to draw to determine which can is
which?

<details><summary></summary>

You only need to draw one marble.

### Proof

Draw a marble from the can labelled "mixed".

If you draw a black marble it must be the "black" can since it cannot actually
be the "mixed" can. Thus the can currently labelled "black" is the white
can, since it cannot be either the "black" or "mixed" cans. Finally the can
labelled "white" must be the mixed can.

Similarly if a white marble is drawn, the can labelled "mixed" is really
"white", the can labelled "white" is really "black" and the can labelled
"black" is really "mixed".

</details>

## Two labels switched

What if only two of the labels were switched and one remained the same? How many
marbles do you need to draw now?

<details><summary></summary>

You need to draw two marbles.

### Proof

First note that one marble is not sufficient since there are 3 possible swaps.
Single marble can only distinguish between two possibilities.

Start by drawing a marble from the can labelled "mixed".

If a white marble draw a marble from the can labelled "black". If this second
marble is white, then the "mixed" can is correct, and the "black" label
was swapped with the "white" label. If the second marble is black then the
"black" can is correct and the "mixed" was swapped with the "white".

If the first marble drawn was black then follow the above analysis with black
and white reversed.

</details>
