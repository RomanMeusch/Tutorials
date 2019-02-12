/*
* This file is part of the open source part of the
* Platform for Algorithm Development and Rendering (PADrend).
* Web page: http://www.padrend.de/
* Copyright (C) 2018 Sascha Brandt <sascha@brandt.graphics>
* 
* PADrend consists of an open source part and a proprietary part.
* The open source part of PADrend is subject to the terms of the Mozilla
* Public License, v. 2.0. You should have received a copy of the MPL along
* with this library; see the file LICENSE. If not, you can obtain one at
* http://mozilla.org/MPL/2.0/.
*/
GLOBALS.objToJSON := fn(obj, var d=0) {
  if(obj === void) {
    return "void";
  } else if(obj.isA(Number)) {
    return obj;
  } else if(obj.isA(String)) {
    return "\"" + obj + "\"";
  } else if(obj.isA(Array)) {
    if(obj.empty())
      return "[ ]";
    var s = "[\n";
    foreach(obj as var v) {
      s += " " * (d+2) + thisFn(v, d+2) + ",\n";
    }
    s += " " * d + "]";
    return s;
  } else if(obj.isA(Map)) {
    if(obj.empty())
      return "{ }";
    var s = "{\n";
    foreach(obj as var n, var v) {
      s += " " * (d+2) + "\"" + n + "\": " + thisFn(v, d+2) + ",\n";
    }
    s += " " * d + "}";
    return s;
  } else if(obj._getAttributes().empty()) {
    return obj;
  } 
  var s = "{\n";
  foreach(obj._getAttributes() as var n, var v) {
    s += " " * (d+2) + "\"" + n + "\": " + thisFn(v, d+2) + ",\n";
  }
  s += " " * d + "}";
  return s;
};

GLOBALS.mapToObj := fn(obj) {
  if(obj.isA(Array)) {
    var tmp = [];
    foreach(obj as var v) {
      tmp += thisFn(v);
    }
    return tmp;
  } else if(obj.isA(Map)) {
    var tmp = new Map;
    foreach(obj as var n, var v) {
      tmp[n] = thisFn(v);
    }
    return new ExtObject(tmp);
  }
  return obj;
};

GLOBALS.Align := new Namespace;
Align.LEFT := 0;
Align.RIGHT := 1;
Align.CENTER := 2;

GLOBALS.MarkdownTable := new Type;
var T = GLOBALS.MarkdownTable;
T.rows @(init) := Array;
T.align @(init) := Array;
T.colSize @(init) := Array;
T.classes @(init) := Array;
T.useTitle := false;
T._constructor ::= fn(_useTitle, _align...) {
  this.align = _align;
  this.useTitle = _useTitle;
};
T.addClass ::= fn(cl...) {
  this.classes.append(cl);
};
T.addRow ::= fn(values...) {
  while(colSize.count() < values.count())
    colSize += 0;
  while(align.count() < values.count())
    align += Align.LEFT;
  foreach(values as var i, var v) {
    colSize[i] = [colSize[i], v.toString().length()].max();
  }
  this.rows += values;
};
T.renderRow @(private) ::= fn(i) {
  var s = "| ";
  foreach(rows[i] as var j, var v) {
    s += v.toString();
    var len = v.toString().length();
    s += " " * (colSize[j] - len);
    s += " | ";
  }
  s += "\n";
  return s;
};
T.render ::= fn() {
  var s = "";
  if(rows.empty())
    return s;
  if(useTitle)
    s += renderRow(0);
  else 
    s += "|\n";
  s += "| ";
  foreach(colSize as var i, var l) {
    s += (align[i] == Align.CENTER) ? ":" : "-";
    if(l>2) s += "-" * (l - 2);
    s += (align[i] != Align.LEFT) ? ":" : "-";
    s += " | ";
  }
  s += "\n";
  for(var i=0; i<rows.count(); ++i)
    s += renderRow(i);
  if(!classes.empty()) {
    s += "{: ";
    foreach(classes as var cl)
      s += cl + " ";
    s += "}\n";
  }
  s += "\n";
  return s;
};