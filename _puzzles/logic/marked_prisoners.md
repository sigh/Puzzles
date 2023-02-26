---
layout: default
title: Marked prisoners
---

A group of 200 perfect logicians are taken prisoner. Each has either an
`X` or an `O` marked on their forehead. They can all see each
other, and the marks on the others' foreheads. They have no way of seeing
the mark on their own forehead. They are no allowed any communication between
each other at all, on pain of death.

It happens that 100 of the prisoners have the `X` mark and the other 100
have the `O` mark. However, none of them know exactly how many people
have the `X` mark and how many people have the `O` mark.

Each night, at midnight, any prisoner who can correctly determine the mark
on their forehead may leave. They know their marks are either `X` or
`O`.

One day a guard being careless and was accidentally heard saying:
_"I can see someone with an `X` mark on their forehead"_

He is quickly disciplined, but everyone heard what he said.

Who leaves the prison, and on what night?

{% solution %}

On the 100th day, all 100 prisoners with an `X` mark will leave. On
the day after 101st day, the 100 remaining prisoners with the `O` mark
will leave.

### Proof

In the case of one prisoner with the `X` mark, he looks around and sees
that no one else has an `X`. Thus he is the only one the guard could
be referring to. Thus we have:

> **Theorem 1:** If there is only one prisoner with an `X` mark, he leaves on the first night.

Let us set up the hypothesis that:

> **Hypothesis 1:** If there are $$ n $$ prisoners with the `X` mark,
> nothing will happen for the first $$ (n-1) $$ nights, then they will all
> leave on the $$ n $$th night.

If there are $$ (n+1) $$ prisoners with the `X` mark, then they all see $$ n $$
other prisoners with the `X` mark. Thus they can all deduce that there
must be either $$ n $$ or $$ (n+1) $$ prisoners with the `X` mark.

If we assume **Hypothesis 1**, then on the first $$ n $$ nights nothing will
happen. After the $$ n $$th night they will be determine that there can not be
exactly $$ n $$ prisoners with the `X` mark. Hence they can all deduce that
they each have an `X` mark and they will all leave on the next night,
the $$(n+1)$$th night. Thus we have:

> **Theorem 2:** If **Hypothesis 1** is true for a given $$ n $$ then it is also true for the case $$ (n+1) $$.

We can see that **Hypothesis 1** is true for the case $$ n = 1 $$ by
**Theorem 1**. Then using induction with **Theorem 2** we can see that
**Hypothesis 1** is true for all $$ n \ge 1 $$.

In our problem, we have the case where $$ n = 100 $$ thus all the prisoners
with the `X` mark will leave on the 100th day. The prisoners with the
`O` mark will see them leave and can deduce that they do not have an
`X`. Since `O` is the only other option they will leave on the
next day, the 101st day.

### Extra Consideration

#### What is the quantified piece of information that the guard provides that each prisoner did not already know?

Each prisoner already knew that there was at least one `X` marked
prisoner. They also all knew they everyone else knew, and they everyone knew
that everyone knew. However this does not continue indefinitely.

In our problem, everyone knew that there were at least 99 `X` marked
prisoners. But when we get to meta-knowledge, we can only say that everyone
knew that everyone knew that there are at least 98 `X` marked
prisoners. Continuing further, our strongest statement of meta-meta-knowledge
is that, everyone knew that everyone knew that everyone knew that there are at
least 97 `X` marked prisoners.

This continues until we can't say anything about the number `X` marked
prisoners.

When the informer speaks, the fact that there is at least 1 `X` marked
prisoner becomes common knowledge. Importantly, now everyone knows that
everyone knows that there is at least `X` marked prisoner. And everyone
knows that everyone knows that everyone knows... and so on indefinitely.
Sufficiently deep in this meta-knowledge, this adds new information. This is known as [Common knowledge](https://en.wikipedia.org/wiki/Common_knowledge).

{% endsolution %}

Made famous as [xkcd's Blue Eyes puzzle](https://xkcd.com/blue_eyes.html) ([solution](https://xkcd.com/solution.html)).
