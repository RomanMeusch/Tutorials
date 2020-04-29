---
author: Henrik Heine, Florian Pieper, Sascha Brandt
last_updated: October 30, 2019
license: cc-by-sa 4.0
order: 2
path: Developer Guide->EScript
permalink: builtin_collection_types
title: Built-in Collection Types
---

EScript already contains two different collection types (Array and Map), both of them are able to change their size dynamically.

Arrays are collections with numbers as keys and arbitrary objects as values. They can be created by using the array syntax or by instantiating a new array object:
```javascript
var numbers = [3, 23, 7, 3, 100, 1, 35];
var colors = ["red", "green", "blue"];
var array = new Array();
array[10] = 42;
outln(numbers[4]); // Output: 100
outln(numbers[10]); // Output: void
outln(numbers.count()); // Output: 7
outln(number.empty()); // Output: false
```

Maps are basically associative arrays with arbitrary keys (except `void`) and arbitrary values. EScript also supports a map literal, using curly braces. If you want to create an empty map, you must instantiate a new map, because the literal won't work. This is due to the fact that empty curly braces are recognized as empty blocks and not as empty maps.
```javascript
var fruits = {
  "lemon" : "yellow",
  "cherry" : "red"
};
fruits["apple"] = "green";
var map = new Map();
map[42] = "some Value";
```