---
layout: default
title: Guess the larger number
---

I pick two distinct real numbers at random from some arbitrary
distribution. Then I flip a coin and if it comes up heads, I tell you the larger
one, if it comes up tails I tell you the smaller one.
You must guess whether it was the larger one or the smaller one.

Give a strategy that wins with a probability greater than  $$ \frac{1}{2} $$.

<details><summary></summary>

If you see an  $$ x $$, guess "larger" with probability  $$ p(x) $$  and "smaller"
with probability $$ 1-p(x) $$, where $$ p(x) $$ is a monotonically increasing function
from  $$ \mathbb{R} $$ to $$ (0,1) $$ . A possible function is:

$$ p(x) = \frac{1}{2} + \frac{\arctan(x)}{\pi} $$

### Proof

Suppose the distinct numbers are  $$ a $$ and $$ b $$ with $$ a < b $$ .

The probability,  $$ P $$, of guessing correctly is:

$$
\begin{align}
P & = \frac{1}{2}(1 - p(a)) + \frac{1}{2}p(b) \\
  & = \frac{1}{2} + \frac{1}{2} (p(b) - p(a))
\end{align}
$$

From this we can see that:

$$
P > \frac{1}{2} \text{ if } p(b) > p(a)
$$

But since $$ p(x) $$ is monotonically increasing and  $$ b > a $$, we have  $$ p(b) >
p(a) $$. Thus the overall probability of winning is greater than $$  \frac{1}{2}  $$.

</details>
