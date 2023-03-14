---
title: Worm and the apple
layout: default
---

There is an apple with radius 31 mm. It is in the shape of a perfect sphere.
A worm gets into the apple and eats a tunnel of total length 61 mm, and then
leaves the apple. (The tunnel need not be a straight line.)

Prove that you can cut the apple with a straight slice through the center so
that one of the two halves is not eaten.

<details><summary></summary>

First consider the problem for a circle instead of a ball.

Let $$A$$ and $$C$$ be the entry and exit points of the worm.
Let $$B$$ be the point opposite the worm's entry point.

![The worm and apple solution]({{'../../images/worm_and_apple.png' | relative_url }})

Note that the worm can never travel from $$A$$ to be $$B$$ as the distance is
62 mm.

Draw a line that bisects $$C$$ and $$B$$ and goes through the circle's center
(hence cuts the circle in two). By construction, all points on the line are
equally far from $$C$$ and $$B$$. Thus if the tunnel touches the line, then
it could also have reached $$B$$.
Since a tunnel between $$A$$ and $$B$$ is impossible, the tunnel cannot touch
the line.

Cutting the apple along the line leaves the tunnel completely on one side,
leaving the other side untouched by the worm.

For a sphere, replace the bisecting line with a bisecting plane where all points
on the plane are eqi-distant from the points $$B$$ and $$C$$. The rest of the
proof carries through.

</details>

