---
title: Data Types and Operators
permalink: data_types_and_operators
author: Henrik Heine, Florian Pieper, Sascha Brandt
license: cc-by-sa 4.0
path: Developer Guide->EScript
last_updated: October 30, 2019
order: 1
---

## Primitive Types
EScript supports the following primitive `call-by-value` types:
* `Number` representing double precision numbers. Number literals must be either integrals (decimal, hexadecimal or binary) or floating point numbers. Example: `42 27.4 0x1a -2.7e+10 0b101010`
* `String` must be surrounded by either `"` or by `'`. Example `"test"` and `'test'`. Strings can contain the typical escape sequences and can contain newline characters.
* `Bool` Either `true` or `false`
* `Identifier` immutable name starting with a dollar sign, which is often used for constants: `$example`
* `Void` The `void` value is similar to the null value of many high level languages.

In an expression `false` and `void` are the only values that are evaluated as false. Every other value (also the numeric value `0`) is evaluated as true.
```javascript
outln(false || false); // Output: false
outln(false || void); // Output: false
outln(false || 0); // Output: true
outln(false || ""); // Output: true
```

## Some Operators
```javascript
outln( 2+40 ); // Output: 42
outln( 2*21 ); // Output: 42
outln( "4" + "2" ); // Output: 42
outln( "foo"+"bar" ); // Output: foobar
outln( "wup " * (6/2) ); // Output: wup wup wup
outln( 1>2 ); // Output: false
outln( !true ); // Output: false
outln( true & true ); // Output: true
outln( false || true ); // Output: true
outln( "foo" == "bar" ); // Output: false
outln( "foo" != "bar" ); // Output: true
```
Strings are automatically converted to numbers, if they are ussed in a binary expression and the left operand is a number:
```javascript
outln( 12 + "3" ); // Output: 15
outln( 10 * "10" ); // Output: 100
outln( 10 == "10" ); // Output: true
outln( 10 == "10.0" ); // Output: true
```
If the left operand is a string, the right operand is automatically converted to a string:
```javascript
outln( "12" + 3 ); // Output: 123
outln( "10" == 10 ); // Output: true
outln( "10.0" == 10 ); // Output: false
```
EScript supports many different operators. The precedence is given by the table in [OperatorPrecedence.md](OperatorPrecedence.md)
## Equality
EScript supports different equality operators. One with automatic conversion (`==`) and one without(`===`).
```javascript
outln( 10 == "10" ); // Output: true
outln( 10 === "10" ); // Output: false
outln( 10 === 10 ); // Output: true
outln( true == "foo" ); // Output: true
outln( true === "true" ); // Output: false
outln( "true" == true ); // Output: true
outln( "true" === true ); // Output: false
```

## Calling Functions
Functions can be called just like in C or JavaScript:
```javascript
// call global function 'load':
load("someScript.escript");
// call function 'saveTextFile' in namespace 'IO':
IO.saveTextFile( "foo.txt" , "bar" );
// call global method 'outln'
outln(a, b, c, 42, "test");
```

## Math Functions
Many functions that are typically present in a math namespace are directly defined for all numbers. For example instead of calling `sin` or `sqrt` with a number as a parameter, you call the function on the number object itself:
```javascript
outln(9.sqrt()); // Output: 3
outln((3.141).sin()); // Output: 0.000592654
```

## Local Variables
Local variables are declared with the `var` keyword followed by the name of the variable:
```javascript
var foo; // empty variable named foo (containing void)
var x = 500 - 80 / 2; // variable x containing a number
// The variable "message" will be of type String
var message = "Please click the button";
// Dynamically change the type to Number
message = 5;
```
One important difference to C is, that local variables are valid in the tighest enclosing block, but *excluding* functions defined inside the block. So they are also valid *before* they are declared. Local variables and parameters are allocated on the stack for every call of the surrounding function.
```javascript
{
	outln(x); // Output: void
	var x = 5;
	outln(x); // Output: 5
  var fun = fn() {
    outln(x); // warning: Variable not found 'x'
  };
}
```
The following script will throw a warning: `Variable not found: 'x'`
```javascript
{
	outln(x);
}
```

## Static Variables
The scope of static variables is the tighest enclosing block, *including* functions defined inside the block. Static variables are allocated *once* for all calls of the enclosing function.
```
static factorial = fn( Number n ) {
  return (n == 0) ? 1 : factorial (n - 1) * n; // factorial is visible, because it is static
};
out( factorial( 5 ) ); // Output: 120
```