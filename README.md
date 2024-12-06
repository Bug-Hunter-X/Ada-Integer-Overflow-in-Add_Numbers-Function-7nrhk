# Ada Integer Overflow Bug

This repository demonstrates a common yet subtle bug in Ada programs: integer overflow.  The `Add_Numbers` function, while seemingly simple, can produce incorrect results if the input integers are large enough that their sum exceeds the maximum value for the `Integer` type.

The bug is described in `bug.ada`. A solution demonstrating how to handle potential overflow is provided in `bugSolution.ada`.