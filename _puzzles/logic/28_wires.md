---
title: 28 wires
layout: default
---

28 wires run underground between two buildings. Unfortunately, they are
unlabelled so you don't know which ends match up. You need to label the
wires for the wires to be useful.

You only have a battery and lightbulb as equipment.

How many trips do you need to make between the two buildings to label all the
wires?

<details><summary></summary>

You only need to make one round trip.

### Proof

Starting in the first building number:

1. Label 1 wire with $$A$$.
1. Connect the next 2 wires and label them with $$B$$.
1. Connect the next 3 wires and label them with $$C$$.
1. Continue this way connecting a group of 4, 5, 6 and 7 wires with labels $$D$$
   to $$G$$.

This accounts for all the wires as $$\sum_1^7 i = 28$$.

Now go to the second building. Using the battery and lightbulb, test every
pair of wire against the others (378 tests) to check if they are connected.

Label the wire that is not connected to any other wire as $$A$$, the wires
that are only connected to each other as $$B$$, the group of 3 connected wires
as $$C$$, and so on.

Update the labels as follows:

1. Take one wire from each group and connect them together.
   Append $$A$$ to their labels - this will result in labels $$AA$$, $$BA$$
   ... $$GA$$.
2. Take another wire from each group (which has not yet been updated) and
   connect them together.
   Append $$B$$ to the label. Only 6 of the groups will have a spare wire for
   this.
3. Continue in this way connecting wires and appending
   $$C$$, $$D$$, $$E$$, $$F$$ and $$G$$ in turn.
   Each will have one less group with spare wires to update.

As before this accounts for all the wires as $$\sum_7^1 i = 28$$. Each wire
now has a unique 2 letter label, because each wire in a given group got a
different letter appended.

Now return to the first building. Disconnect the original connections.
Using the battery and lightbulb, test every pair of wire against the others
(378 tests) to check if they are connected.

Append $$G$$ to the wire that is not connected to any other wire, $$F$$ to the
wires that are only connected to each other, $$E$$ to the group of 3 connected
wires, and so on.

The labels of the wires in the two building should now match, with each wire
having a unique 2 letter label.

This strategy works for any
[triangular number](https://en.wikipedia.org/wiki/Triangular_number)
numbers of wires.

</details>

