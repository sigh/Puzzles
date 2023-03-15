---
title: Highest card
layout: default
---

I challenge you to a game. I will deal four cards (from a regular 52 card deck),
chosen randomly, face down. You get to look at \#1 first and decide whether to
keep it. If not, look at \#2 and decide whether to keep that one. If not look at
\#3, and decide. If you don't take that, then \#4 is your choice.

If the value of your chosen card is $$n$$, I will pay you \$$$n$$. I tell you that
each game costs $10 to play, and we can play as many games as you like.

Note: The value of Jack, Queen and King are 11, 12 and 13 respectively. The
value of the rest of the cards are their face value, with the Ace worth 1.

Can you come up with a strategy that will let you come out on top?

<details><summary></summary>

Use the following strategy:

* Keep the first card if it is 10 or greater, otherwise go to the second.
* Keep the second card if it is 9 or greater, otherwise go to the third.
* Keep the third card if it is 8 or greater, otherwise choose the fourth.

This will come out on ahead, on average.

### Proof

Let us initially assume that there is an infinite deck for simplicity. There
are an equal number of all face values, and now each card is independent of the
previous ones.

For the 4th card the expected value is:

$$
E_4 = \frac{1}{13} \sum_{i=1}^{13} i = 7
$$

For the 3rd card, if it is more than $$E_4$$, we should keep it. Otherwise, look
at the fourth. Thus the expected value is:

$$
E_3 = \frac{1}{13} \sum_{i=8}^{13} i + \frac{1}{13} \sum_{i=1}^{7} E_4 = 8.615
$$

Likewise for the 2nd card, if it is more than $$E_3$$, we should keep
it. Otherwise, look at the third, giving the expected value is:

$$
E_2 = \frac{1}{13} \sum_{i=9}^{13} i + \frac{1}{13} \sum_{i=1}^{8} E_3 = 9.533
$$

And finally, for the first card:

$$
E_1 = \frac{1}{13} \sum_{i=10}^{13} i + \frac{1}{13} \sum_{i=1}^{9} E_2 = 10.138
$$

Thus our strategy gives us an expected value of $10.138 per game. Note that we
assumed that there was an infinite number of cards. In reality, when a card is
chosen, it wont appear again. Since we only reject low cards, this reduces our
chances of getting more low cards. Thus our proof gives a lower bound on
the expected value

This gives us an expected value of $$ > $10$$, letting you come out ahead.

In general, our strategy generalises to $$n$$ initial cards with:

$$
\begin{align}
E_n & = 7 \\
E_{i-1} & = \frac{1}{13}
  \left(
    \lfloor E_i \rfloor E_i + \sum_{i=\lfloor E_i \rfloor + 1}^{13} i
  \right)
\end{align}
$$

</details>
