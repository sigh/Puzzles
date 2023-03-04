---
title: Hidden salaries
layout: default
---

Three co-workers would like to know their average salary. They trust each other
to be honest, however they do not want to disclose their actual salaries to
anyone else.

Determine a strategy so that they can find the average.

<details><summary></summary>

First number the three people, \#1, \#2 and \#3. Let the salary of person $$i$$ be
$$s_i$$. Also, make each person come up with a random number $$r_i$$.

Then use the following strategy:

* \#1 writes the value $$(s_1 + r_1)$$ on a piece of paper and hands it to
  \#2.
* \#2 adds the value $$(s_2 + r_2)$$ to the value they see on the paper that
  \#1 gave. They write this new value $$(s_1 + s_2 + r_1 + r_2)$$ on a
  new piece of paper and hand it to \#3.
* \#3 adds the value $$(s_3 + r_3)$$ to the value they see on the paper that
  \#2 gave. They write this new value
  $$(s_1 + s_2 + s_3 + r_1 + r_2 + r_3)$$ on a new piece of paper and hand
  it to \#1.
* \#1 subtracts $$r_1$$ from the value they see on the paper that \#3 gave.
  They write this new value $$(s_1 + s_2 + s_3 + r_2 + r_3)$$ on a new
  piece of paper and hand it to \#2.
* \#2 subtracts $$r_2$$ from the value they see on the paper that \#1 gave.=
  They write this new value $$(s_1 + s_2 + s_3 + r_3)$$ on a new piece
  of paper and hands it to \#3.
* \#3 subtracts $$r_3$$ from the value he sees on the paper that \#2 gave.
  They then divide the result by 3 to obtain the average
  $$\frac{s_1 + s_2 + s_3}{3}$$, which they tell everyone.

</details>
