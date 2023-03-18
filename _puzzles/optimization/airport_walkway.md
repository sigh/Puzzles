---
title: Airport walkway
layout: default
---

## Stopping

You are at an airport and are approaching a moving walkway. You look down and
realize you need to tie your shoe.

Assuming you want to lose as little time as possible, should you stop now to
tie your shoelace or wait until you are on the walkway.

<details><summary></summary>

Wait until you are on the walkway.

### Proof

Imagine two people walking together at the same speed.
One stops right before the walkway, and the other stops right as the walkway
starts. That is, they stop very close to each other.

However, while they are stopped the person on the walkway continues moving
and increases the distance between the two. When they both start walking again
(at the same time) now they are separated by the distance that the walkway
has moved during this time.

Since they walk at the same speed, this separation will remain.

</details>

## Sprinting

Now you are on the walkway, but are late since you stopped to tie your shoe.
You decide to sprint, but you can only sprint for a short burst, and only once.

Should sprint on the moving walkway or wait until you are off?

<details><summary></summary>

Wait until you are off the walkway to sprint.

### Proof

* Let your walking speed be $$v$$
* Let your sprinting speed be $$v'$$.
* Let the length of time you sprint be $$t$$.
* Let $$w$$ be the the walkway speed.

Assume if you sprint on the walkway then the entire sprint talks place on the
walkway. If any sprinting occurs after the walkway, that doesn't correspond to
any change in separation.

We compare the time saved in each scenario compared not sprinting:

1. If sprinting off the walkway you sprint for a distance $$d = v't$$. This
  would have taken a time $$t+\Delta t = \frac{d}{v}$$ to walk. The time saved is:
  $$\Delta t_1= \frac{v't}{v}-t = t\left(\frac{v'}{v}-1\right)$$.
2. If sprinting on the walkway you sprint for a distance $$d = (v'+w)t$$. This
  would have taken a time $$t+\Delta t = \frac{d}{v+w}$$ to walk.
  The time saved is:
  $$\Delta t_2= \frac{(v'+w)t}{v+w}-t = t\left(\frac{v'+w}{v+w}-1\right)$$.

We want to sprint off the walkway if $$\Delta t_1 > \Delta t_2$$:

$$
\begin{align}
  t\left(\frac{v'}{v}-1\right) & > t\left(\frac{v'+w}{v+w}-1\right) \\
  \frac{v'}{v} & > \frac{v'+w}{v+w} \\
  v'(v+w) & > v(v'+w) \\
  v'v+v'w & > vv'+wv \\
  v' & > v
\end{align}
$$

Since you sprint faster than you walk, you should sprint once off the walkway.

Note that the converse also holds. If you want to slow down (or stop completely
as in the first part), then do so on the moving walkway.

</details>