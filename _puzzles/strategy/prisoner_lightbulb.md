---
layout: default
title: Prisoners and a lightbulb
---

A new prison has been built. It holds exactly 100 prisoners. Each prisoner is
held in a solitary room with no way of communicating with the other prisoners,
or anyone on the outside. At his leisure, the warden selects one prisoner at
random, and escorts the selected prisoner to a central room for one hour. There
is nothing in the central room except a light switch that controls a light bulb
installed in the ceiling, which is visible but out of reach. While a prisoner is
in the central room, they are allowed to turn the light switch on or off. They
can also decide to tell the warden that they are certain that all 100 prisoners
have been in the room.

If they are correct then everyone will be set free, but if they are not correct,
then everyone will be executed. So, it is essential that they only talk to the
warden when they are positive that they are correct.

All 100 prisoners are allowed to gather together before they are put in prison
to discuss their strategy for getting out.

## Known state, known time

The light is off before the first prisoner goes in. The prisoners are told that
the warden will bring in one prisoner a day to the room. Can you come up with a
plan that guarantees success (eventually)?

{% solution %}

* Every prisoner starts off with a count of 1.
* Designate one prisoner as the "collector".
* If the light is off when a prisoner enters the room, and their count is
  1, they turn the light on and decrease their count.
* If the light is on when the collector enters the room, they turn the
  light off and increase their count.
* When the collector's count reaches 100, they notify the warden.

### Proof and runtime

Every prisoner turns on the light at most once. The light is initially off, so
when the collector has seen the light come on 99 times they knows that
all other prisoners have been in the room. At this point the collectors count
will be 100 and they alert the warden.

The probability $$p$$ for a previously uncounted prisoner to arrive between the
collectors visits (given $$n$$ prisoners and $$x$$ uncounted prisoners) is:

$$
\begin{aligned}
p = & 0 \times \text{probability the collector arrives } + \\
    & 1 \times \text{probability an uncounted prisoner arrives } + \\
    & p \times \text{probability a counted prisoner arrives } \\
= & 0\frac{1}{n} + 1\frac{x}{n} + p\frac{n-x-1}{n} \\
np = & x + p(n - x - 1) \\
p = & \frac{x}{x+1}
\end{aligned}
$$

The expected time between visits for the collector is $$n$$ days. Thus the
expected time taken for a collector to see the light turn on is:

$$ n\frac{x+1}{x} $$

Thus the expected time for the prisoners to escape is:

$$ n \sum_{x=1}^{n-1} \frac{x+1}{x} $$

When $$n = 100$$ this evalutes to about 10418 days, or about 28.5 years.

Note that this is not optimal.
There are trivial improvements to this algorithm such as dynamically
choosing the collector. For example, selecting the prisoner brought in on the
second day, they can immediately count the prisoner on the first day and shorten
their stay by an average of $$n$$ days.

{% endsolution %}

## Unknown state, unknown time

Is it still possible to solve the problem if the prisoners do not know the
initial state of the lightbulb or how often a prisoner will be brought to the
room?

{% solution %}

The algorithm for a known state already works if the prisoners don't
know how often they are brought to the room, so we just need to deal with the
unknown state.

* Every prisoner starts off with a count of 1.
* Designate one prisoner as the "collector".
* If the light is off when a prisoner enters the room, and their count is
  1, and they have previously observed the light in both states (on and
  off), they turn the light on and decrease their count.
* If the light is on when the collector enters the room, and they didn't
  turn it on, and it is not their first time in the room, they turn the
  light off and increase their count. In all other cases they toggle the
  light switch.
* When the collector's count reaches 100, they notify the warden.

### Proof

As with the algorithm for a known state, every prisoner turns on the
light at most once.

The collector is always the first prisoner to change the initial state of the
light switch. When a prisoner has seen the light in the both states, they can be
sure that the collector has started counting. Hence, when a prisoner turns on
the light the collector will count it.

If no other prisoners are turning on the light, the collector is toggling the
light on and off between visits. This ensures that eventually all prisoners
will see the lightbulb in both states.

Note that this solutions here is not optimal, it is a simple example of feasibility.

{% endsolution %}

## Multiple states

Suppose the lightbulb is replaced with a switch with multiple states,
can the prisoners use that to escape faster?

{% solution %}

Let $$n$$ be the number of prisoners.
The previous algorithms can be easily adjusted to take advantage
of multiple states with the following differences:

* The collector resets the state to 0 (in the unknown initial state
  problem they toggle between 0 and the maximum value).
* Prisoners increment the state unless it is already at its maximum value.
* The collector increments their count by the value they see.

This will reduce the expected runtime by a factor equal to the number of switch
states, when there are up to $$n - 1$$ states.

If there are $$n$$ or more states the first time a prisoner visits the room they
update the switch from $$x$$ to $$x + 1 \mod n$$. The first prisoner to see the
switch set to $$x \mod n$$ (where $$x$$ is the value they first saw) can alert the
warden that all prisoners have visited the room.

This works even when the initial state and time between visits is unknown. The
expected runtime for this is:

$$
\sum_{x=1}^{n} \frac{n}{x} = nH_n
  \text{ where } H_n \text{ is the nth harmonic number }
$$

For $$n = 100$$ this is about $$519$$ days.

As with the previous algorithms, this solution is not optimal.

{% endsolution %}
