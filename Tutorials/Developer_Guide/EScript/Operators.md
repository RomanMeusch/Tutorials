---
author: Henrik Heine, Florian Pieper, Sascha Brandt
last_updated: October 30, 2019
license: cc-by-sa 4.0
order: 6
path: Developer Guide->EScript
permalink: escript_operators
title: Operators in EScript
---

In EScript there are several default operator and also the possibility to overload operators. In the following you find a short introduction to operators.

## Operator Precendence
The following table summarizes the operator precendence from highest (0) to lowest (22).

| Precendence | Operator | Description | Associativity |
| ----- | ----- | ----- | ----- |
| 0 | `@` | | Right |
| 1 | `.`<br>`[ ]`<br>`( )` | Member access<br>Indexing<br>Function call | Left |
| 2 | `new` | Create new instance | Left |
| 3 | `fn` | Function definition | Right |
| 4 | `++`<br>`--`<br>(unary) `-`<br>`~`<br>`!` | Increment<br>Decrement<br>Unary minus<br>Bitwise not<br>Logical not | Right |
| 5 | `*` `/` | Multiplication and Division | Left |
| 6 | `%` | Modulo | Left |
| 7 | `+` `-` | Addition and Subtraction | Left |
| 8 | `<<` `>>` | Left and Right shift | Left |
| 9 | `<` `>` `<=` `>=` `~=` | Relational operators | Left |
| 10 | `==` `!=` `===` `!==` <br> <code>---&#124;></code> <br> `->` | Relational operators<br>Inheritance test<br>Object binder | Left |
| 11 | `=>` | Parameter binder | Left |
| 12 | `&` | Bitwise and | Left |
| 13 | `^` | Bitwise xor | Left |
| 14 | <code>&#124;</code> | Bitwise or | Left |
| 15 | `&&` | Logical and | Right |
| 16 | <code>&#124;&#124;</code> | Logical or | Right |
| 17 | `?:` | Ternary operator `a?b:c` | Right |
| 18 | `=` | Assignment | Right |
| 19 | `:=` | Attribute declaration | Right |
| 20 | `::=`<br><code>*= /= %= += -= &= ^= &#124;=</code> | Type attribute declaration<br>Compound assignments | Right |
| 21 | `...` | Varargs | Left |
| 22 | `,` | Comma | Left |

## Operator Overloading
In EScript it is also possible to overload several operators. This happens on a 'per instance' level. This means that an overloaded operator is a function that is called on the object. For unary operators this means that the operator function doesn't have a parameter and the operand is the `this` object. For binary operators, the function has a single argument, which is the operand to the right of the operator. The left operand is the `this` object. The following code shows a simple example class, which overrides the `+` operator:
```javascript
static T = new Type;
T.value := 0;
T._constructor ::= fn(value) {
  this.value = value;
};
T."+" ::= fn(other) {
  return new T(this.value + other.value);
};
```

One special thing in EScript is that you can overload most operators as unary and binary operators. If it is the binary version, you just write the corresponding operator in quotes, like in the example above. If you want to define the operator as an unary operator in front of the operand, you append `_pre` to it, like `"+_pre"`. If you want to define an unary operator that comes after the operand you append `_post`, like `"+_post"`. One special thing here is the unary minus, which is defined by `"_-_pre"`.
The following operators exist and can be overloaded with the pattern described earlier. Exceptions and additional notes are described afterwards.
```javascript
+ - * / %
& | ^
+= -= *= /= %= &= |= ^= ~=
<< >>
< > <= >= == != === !==
! ~
++ --
@ ...
=> ->
---|>
```
* The unary minus is not defined by `-_pre`, but instead by `_-_pre`.
* It is not possible to override `!_pre`
* Even if it is possible to override `===` and `!==`, it is **strongly** discouraged!
* It is advised to return the `this` object for the following binary operators: `+= -= *= /= %= &= |= ^= ~=`
* It is advised to return a boolean value for the following binary operators: `< > <= >= == != === !==`
* It is **strongly** discouraged to override `->` and `---|>`

Of course you could do many cool and strange things, but it is also advised to not abuse this cool feature. For example in most cases it doesn't make much sense to define a `+=_pre` operator. Just because you *can* define it, doesn't mean you *should* define it! Only use this feature where it is appropriate. For example it is a good idea override `+=` in order to add something to itself. For example the `Array` object uses this in order to append a new value.

### Simple Example
This simple hand made point class shows you how you could use operator overloading.
```javascript
static Point = new Type;
Point.x := 0;
Point.y := 0;
Point._constructor ::= fn(Number x = 0, Number y = 0) {
	this.x = x;
	this.y = y;
};
Point."+" ::= fn([Point, Number] other) {
	if(other ---|> Point)
		return new Point(x + other.x, y + other.y);
	return new Point(x + other, y + other);
};
Point."+=" ::= fn([Point, Number] other) {
	if(other ---|> Point) {
		x += other.x;
		y += other.y;
	} else {
		x += other;
		y += other;
	}
	return this;
};
Point.toString ::= fn() {
	return "(" + x + ", " + y + ")";
};

var a = new Point(10,0);
var b = new Point(0,20);
outln( "a : ", a.toString() );
outln( "b : ", b.toString() );
outln( "a + b : ", (a + b).toString() );
outln( "a+=10 : ", (a+=10).toString() );
outln( "a : ", a.toString() );
```

You could also do funny things, like this:
```javascript
Number."%_post" ::= fn() { return this / 100; };
```
And now you can simply calculate with percentages:
```javascript
outln(420 * 10%); // Output: 42
```

You can even define a factorial function:
```javascript
Number."!_post" ::= fn() {
	var result = 1;
	for(var i=1; i <= this; i++)
    result *= i;
	return result;
};

outln(5!); // Output: 120
```

### Indexing Operator
EScript does not only allow operator overloading for 'simple' operators, like + and -, but also for more complex ones, like the indexing operator: `[]`

EScript distinguishes between setting and getting a value via the index operator. In order to get a value via the index operator you define a function called `_get` with a single parameter, which is the given index. In order to set a value, you define a function called `_set` with two parameters, the key and the value.

The following example defines a new type, which can be used like an array, but which uses negative indices to access the content 'backwards', so -1 refers to the last item of the underlying array:
```javascript
var MyArray = new Type;
MyArray.array @(private) := void;
MyArray._constructor ::= fn([Array, void] content) {
	if(content) this.array = content;
	else this.array = new Array();
};
MyArray._get ::= fn(Number key) {
	if(key < 0) key = array.size() + key;
	return array[key];
};
MyArray._set ::= fn(Number key, value) {
	if(key < 0) key = array.size() + key;
	array[key] = value;
};

var arr = new MyArray([1,2,3]);
outln(arr[0]); // first item
outln(arr[-1]); // last item
```

### Call Operator
EScript also allows us to override the call operator. Therefore it is possible to use an object just like a function. This is done by defining a function called `_call`. This function must have at least one parameter, which is the `caller`. The rest of the parameters can be arbitrary. Example:
```javascript
static MyType = new Type;
MyType._call ::= fn(caller) {
	outln("caller = ", caller);
};

MyType(); // Output: caller = void
var t = new MyType();
t(); // Output: caller = void

var obj = new ExtObject();
obj.myType := new MyType();
obj.myType(); // Output: caller = #ExtObject:ExtObject:0x...
```
