---
title: Monty hall
layout: default
---

You are on a game show with your host Monty Hall. You are shown 3 doors. Two of
the doors have a goat behind them, and the remaining door has a car behind it.

You are asked to choose a door, but not open it. The host Monty, knowing where
the car is, then opens one of the other doors and shows that it has a goat
behind it. There are now two closed doors, the one you chose and the remaining
door. You are asked if you wish to stay with your original door, or switch.

To maximise your chance of winning the car, do you switch or stay?

<details><summary></summary>

Always switch.

### Proof

We can assume that we always pick the first door without loss of generality
(because each door has a $$\frac{1}{3}$$ chance of having the car).

After we pick the door, these are 6 possible (equally likely) arrangements:

    C - -
    C - -
    - C -
    - C -
    - - C
    - - C

Where `C` stands for car, and `-` stands for the goat.

After Monty opens one of the door we didn't pick, and shows nothing. If there
is a goat behind the first door then Monty has no choice about which door to
open. Thus we have:

    C X -
    C - X
    - C X
    - C X
    - X C
    - X C

Where `X` represents an open door.

We can see that in 4 of the 6 cases, it is better to switch. This means that if
we switch we have a $$\frac{2}{3}$$ chance of winning the car.

</details>

## Amnesiac Monty

Suppose now that Monty forgot where the car was. After you picked your door
Monty guessed randomly and opened one of the doors. It opens up to show a goat.
Relieved, Monty asks you whether you want to switch doors to the unopened door.

Is it better to switch or stay?

<details><summary></summary>

This time it doesn't make a difference! Both doors have a 50% chance of having
the car.

### Proof

As before, we can assume that we always pick the first door without loss of
generality (because each door has a $$\frac{1}{3}$$ chance of having the car).

After we pick the door, these are 6 possible (equally likely) arrangements:

    C - -
    C - -
    - C -
    - C -
    - - C
    - - C

Where `C` stands for car, and `-` stands for the goat.

After Monty opens one of the door we didn't pick. However this time, the choice
is random so there is a possibility that Monty reveals the car:

    C X -
    C - X
    - X - (Car is revealed!)
    - C X
    - X C
    - - X (Car is revealed!)

Where `X` represents an open door.

We know we aren't in the 2 cases where the car is revealed, so there are 4
possible scenarios we can be in. In 2 of these 4 cases it is better to switch
giving a $$\frac{1}{2}$$ chance of winning the car.

</details>

## Commentry

This is a well-known problem. See the
[Wikipedia page](https://en.wikipedia.org/wiki/Monty_Hall_problem) for a
deeper discussion and more variants.
