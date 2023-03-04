---
title: Handshakes
layout: default
---

A man and his wife are at a party. In the party there are 4 other couples for
a total of 5 couples. During the party some people shake hands, however no one
shakes hands with their spouse, and no one shakes hands with themselves.

At the end of the party the man asked all the other guests at the party
(including his wife) how many different people they shook hands with. Each
person tells him a different answer.

How many people did the man shake hands with?

<details><summary></summary>

The man shook hands with 4 people.

### Proof

Let us label each person with the number of people they have shaken.

Everyone has shaken hands with at most 8 people, since there are only 8 people
at the party besides that person and their spouse. So for every number between 1
and 8, there is a person who has shaken that many hands.

\#8 must have shaken hands with everyone else other than their spouse. Thus the
spouse must be \#0, since everyone else has shaken at least one hand (\#8's).
By the same logic, since all of the remaining people have shaken hands with \#8,
and none with \#0, \#7 must be married to \#1. Likewise, \#6 is married to \#2
and \#5 is married to \#3.

The only people left are \#4 and the man. Thus the man must be
married to \#4. Thus the man must have shaken hands with \#8, \#7, \#6 and
\#5, but not \#0, \#1, \#2, \#3 or his wife \#4. This gives 4 handshakes.

</details>
