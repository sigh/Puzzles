---
title: Bad processors
layout: default
---

You are an astronaut, and you have $$n$$ computer processors. The processors have
been exposed to cosmic radiation, but a majority of them are still good. Your
goal is to find one good processor.

Each processor can be used to test another. The tester processor will tell
you whether the other one is good or bad. Good processors always respond
accurately. Bad processors respond randomly.

Determine a strategy for finding one good processor with certainty that uses no
more than $$n-2$$ tests in the worst case.

<details><summary></summary>

First, if $$n$$ is even, throw one processor out. Now start a stack of processors,
initially, it is empty. Now:

* If the stack is currently empty, pick a processor from the remaining
  processors and push it onto the stack.
* If the stack is not empty, pick a processor and use it to test the
  processor on the top of the stack.

  * If the testing processor reports that the top of the stack is bad,
    then throw both the testing and tested processors.
  * If the testing processor reports that the top of the stack is good,
    the push it onto the stack so it becomes the new top.

* If the number of processors in in the stack is greater than the number
  of processors in the remaining pile, stop. The processor at the bottom
  of the stack is good.
* Otherwise repeat from the top.

### Proof of correctness

If $$n$$ is even there are at least 2 more good processors than
bad processors, so throwing out a processor keeps the majority. Now we can
assume the number of processors is odd.

Note that when processor reports that another processor is bad, at least
one of the tester or the tested must be bad. This is because two good processors
will never report bad when testing each other. Hence if we throw out the tester
and the tested processors on every test that reports bad we preserve the fact
that the good processors are in majority. Thus:

**Lemma 1:** The number of good processors in the stack and remaining
piles combined always outnumber the bad.

Because we start out with an odd number of processors, and we only throw out
processors 2 at a time, we have:

**Lemma 2:** The number of processors in the stack and remaining pile
combined is always odd.

Every iteration we always remove one processor from the remaining
pile. Therefore, unless both the stack and the remaining pile have zero
processors, the remaining pile will eventually have less processors than the
stack. However, by **Lemma 2** we have that the number of processors in
the stack and remaining pile combined can never be zero (as zero is not an odd
number). Thus:

**Lemma 3:** Our strategy always terminates.

Now every processor in the stack reported that the one before
it was good. This can only happen if the stack has zero or more good processors
at the bottom, followed by zero or more bad processors. There can be no good
processors on top of bad processors, otherwise the they would have reported bad
when testing.

**Lemma 4:** If our stack contains any good processors, then they located
in a contiguous chain at the bottom of the stack.

If the number of processors in the stack is greater
than the number of processors in the remaining pile then:

* By **Lemma 1** there must be at least one good processor in the stack.
* By **Lemma 4** the processor at the bottom of the stack must be good.
* By **Lemma 3** our strategy is guaranteed to terminate.

Thus our strategy always finds a good processor.

### Proof of runtime

We know that the first processor never does any testing, because it is added to
the chain straight away.

Furthermore the last remaining processor never does any testing:

* If the stack is empty, then it is added to the stack without being
  tested.
* The stack cannot have just one processor, or the total number of
  processors would be 2, violating **Lemma 2**.
* If the stack has more than 1 processor, then our strategy has already
  terminated, without the last processor being tested.

Each processor only performs a test when it is removed from the remaining
pile. Thus each processor performs a maximum of one test each. Because the first
and the last processors never perform any tests, we have that the maximum number
of tests performed is $$n-2$$.

</details>
