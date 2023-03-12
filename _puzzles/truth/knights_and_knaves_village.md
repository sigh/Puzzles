---
layout: default
title: Village of knights and knaves
---

You come across a village with 10 people. 5 are knight and 5 are knaves.
Knight always tell the truth and knaves always lie.
All the villagers know each other and know who are knights and who are knaves.
They will only answer yes-no questions.

What is the minimum number of questions you need to tell who is a knight and
who is a knave.

<details><summary></summary>

You need 8 questions.

### Proof

There are $$ \binom{10}5 = 252 $$ possible combinations you need to
disambiguate. This requires a minimum of $$ \lceil log_2(252) \rceil = 8 $$
questions.

One strategy for this is to first identify one of the villagers. Ask one of the
villagers a question with a known answer (e.g. "Are you a mushroom?") to
determine if they are a knight or a knave. We will now be able to reliably
determine the truth based on their answers - if they are a knave we just need to
invert their responses.

This leaves us with 7 questions to disambiguate the remaining
$$ \binom{9}{5} = 126 $$ combinations, which is less than $$ 2^7 = 128 $$ hence
is still possible.

You thus use the identified villager to binary search through the
possible combinations.

</details>
