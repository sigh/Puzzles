---
layout: default
title: Resistor network
---

## Cube

Imagine a cube, where each edge is a $$ 1 \Omega $$  resistor.

What is the effective resistance between opposite corners of the cube?

{% solution %}

The effective resistance is $$ \frac{5}{6} \Omega $$ .

### Proof

Let's call one of the corners point  $$ A $$ , through which we will force 1 A of
current into the circuit. Call the opposite corner point  $$ B $$ , through which we
will draw 1 A of current from the circuit. Thus overall, 1 A is flowing from  $$ A $$
to  $$ B $$ . We will set the voltage at  $$ B $$ to  $$ V_B = 0 $$ .

Now look at the 3 corners adjacent to  $$ A $$ , call them  $$ A_1 $$ ,  $$ A_2 $$  and  $$ A_3 $$ . By
symmetry, the current through an edge between  $$ A $$  and any  $$ A_i $$  is:

$$ I_A = \frac{1}{3} \text{ A} $$

Thus the voltage drop  $$ V_1 $$ , between  $$ A $$  and any point  $$ A_i $$  is given by:

$$ V_1 = I_A R = \frac{1}{3} \text{ V} $$

Now look at the 3 corners adjacent to  $$ B $$ , call them  $$ B_1 $$ ,  $$ B_2 $$  and  $$ B_3 $$ . The
situation is the same as above with the current flowing in the opposite
direction, hence the voltage drop  $$ V_2 $$  between any point  $$ B_i $$  and  $$ B $$  is given
by:

$$ V_2 = \frac{1}{3} \text{ V} $$

Now there are 6 equivalent ways for the current to flow in the middle resistor,
between the points  $$ A_i $$  and  $$ B_i $$ . Thus the current flowing through each path
is  $$ \frac{1}{6} $$  A. The voltage drop  $$ V_3 $$  between any connected  $$ A_i $$  and  $$ B_i $$
is given by:

$$ V_3 = \frac{1}{6} \text{ V} $$

The total voltage drop between  $$ A $$  and  $$ B $$  can be found by following any path
from  $$ A $$  to  $$ B $$ , thus:

$$ V_A = V_B + V_2 + V_3 + V_1 = \frac{5}{6} \text{ V} $$

Finally, use Ohm's law to find the effective resistance:

$$
R_{\text{eff}} = \frac{V}{I} =
  \frac{\left(\frac{5}{6}\right)}{1} =
  \frac{5}{6} \text{ } \Omega
$$

{% endsolution %}

## Infinite lattice

Imagine an infinitely extending 2D square lattice. Between any two adjacent
intersection points is a resistor of $$ 1 \Omega $$ .

What is the effective resistance between two adjacent intersection points?

{% solution %}

The effective resistance is  $$ \frac{1}{2} \Omega $$ .

### Proof

Label the two adjacent points  $$ A $$  and  $$ B $$ . We will superimpose two ways of
applying current to this circuit:

* Force 1 A into the circuit at point  $$ A $$  while holding the voltage 0 at
  infinity. Since each path out of  $$ A $$  is equivalent, the current from
    $$ A $$  to  $$ B $$  must be  $$ I_1 = \frac{1}{4} $$  A.
* Draw 1 A into the circuit at point  $$ B $$  while holding the voltage 0 at
  infinity. Since each path out of  $$ A $$  is equivalent, the current from
    $$ A $$  to  $$ B $$  must be  $$ I_2 = \frac{1}{4} $$  A.

Now we superimpose the two cases to get the situation where we have 1 A of
current flowing from  $$ A $$  to  $$ B $$ , giving a current  $$ I = I_1 + I_2 $$  through the
resistor:

$$ I = \frac{1}{4} + \frac{1}{4} = \frac{1}{2} \text{ A} $$

The voltage difference between $$ A $$ and $$ B $$ is, by Ohm's law:

$$ V = IR = 1 \times \frac{1}{2} = \frac{1}{2} \text{ V} $$

But overall, 1 A of current is going from  $$ A $$  to  $$ B $$ , thus the effective
resistance, by Ohm's law is:

$$
R_{\text{eff}} =
  \frac{V}{I} =
  \frac{\left(\frac{1}{2}\right)}{1} =
  \frac{1}{2} \text{ } \Omega
$$

{% endsolution %}
