---
title: Birthday problem
layout: default
---

How big does a group of people need to be before there is at least a 50% chance
that two people share a birthday.

<details><summary></summary>

23 people.

### Proof

For simplicity, ignore leap years. This won't significantly affect the result.

Assume that all birthdays are equally likely. If birthdays are unequally
distributed, then it only makes it *more* likely that people share a birthday.

We will determine the probability that no one shares a birthday with anyone.
Adding people one at a time:

* The first person won't share a birthday (as they are the only person). i.e.
  they have a $$ 1 = \frac{365}{365} $$ chance of being unique.
* The second person only has to avoid the first person's birthday for a
  $$ \frac{364}{365} $$ chance of being unique.
* The $$n$$th person has to avoid $$365-(n-1)$$ days for a $$\frac{366-n}{365}$$
  chance of being unique.

Then the probability $$P'(n)$$ that no one shares a birthday is the product that
each individual has a unique birthday:

$$
P'(n)
= \frac{365 \times 364 \times ... \times (366-n)}{365^n}
= \frac{365!}{(365-n)! 365^n}
$$

The probability that there are two people who share a birthday $$P(n)$$ is the
complement:

$$ P(n) = 1 - \frac{365!}{(365-n)! 365^n} $$

23 is the smallest number for which $$P(n) > 0.5$$.

### Other values

By the pigeonhole principle, you need 366 people to be guaranteed
to be two people who share a birthday (367 to include leap years).

However chance climbs very quickly to be close to 1 with much smaller groups:

| n   | P(n) |
| --- | ---- |
| 1   | 0    |
| 10  | .117 |
| 23  | .507 |
| 50  | .970 |
| 70  | .999 |

</details>

## Birthday line

At a movie theater, the manager announces that they will give a free ticket to
the first person in line whose birthday is the same as someone who has already
bought a ticket. You  have the option of getting in line at any time.
What position in line gives you the greatest chance of being the first duplicate
birthday?

Assume that you don't know anyone else's birthday, and that birthdays are
distributed randomly throughout the year.

<details><summary></summary>

Position 20.

### Proof

Your probability of getting a free ticket when you are the nth person is line is
(probability that none of the first n-1 people share a birthday) $$\times$$
(probability that you share a birthday with one of the first n-1 people):

$$
P(n)
= \frac{365 \times 364 \times ... \times (365-(n-2))}{365^{n-1}} \frac{n-1}{365}
$$

We want the first $$n$$ such that $$P(n) > P(n+1)$$:

$$
\begin{align}
\frac{365 \times 364 \times ... \times (365-(n-2))}{365^{n-1}} \frac{n-1}{365}
& > \frac{365 \times 364 \times ... \times (365-(n-2)) \times (365-(n-1))}{365^n} \frac{n}{365} \\
365 (n-1) & > (365 - (n-1)) n \\
n^2 - n - 365 & > 0
\end{align}
$$

Solving for $$n$$ we find roots at $$n \approx -18.6 $$
and $$ n \approx 19.6 $$. The negative root is invalid for this problem.

Thus we need $$ n > 19.6 $$ giving a minimum of $$n = 20$$.

</details>
