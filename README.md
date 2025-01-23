# Cuis-Smalltalk-Switch

This package adds the instance methods `switchOn:`
and `switchOn:otherwise:` to the `Object` class.
These are similar to the provided `caseOf:` and `caseOf:otherwise:` methods,
but differ in that they do not require the keys and values in the
collection of `Association` objects passed to the methods to be blocks.
This is convenient for the common case where the blocks just contain
a single literal value such as a number, symbol, or string.

The following code demonstrates using the `switchOn:otherwise:` method.

```smalltalk
command := #pause.

message := command switchOn: {
    #start -> 'Starting the system'.
    #pause -> 'Pausing the system'.
    #resume -> 'Resuming the system'.
    #stop -> 'Stopping the system'.
} otherwise: 'Unsupported command'.

message print.
```
