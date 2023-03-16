---
title: Friends at a party
layout: default
---

There is a party with a large number of people. Some people at the party are
friends, some aren't. All friendships are mutual.

## Number of friends

Show that there are at least two people at the party who have the same number of
friends.

<details><summary></summary>

Let $$n$$ be the number of people at the party.

Since no one can be friends with themselves, everyone has between 0 and $$n-1$$
friends.

If someone has $$n-1$$ friends then that person is friends with everyone else, so
no one can have 0 friends.

Likewise if someone has 0 friends, no one can have $$n-1$$ friends (be friends
with everyone).

Thus there are $$n-1$$ possible numbers of friends and $$n$$ people, so by the
pigeon-hole principal, at least two people have the same number of friends.

</details>

## Mutual friends

Now show that any group of six people contains either 3 mutual friends or 3
mutual strangers.

<details><summary></summary>

Imagine the 6 people. Of them, some person $$X$$ either has at least 3 friends
among the other 5, or at least 3 strangers.

If $$X$$ has at least three friends, then either:

* The 3 of them are all mutual strangers.
* At least 2 of them are friends. Then the these 2 and $$X$$ are all mutual friends.

Both of these satisfy the condition.

If $$X$$ has at least three strangers, then either:

* The 3 of them are all mutual friends.
* At least 2 of them are strangers. Then the these 2 and $$X$$ are all mutual strangers.

Both of these also satisfy the condition.

### General case

In general, if we require there be either a group of $$a$$ mutual strangers or
$$b$$ mutual friends then the minimum sized group of people required is called the
Ramsey number: $$R(a,b)$$. The case explored in this problem is $$R(3,3) = 6$$.

</details>
