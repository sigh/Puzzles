---
title: Bridge crossing
layout: default
---

Four people come to a river in the night. There is a narrow bridge, but it can
only hold two people at a time. They have one torch and, because it's night,
the torch has to be used when crossing the bridge. Person $$A$$ can cross the
bridge in one minute, $$B$$ in two minutes, $$C$$ in five minutes, and $$D$$ in eight
minutes. When two people cross the bridge together, they must move at the slower
person's pace.

Can they all get across the bridge in 15 minutes or less?

<details><summary></summary>

First note that making the fastest person the torch-bearer and having them
shuttle the others across takes 17 minutes, and thus isn't sufficient. The time
can be improved by sending the two slowest people over the bridge at the same
time.

| Elapsed time | Left side | Right side |                  |
| ------------ | --------- | ---------- | ---------------- |
| 0            | `A B C D` |            | Initial position |
| 2            | `C D`     | `A B`      | A and B cross    |
| 3            | `A C D`   | `B`        | A returns        |
| 11           | `A`       | `B C D`    | C and D cross    |
| 13           | `A B`     | `C D`      | B returns        |
| 15           |           | `A B C D`  | A and B cross    |

</details>
