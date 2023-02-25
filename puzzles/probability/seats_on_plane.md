# Seats on a plane

There is a fully booked flight, which has just begun boarding passengers. Each
passenger has already been assigned a seat. The first passenger to board is distracted and
does not look at their assigned seat, but sits down in a random
seat.
For the other passengers, when they board, if their assigned seat is free they
sit there. Otherwise they sit at a random seat that is free.

What is the probability that the last passenger to board sits in their assigned
seat?

{::nomarkdown}
<label for="{{ include.id }}"></label>
<input type="checkbox" class="solution" id="{{ include.id }}">
{:/}
<div>

The last passenger has a 50% chance of finding their seat free.

### Proof

From the point of view of the last passenger, it is an equivalent problem if the
previous passengers all kick the distracted passenger out of the seat if it belongs
to them. In this situation the distracted passenger chooses a different free
seat.

They continue being dislodged until they ends up in either their own seat, or the
seat of the last passenger. Both of these situations are equally likely, and
hence the last passenger has a 50% chance of finding their seat free.

</div>
