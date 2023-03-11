---
title: Calendar cubes
layout: default
---

Number the faces of two cubes so that they can always be placed side-by-side
to show the current day of the month.

<details><summary></summary>

We need to be able to represent all numbers for 01 to 31.

0, 1 and 2 need to be paired with every number hence need to be on both cubes.
The remaining numbers don't need to be paired with each other, thus can be
placed on either of the cubes.

This leaves us 6 remaining faces, but we have 7 remaining numbers. We can
take advantage of the fact that the same face can represent both 6 and 9 by
placing the face upside down.

Thus the following layout works:

* Cube 1: 0, 1, 2, 3, 4, 5
* Cube 2: 0, 1, 2, 6/9, 7, 8

</details>
