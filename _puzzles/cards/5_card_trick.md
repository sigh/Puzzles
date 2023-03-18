---
title: Five-card trick
layout: default
---

A magician and their assistant perform a trick with a shuffled deck of
cards. The assistant asks a member of the audience to draw 5 cards at random
from the deck while the magician is blindfolded. The audience member hands the
5 cards to the assistant who examines the cards, hands one of them back to the
audience member, arranges the remaining four cards and places them face down
into a neatly stacked pile on a table.

The audience member is then allowed to move the pile on the table or change its
orientation without disturbing the order of the cards in the pile. This is
to ensure that the assistant can't control the position of the pile.

The magician now removes their blindfold, examines the four cards on the table
and determines the card held by the audience member from inspecting the four
card pile.

## Playing cards

How was this trick performed if the magician used an ordinary 52-card deck?

<details><summary></summary>

Out of the 5 drawn cards, the assistant chooses 2 cards which have the same suit.

Represent the value of the cards as their face value, with Ace=1, Jack=11,
Queen=12, King=13.

Call the difference between the values of the two cards $$d$$. Out of the two
chosen cards, if the $$d > 6$$ then select the highest value card; otherwise
select the lowest value card.

Pass the selected card back to the audience. Put the other card down on the
table - this will form the bottom of the pile for the magician.

Use the 3 remaining cards to encode a value, $$p$$. If $$d \le 6$$ then set $$p = d$$,
otherwise set $$p = 13 - d$$. Place the 3 cards on the pile.

The magician can now look at the pile. From the bottom card in the pile the
magician knows the suit of the selected card.

Let the value of the bottom card be $$v$$. From looking at the order of the 3 top
cards the magician can determine $$p$$. If $$p + v < 13$$ then the value of the
selected card is $$p + v$$ otherwise it is $$p + v - 13$$.

### Proof

It will always be the case there there are 2 cards of the same suit in the 5
drawn cards because there are only 4 suits (by the pigeon-hole principle).

Call the values of the 2 cards with the same suit $$v_1$$ and $$v_2$$ such that
$$v_1 < v_2$$. It is the case that either $$v_1 + p = v_2$$ or $$v_2 + p \equiv v_1
\pmod{13}$$ for some $$0 < p \le 6$$.

If it was the case that $$v_1 + p = v_2 \text{ s.t. } 6 < p < 13$$ then we could
write it equivalently as $$ v_1 + 13 - p \equiv v_2 \pmod{13} \text{ s.t. } 0 < 13 - p \le 6$$.

Let $$d = v_2 - v_1$$ (i.e. the difference between the values). If $$d \le 6$$ then
$$p = d$$, otherwise $$p = 13 - d$$ as in the description of the trick.

There are 6 possible values for $$p$$: 1, 2, 3, 4, 5 and 6. We can encode $$3! = 6$$
numbers by controlling the order of 3 cards. Thus we are able to encode $$p$$ with
the order of our three remaining cards.

</details>

## Extended case

What is the maximum number of distinct cards the magician could perform this
trick with?

<details><summary></summary>

The maximum size deck the trick can be performed with is 124.

In the general case the audience member draws $$n$$ cards, we select one, and use
the other $$n - 1$$ cards to tell the magician the selected card. Here the maximum
sized deck is $$n! + n - 1$$ cards.

### Algorithm

We will use the following definitions:

- Let the size of the deck be $$N = n! + n - 1$$.
- Let the cards in the deck be represented by numbers from $$0$$ to $$N - 1$$.
- Let $$c_i$$ be the values of the cards drawn by the audience member
        such that $$0 \le i < n \text{ and } c_i < c_{i+1}$$.
- Let $$c_i^\prime$$ be the values of the cards seen by the magician
        such that $$0 \le i < n - 1 \text{ and } c_i^\prime < c_{i+1}^\prime$$.
- Let $$s = \left(\sum c_i\right) \mod n$$.
- Let $$s^\prime = \left(\sum c_i^\prime\right) \mod n$$.
- Let $$p = \left\lfloor \frac{c_s - s}{n} \right\rfloor$$.

Choose $$c_s$$ as the selected card.

Encode $$p$$ as a permutation of the $$n - 1$$ remaining cards, and set them in an
pile.

The magician then looks at the pile and calculates $$p$$ from the permutation of
the cards in the pile and $$s^\prime$$ from the sum of the cards in the pile. From
that the magician calculates the value:

$$ \chi = p n + (-s^\prime \mod n) $$

The magician then can claim that $$c_s$$ is the $$\chi$$th card which is
not in the pile (not in $$c_i^\prime$$). Formally:

$$
c_s = \chi + k \text{ where } c_{k-1}^\prime
  < \chi + k < c_{k}^\prime \text{ and } 0
  \le k < n - 1
    \label{card_trick:c_s_calc}
$$

### Proof of correctness

We will split this proof into two parts. The first will prove that assistant
will be able to follow the instructions, and the second part will prove that the
magician can correctly guess the selected card.

#### Choosing $$c_s$$ and $$p$$

There are at least $$n - s$$ cards greater than or equal to $$c_s$$:
$$\{c_i \mid s \le i < n\}$$.

There are at least $$s$$ cards smaller than $$c_s$$: $$\{c_i \mid 0 \le i < s\}$$.

$$
\begin{align}
s \le & c_s \le N - (n - s) \\
s \le & c_s \le n! - 1 + s \\
0 \le & c_s - s \le n! - 1 \\
\left\lfloor \frac{0}{n} \right\rfloor \le &
  \left\lfloor \frac{c_s - s}{n} \right\rfloor \le
  \left\lfloor \frac{n! - 1}{n} \right\rfloor \\
0 \le &
  \left\lfloor \frac{c_s - s}{n} \right\rfloor <
  (n - 1)! \label{card_trick:bound}
\end{align}
$$

We can now see from the definition of $$p$$ that $$0 \le p < (n - 1)!$$ and
therefore $$p$$ can be encoded as a permutation of $$n - 1$$ cards. In addition,
$$s$$ is a number taken modulo $$n$$ thus $$0 \le s < n$$ and therefore it is always
possible to select a card $$c_s$$.

#### Determining $$c_s$$

Define $$q$$ and $$r$$ as follows:

$$
c_s - s = q n + r \text{ s.t. } 0 \le r < n
  \label{card_trick:chi1def}
$$

Using the definition of $$s$$ and $$s^\prime$$:

$$
\begin{align}
c_s + s^\prime \equiv & s \pmod n \notag \\
c_s - s \equiv & -s^\prime \pmod n \notag \\
q n + r \equiv & -s^\prime \pmod n \notag \\
r \equiv & -s^\prime \pmod n \notag \\
r = & -s^\prime \mod n \text{ because } 0 \le r < n
\end{align}
$$

Rearranging to solve for $$q$$ we find that:

$$
q = \frac{c_s - s - r}{n}
  = \left\lfloor \frac{c_s - s}{n} \right\rfloor
  = p
$$

Substituting our calculated values for $$q$$, $$r$$ and using the equation for
$$\chi$$:

$$
\begin{align}
c_s - s = & p n + (-s^\prime \mod n) = \chi \notag \\
c_s = & \chi + s
\end{align}
$$

Given this it is sufficient to show that $$k = s$$ is a
unique solution to the equation for $$c_s$$ used by the magician.

Let $$k = s + \Delta$$:

$$
\begin{align}
& c_{s+\Delta-1}^\prime < \chi + s + \Delta < c_{s+\Delta}^\prime \\
\implies & c_{s+\Delta-1}^\prime < c_s + \Delta < c_{s+\Delta}^\prime \\
\implies &

    c_{s-1} < c_s < c_{s+1} & \text{ if } \Delta = 0 \\
    c_{s+\Delta} < c_s + \Delta & \text{ if } \Delta > 0 \\
    c_s + \Delta < c_{s+\Delta} & \text{ if } \Delta < 0
   \\
& \text{ using } \notag \\
& c_i^\prime =

    c_i & \text{ where } i < s \\
    c_{i+1} & \text{ where } i \ge s
   \\
& c_{i+j} \ge c_i + j \text{ where } 0 \le i+j < n
\end{align}
$$

Only the $$\Delta = 0$$ case is true and therefore $$k = s$$ is the unique solution.
Thus the magician correctly calculates $$c_s$$.

### Proof of optimality

The maximum number of different messages we can send the magician is limited by
$$n!$$. We have two choices:

- The card to select of which there are $$n$$ options.
- The order of the remaining $$n - 1$$ cards of which there are $$(n - 1)!$$
        options (permutations).

This gives a total of $$n (n - 1)! = n!$$ options. In addition, the magician will
be able to see the $$n - 1$$ cards in the pile.

This results in a upper-bound for the card deck of $$N = n! + n - 1$$ cards.

</details>
