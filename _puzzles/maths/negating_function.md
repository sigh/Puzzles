---
title: Negating function
layout: default
---

Design a function $$f: \mathbb{Z} \rightarrow \mathbb{Z}$$ such that
$$f(f(n)) = -n$$.

<details><summary></summary>

An example is:

$$ f(n) = \operatorname{sgn}(n) - n(-1)^n $$

### Proof

Suppose that $$f(x) = y$$ for some $$x$$ and $$y$$. Then:

$$
\begin{align}
f(y) = & f(f(x)) = -x \\
f(-x) = & f(f(y)) = -y \\
f(-y) = & f(f(-x)) = x \\
\end{align}
$$

Therefore continued application of $$f$$ results in a cycle:
$$x \rightarrow y \rightarrow -x \rightarrow -y \rightarrow x$$.

This implies that $$f(0) = 0$$ because we require that
$$x = f(0) = f(-0) = -x$$.

For all other integers we need to partition them into groups of 4, each
which contain some $$x$$, $$y$$ and their negations. To construct such a mapping,
let us make the simplest choice of letting $$f(1) = 2$$. This then forces the
following cycle:
$$1 \rightarrow 2 \rightarrow -1 \rightarrow -2 \rightarrow 1$$.

Likewise we can let $$f(3) = 4$$ and in general for $$k > 0$$ we can let
$$f(2k-1) = f(2k)$$ which forces:
$$2k-1 \rightarrow 2k \rightarrow -2k-1 \rightarrow -2k \rightarrow 2k-1$$. Thus
we can define how the function acts on a number based on whether it is positive
or negative and whether it is even or odd:

$$
f(n) =
\begin{cases}
    n + 1 & \text{ if } n > 0 \wedge n \text{ is odd} \\
    -n + 1 & \text{ if } n > 0 \wedge n \text{ is even} \\
    n - 1 & \text{ if } n < 0 \wedge n \text{ is odd} \\
    -n - 1 & \text{ if } n < 0 \wedge n \text{ is even}
\end{cases}
$$

When $$n < 0$$ we are always adding 1, and when $$n > 0$$ we are
always subtracting $$1$$. Thus the above simplifies to:

$$
f(n) =
\begin{cases}
    \operatorname{sgn}(n) + n & \text{ if } n \text{ is odd} \\
    \operatorname{sgn}(n) - n & \text{ if } n \text{ is even}
\end{cases}
$$

Now $$(-1)^n = 1$$ when $$n$$ is even, and $$(-1)^n = -1$$ when $$n$$ is
odd. This allows us to simplify the above to our solution:
$$ f(n) = \operatorname{sgn}(n) - n(-1)^n $$

By construction it satisfies $$f(f(n)) = -n$$ for $$n \ne 0$$, and we can evaluate
$$f(0)$$ to check that it indeed holds for $$0$$ as well. Thus our solution is
correct.

</details>
