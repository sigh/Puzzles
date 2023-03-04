---
title: Pocket kings drawing dead
layout: default
---

Tex is playing Texas Hold 'Em, and was on an amazing winning streak. The gods of
poker were chatting and came up with a diabolical plan to frustrate Tex.

"How about drawing dead before the flop?" asked the first god.

"Better yet, let's give him pocket kings drawing dead!" replied the second.

"Brilliant," exclaimed the first god, "But there are only six opponents, how
can we do it?"

"Like this..."

Give a set of seven 2-card hands, including the pocket kings for Tex, such that
Tex is drawing dead before the flop (he has zero chance of winning any portion
of the pot).

<details><summary></summary>

The following hands result in Tex drawing dead:

|     |                                       |
| --- | ------------------------------------- |
| Tex | `K`$$\heartsuit$$ `K`$$\diamondsuit$$ |
| P1  | `K`$$\clubsuit$$  `A`$$\diamondsuit$$ |
| P2  | `A`$$\heartsuit$$ `K`$$\spadesuit$$   |
| P3  | `A`$$\clubsuit$$  `A`$$\spadesuit$$   |
| P4  | `Q`$$\heartsuit$$ `Q`$$\diamondsuit$$ |
| P5  | `7`$$\heartsuit$$ `7`$$\diamondsuit$$ |
| P6  | `7`$$\clubsuit$$  `7`$$\spadesuit$$   |

### Proof

Tex can't win on a pair because P3 already has a higher pair (pair of
`A`s). In addition, no pair of `A`s can come out on the board
because all `A`s are accounted for.

Tex can't win on a three-of-a-kind because all the other `K` are
accounted for. Three of any other card would result in a full house discussed
later.

Tex can't win on a straight. If `2` to `6` comes up on the board,
P5 and P6 split the pot because they both will have `3` to `7`
straights. If `8` to `Q` comes up on the board, P2 will win with a
`10` to `A` straight. No other straights can come up on the board.

Tex can't win on a flush. All the `A`s are accounted for by other
players, so they will have a higher flush than anyone.

Tex can't win on a full house. If three of some card come up on the board, P3
will win with a higher full house. Tex can't get another `K` as they are
all accounted for.

Tex can't win on a four-of-a-kind. If a four-of-a-kind comes up on the
board P1, P2 and P2 will split the pot because all have the highest kicker,
`A`. Tex can't get four `K`s as all the other `K`s are
accounted for.

</details>
