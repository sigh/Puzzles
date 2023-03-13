---
title: Attacking knights
layout: default
---

What is the maximum number of knights which can be placed on a chess board
with none of the knights attacking each other.

<details><summary></summary>

32 knights:

![Pulled rope]({{ 'images/attacking_knights_solution.png' | relative_url }})

All the knights are on black squares, and knights on black squares can only
attack white squares.

### Proof

Pair up squares as in the following diagram. Paired squares are identified
by the same piece.

A knight can only be placed on one of each pair of squares. Since this
arrangement can be tiled across the entire chessboard, the knights can take
up at most half the chess board: 32 squares.

![Pulled rope]({{ 'images/attacking_knights_proof.png' | relative_url }})

</details>
