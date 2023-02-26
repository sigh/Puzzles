---
layout: default
title: Sink the sub
---

An enemy submarine is on some unknown integer on the number line. It is moving
at some unknown rate of  $$ v $$  units per minute, where  $$ v $$  is an integer.

You can launch a torpedo each minute at any integer on the number line. If the
submarine is there, you hit it and it sinks. You have all the time and torpedoes
that you want. You must sink the sub.

Devise a strategy that is guaranteed to eventually hit the enemy sub.

{% solution %}

Look the grid of integer points on the Cartesian plane. Starting at $$ (0,0) $$,
visit each point in turn one every minute. Fire at  $$ f(t) = x + y t $$ . This will
guarantee to eventually hit the sub.

### Proof

Let the sub's position be given by  $$ s(t) = x_0 + v t $$ . Note that both  $$ x_0 $$  and
 $$ v $$  are the set of integers ( $$ \mathbb{Z} $$ ). Since  $$ \mathbb{Z} $$  is countable,
we know that the set of all trajectories is countable also, as it is of size
 $$ \mathbb{Z}^2 $$ .

Thus if we enumerate all possible trajectories and try each on in turn, we will
eventually hit the sub.

In fact, this works if the sub can move to any rational number, algebraic number
or any other countable set.

{% endsolution %}
