---
title: Prisoners' chessboard
layout: default
---

Two prisoners are offered a chance to go free.
One of the prisoners will be presented with a standard chessboard with 64
squares, but on each square is a coin. The coins are randomly facing heads and
tails.

The guard chooses a square on the board, which we'll call the Magic Square, and
tells it to the first prisoner. The prisoner is then allowed to flip exactly
one coin (from heads to tails or vice versa).

Then the second prisoner is shown the chessboard. To secure their freedom, the
second prisoner must identify the location of the Magic Square, just by looking
at the coins.

The prisoners may discuss any strategy beforehand. Can the prisoners
go free?

{% solution %}

This can be solved for any board with $$2^k$$ squares. For a chessboard $$k = 6$$.

Index the squares $$0, 1, \ldots, 2^k - 1$$ and let:

$$
\begin{align}
S_i = &
  \begin{cases}
    0 \text{ if square } i \text{ is tails before the flip} \\
    1 \text{ if square } i \text{ is heads before the flip}
   \end{cases} \\
S_i^\prime = &
  \begin{cases}
    0 \text{ if square } i \text{ is tails after the flip} \\
    1 \text{ if square } i \text{ is heads after the flip}
   \end{cases} \\
\end{align}
$$

Determine the xor sum of the squares whose coins show heads:

$$ a = \bigoplus \left( i S_i \right) $$

Let the index of the Magic Square be $$m$$. Flip the coin of the square
$$m \oplus a$$. The magic square can be determined as the
xor sum of all the squares which show heads:

$$ m = \bigoplus \left( i S_i^\prime \right) $$

### Proof

Let the index of the square flipped be $$r$$:

$$
r = m \oplus \bigoplus \left( i S_i \right)
$$

Given this, $$S_i$$ can be defined as:

$$
S_i^\prime =
  \begin{cases}
    S_i & \text{ if } i \ne r \\
    0 & \text{ if } i = r \wedge S_r = 1 \\
    1 & \text{ if } i = r \wedge S_r = 0 \\
  \end{cases}
$$

The using the properties of xor:

$$
\begin{align}
m = & r \oplus \bigoplus \left( i S_i \right) \\
= & r \oplus r S_r \oplus \bigoplus_{i \ne r} \left( i S_i \right) \\
= & r S_r^\prime \oplus \bigoplus_{i \ne r} \left( i S_i^\prime \right) \\
= & \bigoplus \left( i S_i^\prime \right)
\end{align}
$$

This is the same as the equation to determine the square,
thus we correctly find the magic square.

### Alternative proof

Let $$n$$ be the number of squares and define $$k$$ such that $$n = 2^k$$. We will
create $$k$$ sets $$C_i \mid 0 < i \le k$$ where:

$$
C_i =
  \left\{
    j \mid
    \text{ the } i \text{th bit in } j \text{ is set } \wedge 0 \le j < n
  \right\}
$$

We can see by construction that each square is in a unique subset of sets $$C_i$$,
and thus can be identified by which sets it is a member of. This can be seen by
the fact that the set membership can be read off the binary representation of
the square's index.

Define the parity of $$C_i$$ as the parity of the the number of heads in $$C_i$$.
Then the initial calculation
($$ a = \bigoplus \left( i S_i \right) $$)
calculates the parity of $$C_i$$ as the $$i$$th bit of the result $$a$$.

We wish to change the parity of the sets $$C_i$$ so that they reflect the parity
of the bits in $$m$$. That is we want to flip a coin that is in all sets
$$\left\{ C_i
  \mid \text{ parity } C_i \ne i \text{th bit of } m \right\}$$. This
  is exactly what $$m \oplus a$$ calculates.

Now the bits of $$m$$ can be read off as the parity of the
sets $$C_i$$.

### Boards with $$n \ne 2^k$$ squares

If $$n$$ is not a power of 2 then there is no possible solution. Note that there
are $$2^n$$ possible board states and we want to transmit one of $$n$$ value. Each
board state has $$n$$ adjacent states it can transition to with the flip of a coin
(one for each coin we can flip).

For any mapping there must exist a value which maps to at most
$$\left\lfloor \frac{2^n}{n} \right\rfloor$$ states by the pigeon-hole principle.
This value can be adjacent to at most
$$n \left\lfloor \frac{2^n}{n} \right\rfloor$$ states.

$$n \left\lfloor \frac{2^n}{n} \right\rfloor < 2^n$$ unless $$n | 2^n$$.
$$n | 2^n$$ is only true when $$n$$ is a power of 2. Thus if $$n \ne 2^k$$ a
solution is not possible because in any given strategy there will be some
values which can't be reached from all states.

{% endsolution %}
