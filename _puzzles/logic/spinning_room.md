---
layout: default
title: Escape from the spinning room
---

You are trapped in a small square room. In the middle of each side of the room
there is a hole. In each hole there is a push button that can be in either an
off or on setting. You can't see in the holes but you can reach your hands in
them and push the buttons. You can't tell by feel whether they are in the on or
off position.

You may stick your hands in any two holes at the same time and push either, or
both of the buttons as you please. Nothing will happen until you remove both
hands from the holes. You succeed if you get all the buttons into the same
position, after which time you will immediately be released from the room.

Unless you escape, after removing your hands the room will spin around,
disorienting you so you can't tell which side is which.

How can you escape?

{% solution %}

Do the following in order until you escape:

1. Push buttons on two opposite walls.
1. Push buttons on two adjacent walls.
1. Push buttons on two opposite walls.
1. Push any one button.
1. Push buttons on two opposite walls.
1. Push buttons on two adjacent walls.
1. Push buttons on two opposite walls.

You should be free by the end of the last instruction at latest.

### Proof

Let us label all the states we could be in:

* $$ A $$: Two buttons ON, on opposite sides.
* $$ B $$: Two buttons ON, on adjacent sides.
* $$ C $$: Three buttons in the same state, and other other different.

If we push two opposite buttons, then if we are in state $$ A $$, then we go
free. The other states remain the same. Thus first we carry this out, and if we
are still in the room, we must be in state $$ B $$ or $$ C $$.

Now, if we are in state $$ B $$ and we push two adjacent buttons, then we either
go free or go to state $$ A $$. But from above we know how to escape from state
$$ A $$. Thus we push two adjacent buttons, then two opposite buttons. If we are
still in the room, the starting position must have been state $$ C $$.

Note that up to this point we have been pushing two buttons at a time, so this
always leaves state $$ C $$ the in state $$ C $$.

Now we know that we are in state $$ C $$. Pushing any one button will convert the
state to either $$ A $$ or $$ B $$. But we know how to escape for $$ A $$ or $$ B $$, so we just
repeat the procedure above.

In summary the possible states we are in after each step are:

$$ \{A,B,C\} $$
$$ \xrightarrow{1} \{B,C\} $$
$$ \xrightarrow{2} \{A,C\} $$
$$ \xrightarrow{3} \{C\} $$
$$ \xrightarrow{4} \{A,B\} $$
$$ \xrightarrow{5} \{B\} $$
$$ \xrightarrow{6} \{A\} $$
$$ \xrightarrow{7} \{\} $$

{% endsolution %}
