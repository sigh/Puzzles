---
title: Greedy pirates
layout: default
---

A group of pirates have found a treasure chest containing gold coins. They are
trying to divide up the treasure in the following way:

* The eldest pirate suggests a split
* All pirates vote on the split, including the eldest
* If at least half the pirates agree with the split, then it stands
* If a majority of the pirate disagree the eldest pirate is fed to the
  sharks, and the process continues with the second eldest pirate

Assume the pirates are perfectly logical and are trying to get as much gold as
possible. They value their own lives more than any amount of gold. However, all
else being equal, they would rather see more pirates dead.

## 100 pirates, 1000 coins

If there are 100 pirates in the group, and the treasure chest contains 1000
coins, how much gold does the eldest pirate end up with?

<details><summary></summary>

The eldest pirate ends up with 951 gold coins.

### Proof

Number the pirates in order of age, so the eldest is \#1000 and the youngest is
\#1.

Let $$P_N$$ be the strategy for dividing up the $$C$$ coins among $$N$$ pirates. Let
$$P_N(n)$$ be the amount that pirate $$n$$ gets when there are $$N$$ pirates and
pirate $$N$$ proposes the optimal plan:

$$ P_N = \{ n_1, n_2, \ldots, n_N \} $$

We will prove via induction that the optimal strategy, $$P_N$$, is:

$$
\begin{align}
P_N(n) & =
  \begin{cases}
    1 & \text{ if } n \equiv N \pmod 2 \wedge n < N \\
    0 & \text{ if } n \not\equiv N \pmod 2 \wedge n < N \\
    R &  \text{ if } n = N
  \end{cases} \\
P_N & = \left\{ \ldots, 1, 0, 1, 0, R \right\} \notag \\
& \text{ where } R = C - \left\lfloor \frac{N-1}{2} \right\rfloor \notag
\end{align}
$$

Note that we require that $$R \ge 0$$. Thus this strategy is only valid for
$$N \le 2 (C + 1) $$.

We see that for $$P_N$$:

* There is one pirate with $$R$$ coins
* There are $$\left\lfloor \frac{N-1}{2} \right\rfloor$$ pirates with 1 coin
* There are $$\left\lfloor \frac{N}{2} \right\rfloor$$ pirates with 0 coins

Consider the case where there is only one pirate left, \#1. Then he gets all $$C$$
gold:

$$
P_1 = \{ C \}
$$

We see that $$P_1$$ is consistent with $$P_N$$.
In addition, we can write $$P_{N+1}$$ as:

$$
P_{N+1}(n) =
\begin{cases}
    0 & \text{ if } n \equiv N \pmod 2 \wedge n < N+1 \\
    1 & \text{ if } n \not\equiv N \pmod 2 \wedge n < N+1 \\
    R &  \text{ if } n = N+1
\end{cases}
$$

Now we know that if $$P_N$$ is the optimal strategy, then $$P_{N+1}$$ is
strictly better than $$P_N$$ for at least half the pirates:

$$
P_{N+1} \rightarrow P_{N+1}(n) > P_N(n)
  \text{ for at least } \left\lceil \frac{N+1}{2} \right\rceil \text{ pirates}
$$

And we cannot reduce the number of coins $$R$$ that pirate \#$$(N+1)$$ gets
without falsifying this equation.

Comparing $$P_N$$ with $$P_{N+1}$$ we see that:

* The $$ \left\lfloor \frac{N}{2} \right\rfloor $$ pirates who got 0 coins
        in $$P_N$$ get 1 coin in $$P_{N+1}$$
* Pirate \#$$(N+1)$$ who is dead in $$P_N$$ gets $$R$$ coins in $$P_{N+1}$$
* The other pirates all get 0 coins

Thus $$ \left\lfloor \frac{N}{2} \right\rfloor + 1 $$ are better off under
$$P_{N+1}$$ than $$P_N$$. We require $$ \left\lceil \frac{N+1}{2} \right\rceil $$
votes for $$P_{N+1}$$ to be valid:

$$
\begin{align}
\left\lfloor \frac{N}{2} \right\rfloor + 1
  = \frac{N}{2}+ 1
  = \left\lceil \frac{N}{2} + \frac{1}{2} \right\rceil
  =  \left\lceil \frac{N+1}{2} \right\rceil & \text{ for even } N \\
\left\lfloor \frac{N}{2} \right\rfloor + 1
  = \frac{N-1}{2} + 1
  = \frac{N+1}{2}
  = \left\lceil \frac{N+1}{2} \right\rceil & \text{ for odd } N
\end{align}
$$

Thus we have exactly the amount of votes required.
In addition, we used the minimum number of coins possible to secure those votes,
just 1 coin to each pirate from whom we can secure a vote.
Hence $$P_{N+1}$$ is optimal given $$P_N$$. We already have that $$P_1$$ is
optimal, therefore by induction the strategy $$P_N$$ is optimal for all
$$N \ge 1$$.

In the case where $$N = 100$$ and $$C= 1000$$, all even number pirates other
than the eldest (pirate \#100) gets 1 coin each. Thus 49 coins go to these
pirates. The odd numbered pirates get nothing. Finally, the eldest gets the rest
which is:

$$ 1000 - 49 = 951 $$ coins.

</details>

## 10 pirates, 1 coin

Now, let's have a smaller crew with only 10 pirates. However there is now only 1
gold coin. How does the eldest pirate save himself?

<details><summary></summary>

The eldest pirate gives the coin to 6th youngest pirate.

### Proof

Again, number the pirates in order of age, so the eldest is \#10 and the
youngest is \#1. We will look a each case from 2 to 10 pirates.

2 pirates: Pirate \#2 just keeps the gold coin.

3 pirates: Pirate \#3 will have to give away the gold coin, otherwise \#2 and
\#1 will both vote against him. There is no point giving it to \#2 who will get
the coin anyway if pirate \#3 dies. Hence he gives it to pirate \#1, securing
the vote from pirate \#1 and thus the majority.

4 pirates: Pirate \#4 can't give a coin to pirate \#1 since he will get a coin
anyway if pirate \#4 dies. But he can give a coin to either pirate \#2 or pirate
\#3 and secure the majority of votes.

5 pirates: Pirate \#5 can only get a maximum of 2 votes, his own, and the pirate
he gives the coin to. That leaves 3 pirates who get 0 coins and thus have no
incentive to vote for him. Thus pirate \#5 dies, no matter what he does.

6 pirates: Pirates \#6 can be guaranteed the vote of pirate \#5, because pirate
\#5 will die otherwise. He needs one more vote. He can give a coin to either
pirate \#4 or pirate \#1 who both receive nothing under the 4 pirate case.

7, 8 or 9 pirates: The eldest pirates in these cases have no way of getting
enough votes.

10 pirates: Pirate \#10 can get a votes each from \#7, \#8 and \#9 who will all
die otherwise. He can give a coin to \#6 who would get nothing in the 6 pirate
case. Along with his vote, he can get 5 votes, which is enough to survive.

</details>

## General case

<details><summary></summary>

Let the number of pirates be $$N$$, and the number of coins be $$C$$.

### $$N \le 2 (C + 1) $$

The strategy in the 100 pirate, 1000 coin case above works for any
$$N \le 2 (C + 1) $$.

### $$N > 2C$$

We know that for $$N \le 2 C $$, the eldest pirate gets at least 1 gold coin.
Let us call the smallest case where the eldest pirate has to give up all coins
just to survive $$N_0 = 2 C + 1$$.

We have for $$N_0$$ that there are $$C$$ pirate who get coins, and $$C+1$$ pirates
who do not get coins. We also know that the $$C$$ pirates who get coin in $$N_0$$
don't get any in the case $$N_0 - 1$$. In addition, the $$C+1$$ pirates who don't
get any coins in $$N_0$$ are either dead or get one coin in $$N_0 - 1$$. Thus we
cannot change the arrangement of who gets given coins.

Also note that for any plan $$P_N$$, if the eldest pirate dies then plan $$P_N$$
is equivalent to plan $$P_{N-1}$$.

Let us set up the stricter condition that a pirate $$n$$ will vote against
a plan $$P_N$$ if there is a chance that he gets at least that much gold under
$$P_{N-1}$$. Call this assumption $$A$$.

Let us prove via induction that:

**Hypothesis**: When there are $$N$$ pirates, the eldest pirate has a strategy
($$P_N$$) for survival if there are at least $$C$$ pirates who have no chance of
receiving any gold. In addition there are at least $$C$$ candidates that may
receive the gold piece each.

Let us assume assume that the **Hypothesis** is true for some $$N$$, where the
eldest pirate has a strategy such that he can survive. Now consider the case
$$N' > N$$ to be the next case where the eldest pirate has a strategy for
survival. The eldest pirate will not gain any votes by offering a gold coin to
the $$C$$ pirates who received one in the $$P_N$$, thus those $$C$$ pirates will
have no chance of getting any gold under $$P_{N'}$$.

The eldest pirate can gain $$C$$ votes by offering a gold coin each to the $$C$$
pirates who had no chance of receiving anything in $$P_N$$.

Thus we have that the **Hypothesis** is true for $$N$$, it is also true
for $$N' > N$$ being the next case where the eldest pirate has a strategy
for survival. We can also saw that the **Hypothesis** is true for $$N_0$$, thus
the **Hypothesis** is true for all $$N \ge N_0$$ where the eldest pirate has a
strategy for survival.

Note that if we neglect assumption $$A$$, then as soon as there are more than $$C$$
possible pirates for the eldest pirate to give a coin to in $$P_N$$ there is
ambiguity in who will recieve the coins.
If none of the pirates know for sure if they are getting a coin or not they would
be better of with a coin in $$P_{N + 1}$$. In this case, as soon as there is any
doubt as to who will get the coins, the eldest pirate can give one coin to any
other $$C$$ pirates and secure $$C$$ votes.

And thus we have that in either of these cases the eldest pirate can find $$C$$
pirates who will be better of with one gold coin. In addition he will always
vote for his own plan, giving:

**Theorem 1**: In a case $$N \le N_0$$ where the eldest pirate has a strategy
for survival, the eldest pirate can secure $$C+1$$ votes.

The eldest pirate needs $$\left\lceil \frac{N}{2} \right\rceil$$ votes to win. The
only way he can secure votes of other pirates who get 0 coins are if they are
guaranteed to die. Thus the preceding plan for those pirates must have failed,
giving:

**Theorem 2**: For $$N \ge N_0$$, then the eldest pirates survives if and only
if the next eldest $$\left\lceil \frac{N}{2} \right\rceil - C - 1$$ pirates will
all fail to come up with a successful strategy.

Now let the function $$S(n) = N$$ be the $$n$$th pirate who survives for all $$N
\ge N_0$$, where $$S(0) = N_0$$. Hence we want the smallest $$S(n)$$ satisfying:

$$
\begin{align}
S(n) - (S(n-1)  + 1) &
  \ge \left\lceil \frac{S(n)}{2} \right\rceil - C - 1 \\
2 S(n) - 2 \left\lceil \frac{S(n)}{2} \right\rceil &
  \ge 2 S(n-1) - 2 C
\end{align}
$$

Thus we have:

$$
S(n) \ge
\begin{cases}
    2 S(n-1) - 2 C & \text{ with } S(n) \text{ even} \\
    2 S(n-1) - 2C + 1 & \text{ with } S(n) \text{ odd}
\end{cases}
$$

From this we can see that $$S(n)|_{even} > S(n)|_{odd}$$ for any $$S(n-1)$$ where
$$n \ge 1$$. We want the smallest $$S(n)$$, hence $$S(n)$$ is always even for
$$n \ge 1$$:

$$
S(n) = 2 S(n-1) - 2 C
$$

Solving for $$S(n)$$ with $$S(0) = N_0 = 2C + 1$$ gives us:

$$
\begin{align}
S(n) & = 2^n S(0) - C (2^{n+1} - 2) \\
S(n) &= 2^n + 2C
\end{align}
$$

Giving us the set of all $$N$$ such that the eldest pirate survives in the case
of $$N \ge N_0$$ pirate:

$$
N= \{2^n + 2C \mid n \in \mathbb{Z}^+ \}
$$

### All $$N, C$$

Combining all of the above, we have that the set of all cases where there is a
surviving eldest pirate is given by:

$$
N_s = \{ 1 \le N \le 2C \} \cup \{N = 2^n + 2C \mid n \in \mathbb{Z}^+ \}
$$

For any $$N \in N_s$$ the eldest pirate can live by offering $$P_N(n)$$ coins to
each pirate $$n$$, where:

$$
P_{N}(n) =
\begin{cases}
    1 & \text{ if } (n = N \mod 2) \wedge n < \min(N, 2 C + 1) \\
    0 & \text{ if } (n \ne N \mod 2) \vee 2 C < n < N \\
    \max\left(C - \left\lfloor \frac{N-1}{2} \right\rfloor,0\right) &
      \text{ if } n = N
\end{cases}
$$

This strategy is not unique for $$N > 2C + 1$$.

</details>
