---
title: Control Structures
permalink: control_structures
author: Henrik Heine, Florian Pieper, Sascha Brandt
license: cc-by-sa 4.0
path: Developer Guide->EScript
last_updated: October 30, 2019
order: 3
---

## Control Structures
EScript supports the typical set of control structures.

## if/else
```javascript
var result = someFunction ();
if(result) {
  out("Success");
} else {
  out("Failure");
}
var num = calculateSomething ();
if(num < 0)
  out("Too small");
else if(num >= 0 && num <= 100)
  out("Range okay");
else
  out("Too large");
```

## Ternary Operator ? :
```javascript
var abs = value >=0 ? value : -value;
```

## while and do-while
```javascript
var i = 0;
while(i<10) {
  out(i++, " ");
} // Output: 0 1 2 3 4 5 6 7 8 9
var j = 0;
do {
	out(j++, " ");
} while(j < 10); // Output: 0 1 2 3 4 5 6 7 8 9
```

## Looping with for
```javascript
var sum = 0;
for(var i = 0; i < 100; ++i) {
  sum += i;
}
outln("Sum of numbers: ", sum);
```

## Collection Iteration with foreach
The general syntax of the foreach loop is: `foreach(<container> as <key>, <value>) <statement>` or if you're only interested in the values: `foreach(<container> as <value>) <statement>`
```javascript
var chars = [’a’, ’c’, ’k’, ’b’, ’d’, ’x’, ’j’];
foreach(chars as var index, var currentChar) {
  if(currentChar === ’x’) {
    outln("Character ’x’ found at index ", index);
    break;
  }
}
foreach(chars as var currentChar) {
  if(currentChar === ’x’) {
    outln("Character ’x’ was found");
    break;
  }
}
```

## Exception Handling
Exceptions can be caught by using a try-catch statement:
```javascript
try {
  outln(42/0); // will throw a division by zero exception
} catch(e) {
  outln(e);
}
```
You can throw any object as an exception like this: `throw 42;` or `throw new Exception();`

But in order to get a full stacktrace you should throw an exception by calling the `Runtime.exception(msg)` function:
```javascript
Runtime.exception("some message");
```