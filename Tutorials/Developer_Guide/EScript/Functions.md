---
author: Henrik Heine, Florian Pieper, Sascha Brandt
last_updated: October 30, 2019
license: cc-by-sa 4.0
order: 4
path: Developer Guide->EScript
permalink: functions
title: Functions
---

One important difference to C is, that in EScript functions are first class objects and that they don't have a name. Functions are defined with the `fn` keyword and because a function is just another object, the definition is a statement and therefore it must end with a semicolon.
```javascript
var square = fn(num) {
  return num * num;
}; // don't forget this semicolon!
var a = square(5);
outln( a ); // Outputs: 25
```

## Recursion
Remember local variables are only visible inside the surrounding scope, but *excluding* nested functions. Therefore the following code wouldn't work, because the `factorial` variable is not visible inside the function.
```javascript
var factorial = fn(Number x){
	if(x>1)
		return x*factorial(x-1); // Warning: Variable 'factorial' not found
	return x;
};
out( factorial(4) );
```
To overcome this issue you must define the factorial variable static or you can use the special `thisFn` keyword, which is a reference to the current function:
```javascript
var factorial = fn(Number x){
	if(x>1)
		return x*thisFn(x-1);
	return x;
};
out( factorial(4) ); // Output: 24
```

## Type Restrictions
The parameters of a function can be restricted to specific types. An exception is thrown if the type does not match.
```javascript
var square = fn(Number num) {
  return num * num;
};
square(5); // ok
square("foo"); // runtime error
```
It is also possible to allow multiple types for a single parameter. Furthermore it is important to know, that void is an independent type!
```javascript
var print = fn([Number, String] value) {
  outln(value);
};
print(42); // ok
print("foo"); // ok
print(void); // runtime error
var print2 = fn([Number, String, void] value) {
  outln(value);
};
print(void); // ok
```

## Default Values
Parameters can have default values. If a type restriction is specified, the default value must also be of that type!
```javascript
var print = fn(value = "no value") {
  outln(value);
};
print("hello"); // Output: hello
print(); // Output: no value
var print2 = fn(String value = void) {
  outln(value);
};
print2(); // runtime error
```

## Varargs
The last parameter of a function definition can be used for a variable argument list. The function can then accept arbitrary many values that are stored as an array in the last parameter.
```javascript
var sum = fn( numbers... ) { // all arguments are automatically passed as an array
  var sum = 0;
  foreach( numbers as var n)
    sum += n;
  return sum;
};
outln( sum( 10,100,1000,4 ) ); // Output: 1114
```

## Multiple Return Values
EScript does not support multiple return values directly, but it has some syntactic sugar to automatically assign multiple values to the content of an array: `[ lValue* ] = Array`
```javascript
var calc = fn() {
  return [17, 42]; // returns an array
};
[var a, var b] = calc();
outln("a:", a, " b:", b); // Output: a:17 b:42
```

## Parameter Binding
You can set the first parameters of a function to fixed values by using a so called function binder (*FnBinder*): `Array => Function`
The result of this expression is a FnBinder object that is used as a wrapper around the function. You can use this object like a normal function, but it will always call the underlying function with the first parameters fixed:
```javascript
var myFun = fn(a, b, c) {
  out("a:", a, "b:", b, " c:", c );
};
myFun(1, 2, 3); // Output: a:1 b:2 c:3
// create a wrapper that always passes 100 and 200 as the first two parameters
var myBoundFun = [ 100, 200 ] => myFun;
myBoundFun( 300 ); // Output: a:100 b:200 c:300
```

Furthermore the *FnBinder* is used to combine an object with a function: `Object -> Function`
The result of this expression is again a FnBinder object. The bound object will be the `this` object of the function.
```javascript
var print = fn() {
	outln(this);
};
print(); // Output: void
var boundedPrint = 42 -> print;
boundedPrint(); // Output: 42
```