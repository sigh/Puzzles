---
title: 3-way shootout
layout: default
---

You are in a shootout with two others. Unfortunately you are not a very good shot,
only hitting what you are aiming for one-third of the time. The one of the
others hits two-thirds of the time, and the last always hits.

To be fair, everyone agrees to fire in order with the worst shot (you) going
first. You keep going around in the circle until only one is left standing.

What is your best strategy? Assume everyone is trying to maximise their chance
at being the lone survivor, and none of you will ever give up.

<details><summary></summary>

Your best strategy is to shoot into the air the first round, then keep firing at
the survivor in subsequent rounds.

### Proof

Let's call you person \#1, \#2 the next best shot, and \#3 the person who always
hits.

First note that if anyone other than \#3 shoots, they must shoot \#3. If they
shoot the other person and kill them, then they will be in a duel with \#3 with
\#3 going first. \#3 wins this duel since \#3 never misses.

Therefore it is in \#3's best interest to turn it into a duel as soon as
possible, otherwise the other two are just shooting at \#3. Thus if \#3 survives
to their turn then they must shoot. \#3 would rather be in a shoot-out with the
weaker shooter, hence they would shoot and kill \#2.

Thus when it is \#2's turn they must shoot at \#3 and hit to survive at all. From
this we can tell that by the end of the first round, either \#2 or \#3 will have
been shot.

Finally we look at \#1. We've already established that if \#1 shoots anyone,
it must be \#3. If \#1 shoots and kills \#3 then \#1 will be in a duel
with \#2, with \#2 going first. If \#1 misses then they will be in a duel with the
survivor of \#2 and \#3, with \#1 going first.

The probability that \#1 wins if they shoot and kill \#3 is:

$$
\begin{align}
P(\text{#1 wins } \mid \text{ #1 hits #3}) & =
  P(\text{#1 wins } \mid \text{ #2 shoots first}) \\
& = P(\text{#2 misses})
    P(\text{#1 hits}) \\
& \qquad + P(\text{#1 misses}) P(\text{#1 wins } \mid \text{ #2 shoots first}) \\
P(\text{#1 wins } \mid \text{ #2 shoots first}) & =
  \frac{1}{3}
  \left(
    \frac{1}{3} +
    \frac{2}{3} P(\text{#1 wins } \mid \text{ #2 shoots first})
  \right) \\
P(\text{#1 wins } \mid \text{ #2 shoots first}) & = \frac{1}{7}
\end{align}
$$

The probability that \#1 wins if they shoot and miss \#3 is:

$$
\begin{align}
P(\text{#1 wins } \mid \text{ #1 misses #3}) & =
  P(\text{#1 wins } \mid \text{ #2 hits #3}) +
  P(\text{#1 wins } \mid \text{ #2 misses #3}) \\
& = \frac{2}{3} P(\text{#1 wins against #2 } \mid \text{ #1 shoots first}) \\
& \qquad + \frac{1}{3} P(\text{#1 wins against #3 } \mid \text{ #1 shoots first}) \\
& =
  \frac{2}{3} \left(
    P(\text{#1 hits #2}) +
    P(\text{#1 misses #2}) P(\text{#1 wins } \mid \text{ #2 shoots first})
  \right) \\
& \qquad + \frac{1}{3} P(\text{#1 hits #3}) \\
& =
  \frac{2}{3} \left(
    \frac{1}{3} +
    \frac{2}{3} \frac{1}{7}
  \right) + \frac{1}{3} \frac{1}{3} \\
& = \frac{2}{7} + \frac{1}{9} \\
& = \frac{25}{63}
\end{align}
$$

Thus \#1 has a higher chance of winning if they miss their shot!

Therefore you should intentionally miss the first shot by shooting into the air.
After the first round, you will be in a duel with one of the other two people.
You will win about 40% of the time.

</details>

## General case for 3 people

<details><summary></summary>

Number the people \#1, \#2 and \#3 such that the probability that
a person hits their target is $$x_p$$, with $$x_1 < x_2 < x_3$$.
Also, define $$ \bar{x}_i = 1 - x_i$$.

Define the probability $$P_{p_1, p_2, p_3}(p)$$ that person $$p$$ wins when the
shooting order is $$p_1, p_2, p_3$$ in the 3 person case.

Similarly, define $$P_{p_1, p_2}(p)$$ for the 2 person case. For convenience
let $$P_{p_1, p_2}(p) = 0 $$ if $$ p \notin {p_1, p_2}$$.

### 2 person case

We will do the 2 person case first, since the 3 person case reduces to this
once a person is hit.

Each person can shoot at the other, or
intentionally miss. Clearly, intentionally missing is bad because their opponent
is always going to shoot at them: if their opponent hits they die; if their
opponent misses they are back to where they started, but have given the opponent
a free shot. Because the shooters must shoot, we can say for either
person \#$$i$$:

$$
\begin{align}
P_{i,j}(i) & = x_i + \bar{x}_i P_{j,i}(i) \\
P_{j,i}(i) & = \bar{x}_j P_{i,j}(i)
\end{align}
$$

Combining these equations we get:

$$
\begin{align}
P_{i,j}(i) & = x_i + \bar{x}_i \bar{x}_j P_{i,j}(i) \\
& = \frac{x_i}{1 - \bar{x}_i \bar{x}_j}
\end{align}
$$

The probability that the other person \#$$j$$ wins when \#$$i$$ shoots first is
just the complement:

$$ P_{i,j}(j) = 1 - P_{i,j}(i) $$

Simplifying:

$$
\begin{align}
P_{i,j}(j) & = 1 - \frac{x_i}{1 - \bar{x}_i \bar{x}_j}
= \frac{1 - \bar{x}_i \bar{x}_j - x_i}{1 - \bar{x}_i \bar{x}_j}
= \frac{\bar{x}_i - \bar{x}_i \bar{x}_j}{1 - \bar{x}_i \bar{x}_j} \\
& = \frac{\bar{x}_i x_j}{1 - \bar{x}_i \bar{x}_j}
\end{align}
$$

Note that it is always better to start shooting first.

### 3 person case - Who shoots

Each person has three options, shoot either
of the remaining people, or intentionally miss (shoot the air).

If person \#$$i$$ does shoot at a person then they are hoping to hit
(otherwise they would shoot the air).
If it hits then person \#$$i$$ will be in a duel with the survivor, where
\#$$i$$ goes second. Thus they shoot \#$$j$$ instead of \#$$k$$ if:

$$
\begin{align}
P_{k,i}(i) & > P_{j,i}(i) \\
\frac{\bar{x}_k x_i}{1 - \bar{x}_k \bar{x}_i}
  & > \frac{\bar{x}_j x_i}{1 - \bar{x}_j \bar{x}_i} \\
x_i (\bar{x}_k - \bar{x}_k \bar{x}_j \bar{x}_i)
  & > x_i (\bar{x}_j - \bar{x}_j \bar{x}_k \bar{x}_i) \\
\bar{x}_k & > \bar{x}_j \\
x_k & < x_j
\end{align}
$$

Hence, we have:

**Lemma 1:** If anyone shoots at another person, they will always shoot at
the person with the higher accuracy.

If everyone shoots in the air then no one dies and the dispute is never
resolved, in which case the probability of being the lone survivor for any
of the people is 0. Thus at least one person shoots. Even in the case where
shooting leads to certain death, this is the same as not resolving the dispute
and hence we can assume either.

If one person is shooting then the other two can't both be intentionally
missing. In this case it is always better for the person that the shooter is
shooting at to shoot back (assuming they haven't been shot yet). Therefore we
have:

**Lemma 2:** At least two people are shooting in any round where everyone
survives.

\#3 must either shoot \#2 by **Lemma 1** or shoot in the air.

* If \#3 is shoots in the air then by **Lemma 2** both \#1 and \#2 are shooting,
  and by **Lemma 1** they are both shooting at \#3. If they both miss, \#3 is
  back to where they started and \#3 shoots in the air again. The other two
  would continue shooting at \#3 until they hit, giving \#3 no chance of winning.
* If \#3 shoots at \#2 then \#3's chance of winning in this case is
  $$ x_3 P_{1,3}(3) + \bar{x}_3 P_{1,2,3}(3) > 0 $$.

Thus \#3 shoots at \#2.

\#2 must either shoot \#3 by **Lemma 1** or shoot in the air.

* If \#2 shoots \#3,
  they are hoping for a duel with \#1. Since \#1 would start the duel, the
  probability that \#2 would win is $$P_{1,2}(2)$$.
* If \#2 shoots in the air, then \#2's *best case* scenario is that \#3 will
  miss their shoot at \#2 then \#1 will hit #3. This results in a duel with \#1
  where \#2 shoots first. Even allowing that \#1 definitely hits, then the
  probability that \#2 wins is $$\bar{x}_3 P_{2,1}(2)$$.

\#2 shoots at \#3 if \#2 would prefer hitting to missing:

$$
\begin{align}
P_{1,2}(2) & > \bar{x}_3 P_{2,1}(2) \\
\bar{x}_1 P_{2,1}(2) & > \bar{x}_3 P_{2,1}(2) \\
\bar{x}_1 & > \bar{x}_3 \\
x_1 & < x_3
\end{align}
$$

This is always true so \#2 will shoot at \#3.

\#1 will either shoot \#3 by **Lemma 1** or shoot in the air.

* If \#1 shoots \#3 they are hoping for a duel against \#2 where \#1
  goes second. In this case \#1 has a probability of winning of:

  $$P_{2,1}(1) = \frac{\bar{x}_2 x_1}{1 - \bar{x}_2 \bar{x}_1} $$

* If \#1 shoots the air, then the other two will shoot at each other. This
  will continue until either \#2 or \#3 is shot. In both cases \#1
  duels with the survivor, and gets to shoot first. The probability that \#1
  wins in this case is:

  $$
  \begin{align}
  P_{1 \text{air}}
    & = x_2 P_{1,2}(1) + \bar{x}_2 (x_3 P_{1,3}(1) + \bar{x}_3 P_{1 \text{air}}) \\
  & = x_2 P_{1,2}(1) + \bar{x}_2 x_3 P_{1,3}(1) + \bar{x}_2 \bar{x}_3 P_{1 \text{air}} \\
  & = \frac{x_2 P_{1,2}(1) + \bar{x}_2 x_3 P_{1,3}(1)}{1 - \bar{x}_2 \bar{x}_3} \\
  & = \frac{x_1}{1 - \bar{x}_2 \bar{x}_3}
    \left(
      \frac{x_2}{1 - \bar{x}_1 \bar{x}_2} +
      \frac{\bar{x}_2 x_3}{1 - \bar{x}_1 \bar{x}_3}
    \right)
  \end{align}
  $$

\#1 will shoot at \#3 if and only if \#1 would prefer hitting to missing:

$$
\begin{align}

\frac{\bar{x}_2 x_1}{1 - \bar{x}_2 \bar{x}_1} & >
  \frac{x_1}{1 - \bar{x}_2 \bar{x}_3}
    \left(
      \frac{x_2}{1 - \bar{x}_1 \bar{x}_2} +
      \frac{\bar{x}_2 x_3}{1 - \bar{x}_1 \bar{x}_3}
    \right) \\

\bar{x}_2 (1 - \bar{x}_2 \bar{x}_3) (1- \bar{x}_1 \bar{x}_3) & >
  x_2 (1 - \bar{x}_1 \bar{x}_3) + \bar{x}_2 x_3  (1 - \bar{x}_1 \bar{x}_2)

\end{align}
$$

Thus \#1 will shoot at \#3 when:

$$
C > 0 \text{ where }
  C = \bar{x}_2 (1 - \bar{x}_1 \bar{x}_3) (1 - \bar{x}_2 \bar{x}_3) -
  x_2 (1 - \bar{x}_1 \bar{x}_3) -
  \bar{x}_2 x_3 (1 - \bar{x}_1 \bar{x}_2)
$$

### 3 person case - Probabilities

Let $$x'_1$$ be the probability that \#1 hits when there are 3 players.
This is the same as $$x_1$$ when \#1 aims, but is $$0$$ when \#1
intentionally misses.

Then the probability that person \#n wins is:

$$
P_{1,2,3}(n) =
  x'_1 P_{2,1}(n) +
  \bar{x}'_1 (x_2 P_{1,2}(n) +
              \bar{x}_2 (x_3 P_{1,3}(n) + \bar{x}_3 P_{1,2,3}(n)))
$$

Which resolves to:

$$
P_{1,2,3}(n) =
  \frac{x'_{1} P_{2,1}(n) + \bar{x}'_1 x_2 P_{1,2}(n) + \bar{x}'_1 \bar{x}_2 \bar{x}_3 P_{1,3}(n)}
  {1 - \bar{x}'_1 \bar{x}_2 \bar{x}_3}
$$

$$
x'_1 =
  \begin{cases}
    x_1 & \text{ if } C > 0 \\
    0   & \text{ if } C \le 0
  \end{cases}
  \text{ where }
  C = \bar{x}_2 (1 - \bar{x}_1 \bar{x}_3) (1 - \bar{x}_2 \bar{x}_3) -
  x_2 (1 - \bar{x}_1 \bar{x}_3) -
  \bar{x}_2 x_3 (1 - \bar{x}_1 \bar{x}_2)
$$

### Original problem

For this problem we have:

$$
(x_1, x_2, x_3) = \left(\frac{1}{3}, \frac{2}{3}, 1\right)
$$

From this we get $$C \approx -0.6 < 0$$, hence \#1 simply shoots the
air. The probability \#1 wins (which is true for any values where
$$C < 0$$) is given by:

$$
P_{1,2,3}(1) =
  \frac{x_1}{1 - \bar{x}_2 \bar{x}_3}
    \left(
      \frac{x_2}{1 - \bar{x}_1 \bar{x}_2} +
      \frac{x_3 \bar{x}_2}{1 - \bar{x}_1 \bar{x}_3}
    \right)
$$

Solving this with our values, we agree with our previous result:

$$
P_{1,2,3}(1) = \frac{25}{63}
$$

</details>
