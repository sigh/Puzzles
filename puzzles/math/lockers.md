# Open lockers

A school has a hallway with 100 lockers. All the lockers are closed.

A student walks down the hallway can opens every locker. A second student walks
down the hallways and closes every second locker, starting at locker 2. A third
student then walks down the hallways and changes the state of every third
locker, starting at locker 3.

The $$n$$th student walking down the hallway changes the state of every $$n$$th
locker starting at locker $$n$$.

After 100 students have passed down the hallway, which lockers are open?

{::nomarkdown}
<label for="{{ include.id }}"></label>
<input type="checkbox" class="solution" id="{{ include.id }}">
{:/}
<div>

The lockers left open are the square numbers: 1, 4, 9, 16, 25, 36, 49, 64, 81
and 100.

### Proof

The lockers that are left open are those that have been changed an odd number of
times.

Since student $$n$$ changes all the lockers that have $$n$$ as a factor, the lockers
that have changed are those that have an odd number of factors.

Factors come in pairs ($$ n = f_1 \times f_2 $$), so for there to be an odd number of factors, a
factor $$ f $$ must repeat itself in a pair ($$ f = f_1 = f_2 $$).
In this case $$ n = f \times f $$, thus $$ n $$ is a square number.

</div>
