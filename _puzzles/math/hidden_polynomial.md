---
title: Hidden polynomial
layout: default
---

I choose a polynomial with non-negative integer coefficients. You don't know
how many coefficients are in the polynomial.
Your goals is to find out what my polynomial is.
You are only allowed to ask me to evaluate the polynomial at integer points.

What is the fewest number of queries you can ask to determine my polynomial?

<details><summary></summary>

Only 2 queries are required.

### Proof

Let the polynomial you are trying to guess be $$ p(x) = \sum c_i x^i $$.

First, attempt to determine $$p(x)$$ with only one query: $$a$$.
This would not allow us to distinguish between the polynomials $$p_1(x) = x$$
and $$p_2(x) = a$$ - both would evaluate to $$a$$.

To solve the problem with two queries, first ask for $$p(1)$$:

$$ r_1 = p(1) = \sum c_i$$

Let $$b=r_1+1$$. Since the coefficients of $$p(x)$$ are non-negative, $$b$$ is
greater than all $$c_i$$.

Next evaluate $$p(b)$$:

$$ r_2 = p(b) = \sum c_i b^i $$.

The coefficients of the polynomial can be read off as the digits of $$r_2$$
when it is written in base $$b$$.

</details>

## Hidden vector

In a very similar problem I have a hidden vector
of $$n$$ non-negative integers $$[x_1, x_2, \ldots, x_n]$$. Your
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
x_n]$$. Both result in the dot product of
$$ \mathbf{x} \cdot \mathbf{y} = y_1 y_2 + \sum_{i=3}^n y_i x_i $$.

Thus we must use at least 2 vectors, $$\mathbf{y}_1$$ and $$\mathbf{y}_2$$.
Let $$\mathbf{y}_1 = [1, 1, \ldots, 1]$$. This will result in the value $$r_1$$
which is the sum of all values in $$\mathbf{x}$$:

$$
r_1 = \mathbf{x} \cdot \mathbf{y_1} = \sum_{i=1}^n x_i
$$

Let $$b = r_1+1$$. Since the values in $$\mathbf{x}$$ are non-negative,
$$b$$ is greater than all $$x_i$$.

Now construct our second vector $$\mathbf{y}_1 = [1, b, b^2, b^3, \ldots,
b^{n-1}]$$. Our second result, $$r_2$$ will be:

$$
r_2 = \mathbf{x} \cdot \mathbf{y_2} = \sum_{i=0}^{n-1} x_{i+1} b^i
$$

The numbers $$x_i$$ can be read as the digits of $$r_2$$ when it is written
in base $$b$$.

</details>
