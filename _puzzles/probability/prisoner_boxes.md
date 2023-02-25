---
title: Prisoners' names in boxes
---

There are 100 prisoners. Inside a room there are 100 boxes each holding the
name of a different prisoners. One at a time, each prisoner is lead into the
room. They are allowed to open 50 boxes in any order, and look inside. They are
allowed to base their decision for what boxes to open based on what they have
already seen. If they find the box containing their name, they are lead out and
the boxes are returned to their original state.

The prisoners are allowed to go free if all 100 prisoners find the box
containing their own name. They are not allowed to communicate with the other
prisoners after the first prisoner has been lead into the room.

Find a strategy that wins at least 30% of the time.

{% solution %}

First, number each prisoner from 1 to 100. When a prisoner goes into the room
they:

* Looks in the box corresponding to their number.
* If they don't find their name they looks in the box corresponding to the
  name of the prisoner in the box they just opened.
* They continue until they find their name, or they cannot open any more boxes.

This strategy results in a ~31.2% chance of winning.

### Proof

Let us generalise the problem to $$N$$ prisoners, where each prisoner is allowed
to open $$n = \lceil c N \rceil$$ boxes, where $$\frac{1}{2} \le c \le 1$$.

In the strategy given, a given prisoner succeeds if they are part of a cycle of at most $$n$$ in the permutation of names.
For all prisoners to succeed there must be no cycles of size greater than
$$n$$. We can also see that if there is a cycle of size greater than $$n$$, then it is the
only such cycle because $$\frac{1}{2} \le \frac{n}{N} \le 1$$.

We first find the probability, $$P_L(k)$$, that there is some cycle of length $$k$$
for some $$k > n$$:

* A cycle of length $$k$$ occurs on $$k$$ of the $$N$$ elements, so there are
  $$ {N \choose k} = \frac{N!}{k!(N-k)!}$$ possibilities for this.
* Within a cycle there are $$(k-1)!$$ ways to arrange the elements.
* Outside the cycle there are $$N-k$$ elements that can be arranged in
  $$(N-k)!$$ ways.
* In total there are $$N!$$ arrangements.

Thus we have:

$$
\begin{aligned}
P_L(k) & = \frac{\frac{N!}{k!(N-k)!} (k-1)! (N-k)!}{N!} \\
& = \frac{(k-1)!}{k!} \\
& = \frac{1}{k}
\end{aligned}
$$

Therefore the probability, $$P$$, that the strategy succeeds is:

$$
\begin{aligned}
P & = 1 - \sum_{k=n+1}^N P_L(k) \notag \\
& = 1 - \sum_{k=n+1}^N \frac{1}{k} \\
& = 1 - H_N + H_n \notag \\
  & \text{where }
    H_i = \sum_{k=1}^i \frac{1}{k} \text{ is the nth Harmonic number}
    \notag
\end{aligned}
$$

For $$N = 100$$ and $$n = 50$$ we get $$P \approx 0.3118$$.

### Large $$N$$

Let $$P(N)$$ be the probability that our strategy succeeds with $$N$$ prisoners,
where each prisoner is allowed to choose $$n = \lceil c N \rceil$$ boxes, where
$$\frac{1}{2} \le c \le 1$$.

We have from the equation above that:

$$ P(N) = 1 - \sum_{k=n+1}^N \frac{1}{k} $$

As $$N \rightarrow \infty$$ we have:

$$
\begin{aligned}
\lim_{N \rightarrow \infty} P(N) & =
  1 - \int_{n}^N \frac{1}{k} dp \\
& = 1 - \left[ \log k \right]_{n}^N \\
& = 1 - \log N - \log n \\
& = 1 - \log \frac{N}{n} \\
& = 1 + \log c
\end{aligned}
$$

For $$c = \frac{1}{2}$$ we have $$P \approx 0.3069 $$.

### All values of $$0 \le c \le 1$$

If we generalise the problem, we require more than a unique cycle
$$n = \lceil c N \rceil$$ for our solution to fail.

Let us find the probability $$P_l(k)$$, that a given box is part of a cycle of
length $$k$$. We see that:

* A cycle of length $$k$$ occurs on $$k$$ of the $$N$$ elements. One
  element is chosen for us so, there are $$ {N - 1 \choose k - 1} =
  \frac{(N-1)!}{(k-1)!(N-k)!}$$ possibilities for this.
* Within a cycle there are $$(k-1)!$$ ways to arrange the elements.
* Outside the cycle there are $$N-k$$ elements that can be arranged in
  $$(N-k)!$$ ways.
* In total there are $$N!$$ arrangements.

Thus we have:

$$
\begin{aligned}
P_l(k) & = \frac{\frac{(N-1)!}{(k-1)!(N-k)!} (k-1)! (N-k)!}{N!} \\
& = \frac{(N-1)!}{N!} \\
& = \frac{1}{N}
\end{aligned}
$$

Let $$P_l = \frac{1}{N}$$. We require that the probability of there being no
cycles of length $$ k > n$$.

Let the probability $$P_L(k, N)$$ be
the probability that the longest cycle is of length $$k$$ in a problem of size
$$N$$.

We start by looking at the first element. It has a $$P_l$$ chance of being in
a loop of length $$1$$, in which case the probability the longest cycle is be of
length $$k$$ will be $$P_L(k, N-1)$$.

Likewise it has a $$P_l$$ chance of being in a loop of length 2, in which case the
probability the longest cycle is be of length $$k$$ will be $$P_L(k, N-2)$$.

In general it has a $$P_l$$ chance of being in a loop of length $$i$$, in which case
the probability the longest cycle is be of length $$k$$ will be $$P_L(k, N-i)$$, for
$$i \le k$$ or 0 for $$i > k$$. Thus we have:

$$ P_L(k, N) = \sum_{i=1}^k \frac{1}{N} P_L(k, N-i) $$

Let $$P(N)$$ be the probability that the longest cycle in a problem of size $$N$$ is
$$n$$:

$$ P(N) = \frac{1}{N} \sum_{i=1}^{n} P(N-i) $$

{% endsolution %}
