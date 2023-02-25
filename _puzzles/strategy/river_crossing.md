---
title: River crossings
---

There is a river, with a boat on one side. The boat is only big enough for two
people, or one person and an object. It requires an adult to row it.

In all scenarios the travellers start on the left bank of the river.

## The farmer

A farmer comes to the river, with a wolf, a goat and a bail of hay. The wolf
cannot be left alone with the goat, or else it will eat the goat. Likewise the
goat will eat the hay if left alone with it.

How does the farmer get everything across the river?

{% solution %}

Let:

* `F` stand for the farmer
* `W` stand for the wolf
* `G` stand for the goat
* `H` stand for the hay

The side with the boat is surrounded with brackets.

| Left bank   | Right bank  |                                                       |
| ----------- | ----------- | ----------------------------------------------------- |
| (`F W G H`) |             | Initial position                                      |
| (`F W H`)   | `G`         | Farmer takes the goat across and comes back           |
| (`F G H`)   | `W`         | Farmer takes the wolf across and brings the goat back |
| (`F G`)     | `W H`       | Farmer takes the hay across and comes back            |
|             | (`F W G H`) | Farmer takes the goat across                          |

{% endsolution %}

## The criminals

Three thieves with three assassins come to the river.
The theives refuse to be outnumbered by assassins at any point.

How can they all get across the river?

{% solution %}

Let:

* `T` stand for a thief
* `A` stand for an assassin

The side with the boat is surrounded with brackets.

| Left bank       | Right bank       |                                                      |
| --------------- | ---------------- | ---------------------------------------------------- |
| (`A A A T T T`) |                  | Initial position                                     |
| (`A A T T T`)   | `A`              | An thief goes across with an assassin and comes back |
| (`A T T T`)     | `A A`            | Two assassins go across and one comes back           |
| `A T`           | ( `T T A A`)     | Two thieves go across                                |
| (`A A T T`)     | `T A`            | A thief goes back with a assassin                    |
| `A A`           | ( `T T T A`)     | Two thieves go across                                |
| `A`             | ( `T T T A A`)   | An assassin goes back and two come across            |
|                 | ( `T T T A A A`) | An assassin goes back and two come across            |

{% endsolution %}

## The jealous couple

A jealous couple, a father and mother, are out with their son, dog and four
four friends (two female and two male) when they come across a river.
The man cannot be alone with either of the female friends, and the woman with
either of the male friends.
Finally, the dog will bite anyone who is with it, unless the son is there to
control it. The dog can be left tied up alone.

How can the group cross the river?

{% solution %}

Let:

* `F` stand for the father
* `M` stand for the mother
* `W` stand for a female friend (woman)
* `G` stand for a male friend (guy)
* `S` stand for the son
* `C` stand for the dog (canine)

The side with the boat is surrounded with brackets.

| Left bank           | Right bank           |                                                                  |
| ------------------- | -------------------- | ---------------------------------------------------------------- |
| (`F M W W G G S C`) | `-`                  | Initial position                                                 |
| (`F M W W G G S`)   | `C`                  | The son takes the dog across and comes back                      |
| (`F M W W G S C`)   | `G`                  | The son takes a male friend across and brings the dog back       |
| (`F M W W S C`)     | `G G`                | The father takes a male friend across and comes back             |
| (`M W W S C`)       | `F G G`              | The mother takes the father across and comes back                |
| (`F M W W`)         | `G G S C`            | The son takes the dog across, but the father comes back          |
| (`M W W`)           | `F G G S C`          | The mother takes the father across and comes back                |
| `W`                 | ( `F M W G G S C`)   | The mother takes a female friend across                          |
| `C`                 | ( `F M W W G G S`)   | The son takes the dog back and comes across with a female friend |
| `-`                 | ( `F M W W G G S C`) | The son goes back and comes across with the dog                  |

{% endsolution %}
