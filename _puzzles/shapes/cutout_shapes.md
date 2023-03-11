---
title: Cutout shapes
layout: default
---

## Square

Divide a square int into four identical squares.
Remove the bottom right hand square.

![Cutout square]({{ 'images/cutout_square.png' | relative_url }})

Divide the resulting shape into four identical shapes.

<details><summary></summary>

![Cutout square solution]({{ 'images/cutout_square_solution.png' | relative_url }})

</details>

## Triangle

Divide an equilateral into four identical shapes.
Remove the bottom right hand shape.

![Cutout triangle]({{ 'images/cutout_triangle.png' | relative_url }})

Divide the resulting shape into four identical shapes.

<details><summary></summary>

![Cutout triangle solution]({{ 'images/cutout_triangle_solution.png' | relative_url }})

Note that in both the square and triangle case, we can divide the remaining 3
shapes again into 4 parts. We need to pick 3 of the smaller parts to make the
new identical shape. If we pick the part from each of the 3 shapes that are next
to each other, we automatically get the required shape.

</details>
