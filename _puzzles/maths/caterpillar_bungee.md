---
title: Caterpillar on a bungee
layout: default
---

A caterpillar crawls along a very flexible 1 m long bungee cord. It starts off
at one end of the bungee cord, and starts crawling to the other end.
When the caterpillar has crawled 1 cm, the bungee cord extends by a meter to 2
m. When the caterpillar has crawled another 1 cm, the bungee cord extends by
another meter to 3 m.
This continues on, each time the caterpillar progresses by 1 cm, the bungee cord
extends by another meter.

Will the caterpillar ever reach the other side?

Note that as the bungee cord is stretched, the caterpillars relative position on
the cord remains the same, its absolute position increases.

<details><summary></summary>

Yes, the caterpillar does reach the other side, eventually.

### Proof

Because the relative position of the caterpillar remains the same when the
bungee cord is stretched, we will look at the position of the caterpillar as a
fraction of the bungee cord length, $$L$$. It starts at position $$0L$$, and must
reach position $$1L$$.

In the first step, the caterpillar walks $$\frac{1}{100} L$$. In the next step,
the caterpillar walks $$\frac{1}{200} L$$, then $$\frac{1}{300} L$$, and so on. The
total distance the caterpillar has travelled after $$n$$ steps is:

$$
\sum_{x=1}^n \frac{1}{100 x} L = \frac{L}{100} \sum_{x=1}^n \frac{1}{x}
$$

We require the distance to equal $$1L$$ for the caterpillar to reach the other
side, hence we need some $$n$$ such that:

$$
\begin{align}
L & < \frac{L}{100} \sum_{x=1}^n \frac{1}{x} \\
100 & < \sum_{x=1}^n \frac{1}{x}
\end{align}
$$

$$\sum_{x=1}^n \frac{1}{x}$$ is the harmonic series, which diverges. Thus it
will eventually exceed 100 for some (very large) value of $$n$$. Therefore the
caterpillar will reach the other side. In general, this is true for any length
cord.

By the [Euler-Maclaurin formula](https://en.wikipedia.org/wiki/Euler%E2%80%93Maclaurin_formula), the harmonic series is approximated by:

$$ H_n \approx \ln n+\gamma $$
where
$$ \gamma \approx 0.5772 $$

We need to reach $$H_n > 100$$.
Thus an approximation for the number of steps taken by the caterpiller is:

$$ n \approx e^{H_n - \gamma} \approx 1.5 \times 10^{43} $$

</details>
