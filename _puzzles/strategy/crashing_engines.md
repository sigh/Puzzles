---
title: Crashing engines
layout: default
---



Two engines are designed to be parachuted to the random points of the infinite
straight railway. After landing, they face in the same direction on the track
(either forwards or backwards).

The engines operate automatically by the on-board computer with a single
absolutely identical program inside each computer.

The engines both discard their parachutes at the point of landing, and then
their control programs start.

The computer can recognize the following 4 commands:

* `FORWARD` - Move one step forward.
* `BACKWARD` - Move one step backward.
* `GOTO <label>` - Switch control to the command marked by
        `<label>` (each command may have a unique label).
* `IF (CHUTE) THEN <command>` - If there is a parachute at that
        point, execute `<command>` (any command described above). The
        engines cannot recognize if the parachute is their own.

You are the programmer of the engine on-board computer. Your goal is to make two
engines crash. Can you do that?

<details><summary></summary>

Use the following program:

    go:
        FORWARD
        IF(CHUTE) THEN GOTO run
        BACKWARD
        FORWARD
        GOTO go
    run:
        FORWARD
        GOTO run

### Proof

First note that the engines always travel forwards overall. Since they are both
facing the same direction they will continue going forward (in the `go`
loop) at the same speed until the one who is following finds the parachute of
the other. It will then start moving at a faster speed than the first (in the
`run` loop), as it no longer has to do a `BACKWARD FORWARD` every
iteration. Thus it will eventually catch the first.

</details>
