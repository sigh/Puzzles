---
layout: default
title: Squashed bee
---

Two trains enter a tunnel 200 km long at the same time from opposite
directions. They are both travelling at 100 km/h.

As soon as they enter the tunnel a supersonic bee flying at 1000 km/h starts
from one train and heads toward the other one. As soon as it reaches the other
one it turns around and heads back toward the first. It keeps going back and
forth between the trains until the trains collide in a fiery explosion in the
middle of the tunnel.

How far did the bee travel? Assume the bee can turn instantaneously.

{% solution %}

The bee travels 1000 km.

### Proof

Let the length of the tunnel be $$ L $$, the speed of the trains be $$ v_t $$, and the
speed of the bee be $$ v_b $$. Also set $$ t = 0 $$ when the trains enter the tunnel.

The trains collide at the middle of the tunnel after travelling a distance of
$$ \frac{L}{2} $$. When this happens the time is:

$$ t = \frac{\left(\frac{L}{2}\right)}{v_t} = \frac{L}{2 v_t} $$

During this time the bee has a constant speed of $$ v_b $$. Thus it travels a
distance:

$$ d = v_b t = \frac{L v_b}{2 v_t} $$

For this problem, $$ v_b = 1000 $$ km/h, $$ v_t = 100 $$ km/h and $$ L = 200 $$ km giving
$$ d = 1000 $$ km.

{% endsolution %}
