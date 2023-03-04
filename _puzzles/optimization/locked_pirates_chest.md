---
title: Locked pirate chest
layout: default
---

There is a group of 13 pirates and they want to protect their treasure
chest. They decide that they should only be able to open the chest if a majority
agree that it should be opened.

They ask a locksmith to come and put a specific number of locks on the
chest. Each lock must be opened to open the chest. The locksmith can give as
many keys as required to each pirate.

How many locks should the locksmith use, and how should the keys be distributed,
such that only when the majority of pirates agree can the chest be opened?

<details><summary></summary>

The locksmith should make 1716 locks and give each pirate 924 keys. The method
of distributing the keys is discussed in the proof.

### Proof

Let $$N$$ be the number of pirates, $$n$$ be the number required to open the safe.

Any group of $$n-1$$ pirate should together be unable to open some non-empty
subset $$S$$ of all the locks. If $$S$$ was empty then they would be able to
open all the locks with just $$n-1$$ pirates.

We have that for each group of $$n-1$$ pirates $$P$$ there must be a distinct
non-empty subset of locks $$S_P$$ that cannot be opened by them.
Furthermore, all subsets $$S_P$$ must be disjoint. Therefore we need at least
one lock for each group of $$n-1$$ pirates, meaning at we require
$$L \ge {N \choose n-1}$$.

We will enumerate each group of $$n-1$$ pirates and create a lock for each.
Thus we have:

$$
L = {N \choose n-1}
$$

Each pirate needs to be able to join any group of $$n-1$$ pirates that he is not
part of, and open their lock. Since these locks are distinct for each group, he
needs to be able to open $$k \ge {N-1 \choose n-1}$$ locks. If he has any less
keys, there will be some groups who's lock he wont be able to open. Thus we set
the number of keys for each pirate to be:

$$
k = {N-1 \choose n-1}
$$

Now for each lock you distribute the keys to all pirates, except the selection
of $$n-1$$ pirates corresponding to that lock. Consider a group of $$n-1$$
pirates. There will be a single lock that they cannot open together. However,
any pirate other than these $$n-1$$ will be able to open that lock, thus any group
of $$n$$ pirates will be able to open all the locks.

For $$N=13$$, $$n = \left\lceil \frac{N}{2} \right\rceil = 7$$, we have that $$ L =
1716 $$ locks and $$k = 924$$ keys for each pirate.

</details>
