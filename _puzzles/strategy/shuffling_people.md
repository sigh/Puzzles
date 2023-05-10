---
layout: default
title: Shuffling people
---

You have an empty room, and a group of people waiting outside the room. At each step, you may either get one person into the room, or get one out. Can you make subsequent steps, so that every possible combination of people is achieved exactly once?

<details><summary></summary>

We will generate an algorithm by induction.

The base case is trivial, we start with an empty room and then
let the one person in. This covers both possible states.

Now, assume that we have a solution for $$n$$ people. We will show that we can construct a solution for $$n+1$$ people.
Note that the solution for $$n$$ people also works in reverse, because the change will still be .

* We start by running the solution for $$n$$ people - this covers all
combinations which exclude the last person.
* Now we let the last person in and then run the solution for $$n$$ people in reverse - this covers all combinations which include the last person.

At the end of the process, the last person will be the only one in the room.

This is known as a [Gray code](https://en.wikipedia.org/wiki/Gray_code).

</details>
