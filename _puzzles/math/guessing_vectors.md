---
title: Vector guessing game
layout: default
---

I choose a vector of $$n$$ non-negative integers $$[x_1, x_2, \ldots, x_n]$$. Your
goal is to find out my vector. You are allowed to name any vector
$$[y_1, y_2, \ldots, y_n]$$ of $$n$$ non-negative integers, and I'll tell you the
dot product of your vector and my vector.

Clearly by naming the $$n$$ vectors
$$[1, 0, \ldots, 0], [0, 1, \ldots, 0], \ldots, [0, 0, \ldots, 1]$$ you can find
my vector.

What is the fewest number of vectors required for you to be sure of my vector?

<details><summary></summary>

Only 2 vectors are required.

### Proof

Let the vector you are trying to guess be
$$\mathbf{x} = [x_1, x_2, \ldots, x_n]$$.

First, attempt to determine $$\mathbf{x}$$ with only one query, $$\mathbf{y} =
[y_1, y_2, \ldots, y_n]$$. Assume $$ n > 1$$. All entries in $$\mathbf{y}$$ must be
non-zero. If some value $$y_i$$ was zero, then we would have no information about
entry $$x_i$$.

However, now we cannot tell the difference between the vectors $$\mathbf{x} =
[y_2, 0, x_3, x_4, \ldots, x_n]$$ and $$\mathbf{x} = [0, y_1, x_3, x_4, \ldots,
x_n]$$. Both result in the dot product of:

$$
\mathbf{x} \cdot \mathbf{y} = y_1 y_2 + \sum_{i=3}^n y_i x_i
$$

Therefore we cannot determine $$\mathbf{x}$$ with only one vector.

Now attempt the problem with 2 vectors, $$\mathbf{y}_1$$ and $$\mathbf{y}_2$$. We
let $$\mathbf{y}_1 = [1, 1, \ldots, 1]$$. This will result in the value $$r_1$$
which is the sum of all values in $$\mathbf{x}$$:

$$
r_1 = \mathbf{x} \cdot \mathbf{y_1} = \sum_{i=1}^n x_i
$$

Since all values in $$\mathbf{x}$$ are non-negative we have that:

$$
r_1 \ge x_i \text{ for all } 1 \le i \le n
$$

We let $$b = r_1+1$$, although we can use any integer greater than $$r_1$$ -
what matters is that $$b$$ is greater than all $$x_i$$.
We now construct our second vector $$\mathbf{y}_1 = [1, b, b^2, b^3, \ldots,
b^{n-1}]$$. Our second result, $$r_2$$ will be:

$$
r_2 = \mathbf{x} \cdot \mathbf{y_2} = \sum_{i=0}^{n-1} x_{i+1} b^i
$$

Therefore we can simply read of the numbers $$x_i$$ from the digits in the base
$$b$$ representation of $$r_2$$:

$$
r_2 = x_n, x_{n-1}, \ldots, x_2, x_1
$$

</details>
