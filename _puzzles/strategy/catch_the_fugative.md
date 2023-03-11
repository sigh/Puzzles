---
title: Catch the fugative
layout: default
---

A police officer is chasing a fugative. The fugative comes to a row of 17 houses
and hides in the backyard of one of the houses.

The police officer knows the the fugative is cornered into this row of houses
and can check one house at a time. If the officer checks the house where the
fugative is hidding the fugative will be caught.
Otherwise the officer can check another house but during this time the fugative
can jump to either of the neighboring houses. The fugative can't stay in the
same location otherwise they may be caught by the owner of the house.

How can the officer catch the fugative?

<details><summary></summary>

Start by searching the 2nd house. Then search each house in order up to the
16th house. Then do the same in reverse, searching from the 16th house down
to the 2nd house (i.e. the 16th house gets searched twice in a row).

By the end the fugative would have been found.

### Proof

First note that the fugative alternates odd and even houses because they always
move to an adjacent house. This is also true for the officer for each of the
two passes. Thus on each pass the officer and fugative maintain the same parity
difference.

Suppose the fugative starts on an even numbered house.
On the first pass the officer starts at the 2nd house, hence when the officer
is searching an even house the fugative is at an even house, and similarly,
when the officer is searching an odd house the fugative is at an odd house.
As the officer moves along the street, the fugative can never get to the other
side of the officer as the fugative can never be on either of the houses
adjacent to the officer.
Thus the officer will eventually find the fugative on the first pass
if the fugative starts on an even numbered house.

If the fugative is not found on the first pass, then when the officer searches
the 16th house for the first time the fugative must be at an odd numbered house.
When the officer then searches the 16th house again for the second pass the
fugative must have moved to an even numbered house.

Now on the second pass the same logic applies, except we know that the fugative
starts on an even numbered house. Hence the officer catches the fugative by
the time the officer reaches the 2nd house.

</details>
