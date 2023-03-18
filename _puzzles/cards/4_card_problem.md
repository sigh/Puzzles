---
title: Four-card problem
layout: default
---

4 playing cards are placed in front of you. Two are face-down, with one red back
and one black back. Two are face-up, with one ace and one queen.

![Cards]({{ 'images/4_card_problem.png' | relative_url }})

Which cards must you turn over to check that every ace has a black back?

<details><summary></summary>

You need to turn over the ace and the red-backed card:

* If the ace doesn't have a black back, the rule is broken.
* If the red-backed card is an ace, the rule is also broken.

Note that both the face-down card with a black back and the queen can have
anything on the other side without violating the rule.

### Commentary

This is also known as the
[Wason selection task](https://en.wikipedia.org/wiki/Wason_selection_task).

</details>
