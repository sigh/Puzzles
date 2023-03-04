---
title: False Equations
layout: default
---

Each of these proofs result in a false statement. Identify the mistakes.

## $$2 = 1$$

Let $$a$$ and $$b$$ be non-zero numbers:

$$
a = b
$$

Multiply by $$a$$:

$$
a^2 = a b
$$

Subtract $$b^2$$:

$$
a^2 - b^2 = ab - b^2
$$

Factor:

$$
(a-b) (a + b) = b (a - b)
$$

Divide by $$a-b$$:

$$
a + b = b
$$

Observe that $$a = b$$:

$$
2 b = b
$$

Divide by non-zero $$b$$:

$$
2 = 1
$$

What went wrong?

<details><summary></summary>

You can't divide through by $$a-b$$. Since $$a = b$$, this is dividing by 0.

</details>

## $$4 = 5$$

Start with a true equation:

$$
20 = 20
$$

$$
36 - 16 = 45 - 25
$$

Multiply by $$-1$$:

$$
16 - 36 = 25 - 45
$$

Add $$\frac{81}{4}$$ to both sides:

$$
16 - 36 + \frac{81}{4}= 25 - 45 + \frac{81}{4}
$$

Simplify:

$$
4^2- 36 + \left( \frac{9}{2} \right)^2 =
  5^2 - 45 + \left( \frac{9}{2} \right)^2
$$

Reduce 35 and 45 to factors:

$$
4^2 -
  \left( 2 \times4 \times \frac{9}{2} \right) +
  \left( \frac{9}{2} \right)^2 =
  5^2 -
  \left( 2 \times 5 \times \frac{9}{2} \right) +
  \left( \frac{9}{2} \right)^2
$$

Factorise:

$$
\left( 4 - \frac{9}{2} \right)^2 = \left( 5 - \frac{9}{2}\right )^2
$$

Take the square root of both sides:

$$
4 - \frac{9}{2} = 5 - \frac{9}{2}
$$

And finally:

$$
4 = 5
$$

What happened?

<details><summary></summary>

Square roots have 2 solutions in general. When taking the square root in the
proof, on one side we took the negative square root and on the other side we
took the positive square root.

If on the other hand we took the positive square root on both sides we would
have:

$$
\begin{align}
- \left(4 - \frac{9}{2}\right) & = 5 - \frac{9}{2} \\
\frac{1}{2} & = \frac{1}{2}
\end{align}
$$

This is obviously true.

</details>

## $$2 = 1$$, the calculus way

We know that we can differentiate $$x^2$$:

$$
\frac{d}{dx} x^2 = 2 x
$$

However, what if we re-write $$x^2$$ as the sum of $$x$$s:

$$
\begin{align}
\frac{d}{dx} x^2 & = \frac{d}{dx} (x + x + x + \ldots + x) \\
& =
  \frac{d}{dx} x + \frac{d}{dx} x + \frac{d}{dx} x + \ldots + \frac{d}{dx} x \\
& = 1 + 1 + 1 + \ldots + 1 \\
& = x
\end{align}
$$

Hence $$2x = x$$ for any $$x$$, therefore $$2 = 1$$.

What's going on here?

<details><summary></summary>

We can't differentiate a sum whose number of terms is dependant on $$x$$ by simply
taking the sum of the derivatives. To make the fallacy here more explicit, write
out the sum formally:

$$
f(x) = x^2 = \sum_{i=0}^x x
$$

There are a few fallacies here. Firstly this equation is not meaningful for
non-integers. Functions are only differentiable on a continuous space such as
the real numbers.

For the second fallacy, note that in the proof, we took the derivative with
respect to each term in the sum, but not with respect to the number of
terms. The number of terms is a function of $$x$$ and has to be taken into
account.

Since the sum is a function of $$x$$, we must use the chain rule when evaluating
this. However this approach does not get us very far. Let the function that the
sum denotes be called $$g(x)$$. Unsurprisingly we find that $$g(x) = x^2$$, leaving
us with the same problem.

</details>

## $$0 = 1$$, integration by parts

Let us evaluate the indefinite integral:

$$
\int \frac{1}{x} dx
$$

Let:

$$
\begin{align}
u &= \frac{1}{x} &dv &= dx &\\
du &= - \frac{1}{x^2} dx &v &= x&
\end{align}
$$

Thus by integration by parts:

$$
\begin{align}
\int \frac{1}{x} dx & = \frac{x}{x} - \int \frac{1}{x^2}x dx \\
\int \frac{1}{x} dx & = 1 + \int \frac{1}{x} dx \\
0 & = 1
\end{align}
$$

What happened?

<details><summary></summary>

This problem illustrates an improper application of integration by parts. When
using the formula, a constant of integration $$C$$ must be added. Up the second
last line the equations are correct. However, the last line does not follow,
as you cannot cancel $$\int \frac{1}{x}dx$$, because they are not necessarily
equal. There are an infinite number of antiderivatives of $$\frac{1}{x}$$, which
all differ by a constant factor.

In reality the last line should read:

$$
0 = 1 + C
$$

Which is trivially true.

</details>

## Too many solutions

A quadratic has either 0, 1, or 2 unique solutions. Look at this equation:

$$
\frac{(x-a)(x-b)}{(c-a)(c-b)} +
  \frac{(x-b)(x-c)}{(a-b)(a-c)} +
  \frac{(x-c)(x-a)}{(b-a)(b-c)} = 1
$$

Without loss of generality we can assume $$a < b < c$$. Now note that $$x = a$$, $$x
= b$$ and $$x = c$$ are all unique solutions.

How can this equation have 3 unique solutions?

<details><summary></summary>

The equation is not actually quadratic in $$x$$. It doesn't depend on $$x$$ at all,
and hence has an infinite number of solutions for $$x$$.

### Proof

The original equation:

$$
\frac{(x-a)(x-b)}{(c-a)(c-b)} +
  \frac{(x-b)(x-c)}{(a-b)(a-c)} +
  \frac{(x-c)(x-a)}{(b-a)(b-c)} = 1
$$

Multiply by $$(a-b)(b-c)(a-c)$$:

$$
(x-a)(x-b)(a-b) + (x-b)(x-c)(b-c) + (x-a)(x-c)(a-c) = (a-b)(b-c)(a-c)
$$

Expand:

$$
(x^2 - (a + b) x + ab)(a-b) +
  (x^2 - (b + c) x + bc)(b-c) -
  (x^2 - (a + c) x + ac)(a-c) =
  (a-b)(b-c)(a-c)
$$

Collecting $$x$$ terms:

$$
x^2 (a - b + b - c - a + c) +
  x (a^2 - b^2 + b^2 - c^2 -a^2 + c^2) +
  ab(a-b) + bc(b-c) - ac(a-c) =
  (a-b)(b-c)(a-c)
$$

Thus all the $$x$$ terms cancel out, leaving an equation that is always true.

</details>

## Unequal equations

Take the following equation:

$$
x^2 + x = -1
$$

$$x = 0$$ is not a solution so therefore we can divide by $$x$$ and rearrange:

$$
\begin{align}
x + 1 & = - \frac{1}{x} \notag \\
\frac{1}{x} + x & = -1
\end{align}
$$

Combining the equations:

$$
\begin{align}
x^2 + x & = \frac{1}{x} + x \\
x^2 & = \frac{1}{x} \\
x^3 & = 1 \\
x & = 1
\end{align}
$$

However, if we substitute into the original equation, we get:

$$
1^2 + 1 = 2 \ne 1
$$

What happened?

<details><summary></summary>

The original quadratic has roots at:

$$
x = \frac{-1 \pm \sqrt{3}}{2}
$$

However, when we combine the rearranged equations, we form a cubic
equation. This adds a solutions, so now:

$$
x = \frac{-1 \pm \sqrt{3}}{2}, 1
$$

And indeed, these are the three cube roots of one.

In general setting two equations equal to each other can generate more
solutions, that don't satisfy the original equations independently. This is
because you are removing constraints, in this case, the constraint that both
equations equaled $$-1$$.

</details>
