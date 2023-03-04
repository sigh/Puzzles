---
title: Prisoners with hats in a circle
layout: default
---

Three prisoners are standing in a circle. They are blindfolded and either
a red or blue hat is placed randomly on the head of each prisoner. When the
blindfold is removed they can see the colour of the hats on the other two
prisoners but not their own. They cannot communicate in any way.

They are each given a piece of paper on which they must write "red", "blue"
or "abstain". They are allowed to go free if at least one prisoners guesses
their hat colour correctly, and none guess incorrectly.

The prisoners find out about this the day before and attempt to find a strategy
over night. What is the strategy which maximises their probability of going
free?

<details><summary></summary>

All three prisoners follow the same rule:

* If the other two prisoners have matching hat, guess the opposite colour.
* If the other two prisoners have different colour hats, abstain.

This results in a 75% chance of victory.

### Proof

If all 3 hats are the same, all 3 prisoners will guess wrong. This happens with
probability $$\frac{2}{8}$$. If there are 2 hats the same, and 1 different then
one prisoner will guess right, and the others will abstain. This will happen
with probability $$\frac{6}{8} = 75\%$$.

For every possible arrangement where a prisoner $$P_i$$ guesses right, there must
be an arrangement where prisoner $$P_i$$ guesses wrong. By having all prisoners be
wrong in the same arrangement, we can cover many different arrangements where
only one person guesses, and is correct.

### Extension

This problem can be generalised to the case where there are $$2^k - 1$$ prisoners,
where $$k$$ is positive integer. To do this we use the Hamming code.

We can represent the prisoners as bits, with (red, blue) being equivalent to (0,
1). For a problem of size $$2^k - 1$$ We can obtain the code
Hamming$$(2^k - 1, 2^k - k -1)$$. Let us refer to those arrangements which
represent valid strings under the Hamming code as "good" arrangements.

Our strategy for each prisoner is to check if they looks like they are in a
"good" arrangement.  If they are, then they write down the opposite of what the
arrangement says. Otherwise, they abstain.

We can see that in a "good" arrangement, everyone guesses wrong. This happens
in $$2^{2^k-k-1}$$ arrangements.

However, in all other arrangements, exactly one person writes down their hat
colour (correctly), and all the others abstain. This is because the Hamming
code corrects for one bit errors. This happens in $$2^{2^{k}-1} - 2^{2^k-k-1}$$
arrangements.

This is optimal since when we are wrong, all prisoners are wrong
together. However, when we are right, only one prisoner votes.

The probability that we are right, $$P$$, can be given by the number of
arrangements in which we are right, over the total number of arrangements:

$$
\begin{align}
P & = \frac{2^{2^{k}-1} - 2^{2^k-k-1}}{2^{2^{k}-1}} \\
& = 1 - \frac{1}{2^{k}}
\end{align}
$$

We can see that as the number of prisoners grows we get higher chances of
winning.

</details>
