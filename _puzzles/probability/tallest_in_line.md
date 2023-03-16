---
title: Tallest in line
layout: default
---

11 people are standing facing forward in a line.
On average, how many people will be taller than everyone in front of them?

<details><summary></summary>

On average about 3 people will be taller than everyone in front of them.

### Proof

Let $$E(n)$$ be the expected number of people who are taller than the people in
front for a line of $$n$$ people.

Suppose we add a person of random height to the end of the line of length
$$n-1$$, so the length is now $$n$$.
This does not affect what any of the existing people in the line see. The person
added sees everyone, and thus must be the tallest overall to be taller than
everyone in front. There is a $$\frac{1}{n}$$ chance that this person is the
tallest out of the group of $$n$$ random people. Hence:

$$E(n) = E(n-1) + \frac{1}{n}$$

In an empty line 0 people are taller than anyone so $$E(0) = 0$$. Hence:

$$E(n) = \sum_1^n \frac{1}{n} = H_n$$ where $$H_n$$ is the nth harmonic number.

For our problem, $$E(11) \approx 3.02$$.

</details>
