---
title: Fuel circuit
layout: default
---

$$N$$ fuel canisters are placed along a race track. In total they contain $$L$$
liters of fuel.

Suppose a race car needs $$L$$ liters of fuel to go around the race track once.
The cars fuel milage only depends on the distance travelled. The car can hold
more than $$L$$ liters of fuel.

Prove that there exists at least point on the cicuit from which the car can
complete a full lap, starting with an empty tank of fuel.

<details><summary></summary>

Given $$N$$ canisters, there is at least one canister with enough fuel to reach
the next canister. Otherwise the total fuel in the canisters would not be
sufficient to make it around the circuit.

Combine the next canister with the current canister at the location of the
current canister, such that there are now $$N-1$$ canisters. The total fuel is
still $$L$$.
If the problem can be solved with these $$N-1$$ canisters, the original problem
can be solved since we've established that there was enough fuel to reach the
next canister.

Now the same reasoning can be used to reduce the problem down to 1 canister
which contains all $$L$$ liters of fuel, at which point the problem is trivial.

Choosing this as the starting point allows us to solve the original problem.

</details>
