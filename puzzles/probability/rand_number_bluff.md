# Random number bluff

There is a die that, when rolled, gives a random real number between 0 and 1. We
play the following game:

1. Player 1 rolls the die
1. Player 1 may either tell Player 2 the number, or lie and report any
  number between 0 and 1
1. Player 2 can either roll the die to try and beat the number they were told,
  or accuse Player 1 of lying
1. Player 2 wins if they beat the number they were told, or they accuse Player 1
  of lying and is right
1. Player 1 wins otherwise

What's the best strategy for Player 1?

{::nomarkdown}
<label for="{{ include.id }}"></label>
<input type="checkbox" class="solution" id="{{ include.id }}">
{:/}
<div>

The best strategy for Player 1 to tell the truth if they roll higher than
 $$ \frac{1}{e} $$, or otherwise lie, reporting in the range
 $$ \left[\frac{1}{e}, 1\right] $$ according to the probability density function:

$$ p(x) = e \left( \frac{1}{x} - 1 \right) $$

### Proof

Suppose Player 1 has chosen a strategy, and has reported a value in the range
$$ [x, x+dx] $$. This is referred to as the range "near" $$ x $$ .

If Player 2 chooses to trust, then they will win with probability:

$$ P_{trust} = 1 - x $$

If Player 2 chooses to accuse, then their probability of winning depends on how
often Player 1 lies "near"  $$ x $$. Let $$ L(x) dx $$ be the probability that Player 1
lies and reports a value in the range $$ [x, x+dx] $$. The probability that the roll
really was in the range $$ [x, x+dx] $$ is $$ dx $$. Therefore, Player 2 will win when
accusing with probability:

$$
\begin{aligned}
P_{accuse} & = \frac{L(x) dx}{L(x) dx + dx} \\
& = 1 - \frac{1}{L(x) + 1}
\end{aligned}
$$

Player 2 should only accuse if:

$$
\begin{aligned}
P_{accuse} & > P_{trust} \\
1 - \frac{1}{L(x) + 1} & > 1 - x \\
L(x) & > \frac{1}{x} - 1
\end{aligned}
$$

Now if Player 1 ever wants to report "near" $$ x $$ they should make sure that there
are enough lies "near" $$ x $$ so that Player 2 is indifferent to trusting and
accusing:

* If Player 1 doesn't lie "near" $$ x $$ often enough, then Player 2's best
  choice will be to trust. Knowing this, Player 1 can lie a little more often
  "near" $$ x $$ rather than reporting "near" $$ y $$ for any $$ y<x $$.
* If Player 1 lies too much "near" $$ x $$ , then Player 2's best choice
  will be to accuse. Knowing this, Player 1 can lie a little less often "near"
  $$ x $$ and instead report "near" $$ z $$ for the largest $$ z $$ that doesn't get lied
  "near" often enough (even if $$ z < x $$).

Therefore, for any $$ x $$, Player 1's best strategy will involve either never
reporting "near" $$ x $$, or lying "near" $$ x $$ with probability:

$$ L(x) = \frac{1}{x} - 1 $$

We can see that this means that $$ P_{accuse} = P_{trust} $$, and thus Player 2
will be indifferent to trusting or accusing. Thus we can assume that Player 2
will trust.

Given that Player 2 will trust always in this strategy, Player 1 should report
high values as often as possible, and never report low values. Thus values less
that some $$ N $$ will never be reported, and values greater than  $$ N $$  will be lied
"near" with a probability $$ L(x) $$.

We require that the probability of lying for $$ x > N $$ be the same as the
probability for rolling  $$ x < N $$:

$$
\begin{aligned}
N & = \int_N^1 \left( \frac{1}{x} - 1 \right) dx \\
& = \left[ \log x - x \right]_N^1 \\
& = \log 1 - 1 - \log N + N \\
\log N & = -1 \\
N & = \frac{1}{e}
\end{aligned}
$$

Now we require that for rolls where  $$ x < N $$, Player 1 will lie, reporting
"near" $$ y $$ with probability $$ cL(y) $$, and that the sum of all probabilities of
 $$ y $$ in the range $$  [N, 1] = 1 $$:

$$
\begin{aligned}
\int_N^1 c L(x) dx & = 1 \\
c \int_N^1 \left( \frac{1}{x} - 1 \right) dx & = 1 \\
c \frac{1}{e} &= 1 \\
c & = e
\end{aligned}
$$

Giving the required probability distribution in the equation:
$$ p(x) = e \left( \frac{1}{x} - 1 \right) $$

</div>
