---
title: 10 wires
layout: default
---

10 wires run underground between two buildings. Unfortunately, they are
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
1. Connect the remaining 4 wires and label them with $$D$$.

This accounts for all the wires as $$1+2+3+4 = 10$$.

Now go to the second building. Using the battery and lightbulb, test every
pair of wire against the others (45 tests) to check if they are connected.

Label the wire that is not connected to any other wire as $$A$$, the wires
that are only connected to each other as $$B$$, the group of 3 connected wires
as $$C$$, and the group of 4 connected wires as $$D$$.

Update the labels as follows:

1. Take one wire from each group and connect them together.
   Append $$A$$ to their labels - this will result in labels $$AA$$, $$BA$$,
   $$CA$$ and $$DA$$.
2. Take another wire from each group (which has not yet been updated) and
   connect them together.
   Append $$B$$ to the label. Only 3 of the groups will have a spare wire for
   this.
3. Continue in this way connecting wires, appending $$C$$ and $$D$$ in turn.
   Each will have one less group with spare wires to update.

As before this accounts for all the wires as $$1+2+3+4 = 10$$. Each wire
now has a unique 2 letter label, because each wire in a given group got a
different letter appended.

Now return to the first building. Disconnect the original connections.
Using the battery and lightbulb, test every pair of wire against the others
(45 tests) to check if they are connected.

Append $$D$$ to the wire that is not connected to any other wire, $$C$$ to the
wires that are only connected to each other, $$B$$ to the group of 3 connected
wires, and $$A$$ to the group of 4 connected wires.

The labels of the wires in the two building should now match, with each wire
having a unique 2 letter label.

This strategy works for any
[triangular number](https://en.wikipedia.org/wiki/Triangular_number)
numbers of wires.

</details>

