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
static T = new Type;

static SchemaUtil = load(__DIR__ + "/SchemaUtil.escript");

//----------------------

static mdLink = fn(link, name) {
	if(!link)
		return name;
	return "[" + name + "](" + link.replaceAll("__","%5F%5F") + ")";
};

//----------------------

static mdNote = fn(note) {
	return "> **Note**: " + note;
	//return "{% include note.html content=\"" + note + "\" %}";
};

//----------------------

static mdWarn = fn(note) {
	return "> **Warning**: " + note;
	//return "{% include warning.html content=\"" + note + "\" %}";
};

//----------------------

static quoted = fn(s) {
	return "\"" + s + "\"";
};

//----------------------

static unescape = fn(s) {
	return s.replaceAll({
		"&amp;" : "\&",
		"&lt;" : "\<",
		"&gt;" : "\>",
		"&quot;" : "\"",
		"&apos;" : "\'",
	});
};

//----------------------

static containsAny = fn(s, param...) {
	foreach(param as var p) {
		if(s.contains(p))
			return true;
	}
	return false;
};

//----------------------

static assureArrayAttr = fn(obj, name) {
	if(!obj.isSet(name))
		obj.setAttribute(name, []);
	if(!obj.getAttribute(name).isA(Array))
		obj.setAttribute(name, [obj.getAttribute(name)]);
};

//----------------------

static assureAttr = fn(obj, name, def) {
	if(!obj.isSet(name))
		obj.setAttribute(name, def);
};

//----------------------

T.compounds @(init) := Map;
T.namespaces @(init) := Map;
T.classes @(init) := Map;
T.structs @(init) := Map;
T.unions @(init) := Map;
T.members @(init) := Map;
T.groups @(init) := Map;
T.schema @(init) := SchemaUtil;

//----------------------

T.resolveRef ::= fn(ref) {
	if(ref.kindref == "compound")
		return ref.refid;
	var member = members[ref.refid];
	if(!member)
		return void;
	// rebuild link
	return member.id.substr(0, member.id.rFind("_")) + "#" + ref.refid;
};

//----------------------

T.toMarkdown ::= fn(element) {
	if(element === void)
		return '';
	var s = '';
	if(element.isA(String)) {
		s = unescape(element);
	} else if(element.isA(Array)) {
		foreach(element as var value)
			s += toMarkdown(value);
	} else if(element.isA(SchemaUtil.Element)) {
		// opening the element
		switch (element.getName()) {
			case 'ref': return ' ' + mdLink(resolveRef(element), toMarkdown(element.data())) + ' ';
			case 'emphasis': s = '*'; break;
			case 'parametername':
			case 'bold': s = '**'; break;
			case 'computeroutput': s = '`'; break;
			case 'parameterlist':
				if (element.kind == 'exception') {
					s = '\n#### Exceptions\n';
				} else {
					s = '\n#### Parameters\n';
				}
				return s + toMarkdown(element.parameteritem);
			case 'parameteritem': 
				s += toMarkdown(element.parameternamelist) + "\n:  ";
				s += toMarkdown(element.parameterdescription) + "\n"; 
				break;
			case 'parameternamelist': s = toMarkdown(element.parametername); break;
			case 'programlisting': s = '\n\n```cpp\n' + toMarkdown(element.codeline); break;
			case 'codeline': s = toMarkdown(element.highlight); break;
			case 'verbatim': s = '\n\n```\n'; break;
			case 'itemizedlist': s = '\n\n' + toMarkdown(element.listitem); break;
			case 'listitem': s = '* ' + toMarkdown(element.para); break;
			case 'sp': s = ' '; break;
			case 'heading': s = '## '; break;
			case 'xrefsect': s += '\n> '; break;
			case 'simplesect':
				switch(element.kind) {
					case "see": s = '\n\n*See also*: '; break;
					case "return": s = '\n#### Returns\n'; break;
					case "author": s = '\n\n**Author**: '; break;
					case "authors": s = '\n\n**Authors**: '; break;
					case "version": s = '\n\n**Version**: ';  break;
					case "since": s = '\n\n**Since**: ';  break;
					case "date": s = '\n\n**Date**: ';  break;
					case "note":
						return s + "\n" + mdNote(toMarkdown(element.para)) + "\n";
						break;
					case "warning": 
						return s + "\n" + mdWarn(toMarkdown(element.para)) + "\n";
						break;
					case "pre": s = '\n\n**Pre**: '; break;
					case "post": s = '\n\n**Post**: '; break;
					case "copyright": s = '\n\n*(C)*: '; break;
					case "invariant": break;
					case "remark": s = "\n\n> "; break;
					case "attention": s = "\n\n> "; break;
					case "par": s = "\n\n"; break;
					case "rcs": break;
				}
				return s + toMarkdown(element.para);
				break;
			case 'formula':
				s = element.text;
				if (s.beginsWith('$') && s.endsWith('$')) return s;
				if (s.startsWith('\\[') && s.endsWith('\\]'))
					s = s.substring(2, s.length() - 2).trim();
				return '\n$$\n' + s + '\n$$\n';
			case 'note':
				s = "{% include note.html content=\""; break;
		}

		// recurse on children
		foreach(element as var value)
			s += toMarkdown(value);

		// closing the element
		switch (element.getName()) {
			case 'para': s += '\n\n'; break;
			case 'emphasis': s += '*'; break;
			case 'parametername':
			case 'bold': s += '**'; break;
			case 'parameteritem': s += '\n'; break;
			case "computeroutput": s += '`'; break;
			case 'entry': s += ' | '; break;
			case 'verbatim':
			case 'programlisting': s += '\n```\n'; break;
			case 'codeline': s += '\n'; break;
			case 'ulink': s = mdLink(element.url, s); break;
			case 'itemizedlist': s += '\n'; break;
			case 'listitem': s += '\n'; break;
			case 'xreftitle': s += ': '; break;
			case 'row':
				s = '\n' + s;
				/*if (element.$$ && element.$$[0].$.thead == "yes") {
				element.$$.forEach(function (th, i) {
				s += (i ? ' | ' : '\n') + '---------';
				});
				}*/
			case 'note':
				s += "\" %}"; break;
			break;
		}

			
	} else {
		s = element.toString();
	}
	return s;
};

//----------------------

static sectionTitles = {
	"public-type" : "Public Types",
	"public-func" : "Public Functions",
	"public-attrib" : "Public Attributes",
	"public-static-func" : "Public Static Functions",
	"public-static-attrib" : "Public Static Attributes",
	"protected-type" : "Protected Types",
	"protected-func" : "Protected Functions",
	"protected-attrib" : "Protected Attributes",
	"protected-static-func" : "Protected Static Functions",
	"protected-static-attrib" : "Protected Static Attributes",
	//"define" : "",
	"typedef" : "Typedefs",
	"enum" : "Enumerations",
	"func" : "Functions",
	"var" : "Variables",
};

T.writeSection ::= fn(obj) {
	var title = sectionTitles[obj.kind];
	if(!title) {
		if(obj.kind == "user-defined")
			title = obj.header;
		else
			return false;
	}
	
	if(obj.memberdef.empty())
		return false;
	
	var s = "## " + title + "\n\n";
	
	s += "|\n";
	s += "| ------: | ----------------- |\n";
	foreach(obj.memberdef as var m) {
		switch(m.prot) {
			case "public":
			case "protected":
				break;
			default:
				continue;
		}
		switch(m.kind) {
			case "function":
			case "enum":
			case "typedef":
			case "variable":
				break;
			default:
				s += "| |\n";
				continue;
		}
		
		// template parameter line
		s += "| ";
		if(m.templateparamlist) {
			s += "template\< ";
			var params = [];
			foreach(m.templateparamlist.param as var p)
				params += toMarkdown(p.type) + " " + toMarkdown(p.declname);
			s += params.implode(", ") + " \> ";
		}
		s += " | |\n";
		
		// member line  
		var type = toMarkdown(m.type).trim();
		switch(m.kind) {
			case "function":
				s += "| " + type + " | **" + mdLink("#" + m.id, m.name) + "**";
				var params = [];
				foreach(m.param as var p)
					params += toMarkdown(p.type) + " " + p.declname;
				s += "(" + params.implode(", ") + ")";
				if(m.const == "yes") s += " const";
				break;
			case "enum":
				s += "| enum | **" + mdLink("#" + m.id, m.name) + "**";        
				if(!type.empty()) s += " : " + type;        
				var enums = [];
				foreach(m.enumvalue as var enum)
					enums += toMarkdown(enum.getData('name')).trim();
				s += " {" + enums.implode(", ") + "}";
				break;
			case "typedef":
				s += "| typedef " + type + " | **" + mdLink("#" + m.id, m.name) + "** ";
				break;
			case "variable":
				s += "| " + type + " | **" + mdLink("#" + m.id, m.name) + "** ";
				break;
		}
						
		// description line
		var brief = toMarkdown(m.briefdescription).trim();
		if(!brief.empty())
			s += " <br/> " + toMarkdown(brief);
		s += " |\n";
	}
	s += "{: .nohead .nowrap1 .api_section }\n";
	
	return s;
};

//----------------------
	
T.writeDocumentation ::= fn(m,c) {
	switch(m.kind) {
		case "function":
		case "enum":
		case "typedef":
		case "variable":
			break;
		default:
			return false;
	}
	switch(m.prot) {
		case "public":
		case "protected":
			break;
		default:
			return false;
	}
	
	var title = c.kind == 'group' ? m.name : (c.compoundname + "::" + m.name);
	var s = "### <small>" + m.kind + "</small><br/> " + title + " {#" + m.id + "}\n\n";
		
	// labels
	s += "| " + m.prot + " |";
	if(m.getAttribute("static") == "yes") s += " static |";
	if(m.const == "yes") s += " const |";
	if(m.inline == "yes") s += " inline |";
	if(m.explicit == "yes") s += " explicit |";
	if(m.virt == "virtual" || m.virt == "pure-virtual") s += " virtual |";
	s += "\n{:.api_label}\n\n";
	
	s += "|\n";
	s += "| ------: | ----------------- |\n";
	
	// template parameter line
	s += "| ";
	if(m.templateparamlist) {
		s += "template\< ";
		var params = [];
		foreach(m.templateparamlist.param as var p)
			params += toMarkdown(p.type) + " " + toMarkdown(p.declname) + (p.defval ? " = " + toMarkdown(p.defval) : "");
		s += params.implode(", ") + " \>";
	}
	s += " |\n";
	
	// member definition
	s += "| ";
	var type = toMarkdown(m.isSet($type) ? m.type : "").trim();
	switch(m.kind) {
		case "function": {      
			s += type + " **" + mdLink("#" + m.id, m.name) + "**";
			var params = [];
			foreach(m.param as var p)
				params += toMarkdown(p.type) + " | **" + p.declname + "**";
			s += "( | ";
			s += params.implode(", |\n| | ");
			if(params.count() > 1) s += " |\n|  ";
			s += " )";
			if(m.const == "yes") s += " const";
			break;
		}
		case "enum": {
			s += "enum **" + mdLink("#" + m.id, m.name) + "**";
			if(!type.empty()) s += " : " + type + " ";
			break;
		}
		case "typedef": {
			s += "typedef " + type + " **" + mdLink("#" + m.id, m.name) + "** ";
			break;
		}
		case "variable": {
			s += type + " **" + mdLink("#" + m.id, m.name) + "** ";
			break;
		}
	}
	s += " |\n";
	s += "{: .nohead .nowrap1 .api_doc }\n\n";
	
	// enum table
	if(m.kind == "enum") {
		var enumTbl = new MarkdownTable(true);
		enumTbl.addRow("Enumerator", "", "Description");
		foreach(m.enumvalue as var enum) {
			var descr = toMarkdown(enum.getData('detaileddescription')).trim();
			if(descr.empty())
				descr = toMarkdown(enum.getData('briefdescription')).trim();
			enumTbl.addRow(toMarkdown(enum.getData('name')).trim(), toMarkdown(enum.getData('initializer')), descr);
		}
		s += enumTbl.render();
	}
					
	// description line
	s += toMarkdown(m.briefdescription) + "\n\n";
	s += toMarkdown(m.detaileddescription) + "\n\n";
	
	if(m.location)
		s += "<sub>Defined in `" + m.location.file + ":" + m.location.line + "`</sub>{:style=\"float: right\"}\n\n";
	
	s += "-------------------------------------------------------------------";
	
	return s;
};

//----------------------

T.collectKeywords ::= fn(c) {
	var keywords = [];
	foreach(c.sectiondef as var s) {
		foreach(s.memberdef as var m) {
			if(!containsAny(m.name, "*", "[", "]", "<", ">", "&", "=", "!", "+", "-", "/", "^"))
				keywords += m.name.split(":").back().trim();
		}
	}
	return keywords;
};

//----------------------

T.writeCompound ::= fn(c) {
	if(c.compoundname.beginsWith("std") || (c.kind == 'group' && !c.parent))
		return false;
	
	var brief = toMarkdown(c.briefdescription).trim();
	var keywords = collectKeywords(c);
	
	var parent = c;
	var breadcrumbs = [];
	var path = [];
	while(parent.parent) {
		//if(parent.group)
		//	path.pushFront(parent.group.title);
		parent = parent.parent;
		path.pushFront(parent.shortname);
		breadcrumbs.pushFront(parent.shortname + ":" + parent.id);
	}
	if(c.kind == 'namespace' || c.kind == 'group')
		path += c.shortname;
	
	if(path.empty())
		return false;
	
	var header = {
		"title" : quoted(c.shortname),
		"permalink" : c.id,
		"author" : "Generated using <a href=\"http://www.doxygen.nl/\">Doxygen</a>",
		"show_in_toc" : c.show_in_toc,
		"sidebar" : "api_sidebar",
		"layout" : "api",
		"kind" : c.kind,
		"breadcrumbs" : quoted(breadcrumbs.implode("|")),
		"toc" : false,
		"keywords" : keywords.implode(", "),
		"path" : path.implode("->"),
		"use_as_root" : (c.kind == 'namespace' || c.kind == 'group'),
	};
	
	if(c.location && c.kind != 'namespace')
		header["api_location"] = quoted(c.location.file);
			
	if(c.templateparamlist) {
		var template = "template\< ";
		var params = [];
		foreach(c.templateparamlist.param as var p)
			params += toMarkdown(p.type) + " " + toMarkdown(p.declname);
		template += params.implode(", ") + " \> ";
		header["template"] = quoted(template);
	}  
		
	var content = "---\n";
	foreach(header as var key, var value) {
		content += key + ": " + value + "\n";
	}
	content += "---\n\n";
		
	// labels
	if(c.kind != "namespace") {
		content += "| " + c.prot + " |";
		if(c.abstract == "yes") content += " abstract |";
		content += "\n{:.api_label}\n\n";
	}

	
	if(c.kind == "class" || c.kind == "type") {		
		// build inheritance graph
		content += "#### Inheritance Graph\n\n";
		content += "```mermaid\ngraph BT\n";
		content += "\t" + c.shortname + "\n";
		foreach(c.basecompoundref as var ref) {
			var obj = compounds[ref.refid];
			if(obj)
				content += "\t" + c.shortname + " --> " + obj.shortname + "\n";
		}
		foreach(c.derivedcompoundref as var ref) {
			var obj = compounds[ref.refid];
			if(obj)
				content += "\t" + obj.shortname + " --> " + c.shortname + "\n";
		}
		
		// make nodes clickable
		content += "\tclick " + c.shortname + " " + quoted(c.id) + "\n";
		foreach(c.basecompoundref as var ref) {
			var obj = compounds[ref.refid];
			if(obj)
				content += "\tclick " + obj.shortname + " " + quoted(obj.id) + "\n";
		}
		foreach(c.derivedcompoundref as var ref) {
			var obj = compounds[ref.refid];
			if(obj)
				content += "\tclick " + obj.shortname + " " + quoted(obj.id) + "\n";
		}
		content += "```\n\n";
		
		/*if(!c.basecompoundref.empty()) {
			content += "#### Inherits\n\n";
			foreach(c.basecompoundref as var ref) {
				var base = compounds[ref.refid];
				if(base)
					content += "* " + mdLink(ref.refid, base.compoundname) + "\n";
			}
			content += "\n\n";
		}
		
		if(!c.derivedcompoundref.empty()) {
			content += "#### Inherited\n\n";
			foreach(c.derivedcompoundref as var ref) {
				var derived = compounds[ref.refid];
				if(derived)
					content += "* " + mdLink(ref.refid, derived.compoundname) + "\n";
			}
			content += "\n\n";
		}*/
	}
	
	content += "## Description\n\n";
	content += brief + "\n\n";
	content += toMarkdown(c.detaileddescription);
	
	content += "\n\n";
	
	if(!c.innernamespace.empty()) {
		content += "## Namespaces\n\n";
		var table = new MarkdownTable(false);
		table.addClass(".nohead");
		foreach(c.innernamespace as var nsref) {
			var ns = nsref.ref;
			table.addRow("namespace", mdLink(ns.id, ns.compoundname) + " <br/> " + toMarkdown(ns.briefdescription).trim());
		}
		content += table.render();
	}
	
	if(!c.innerclass.empty()) {
		content += "## Classes\n\n";
		var table = new MarkdownTable(false);
		table.addClass(".nohead");
		foreach(c.innerclass as var cref) {
			var cl = cref.ref;
			table.addRow(cl.kind, mdLink(cl.id, cl.compoundname) + " <br/> " + toMarkdown(cl.briefdescription).trim());
		}
		content += table.render();
	}
	
	foreach(c.sectiondef as var s) {
		var sec = writeSection(s);
		if(sec) {
			content += sec + "\n\n";
		}
	}
	
	content += "-------------------------------------------------------------------\n\n";
	
	if(!c.sectiondef.empty()) {
		content += "## Documentation\n\n";
		foreach(c.sectiondef as var s) {
			foreach(s.memberdef as var m) {
				var doc = writeDocumentation(m,c);
				if(doc) {
					content += doc + "\n\n";
				}
			}
		}
	}
	
	return content;
};

//----------------------

T.updateHierarchy ::= fn() {
	
	// set default hierarchy for all non-group-compounds
	foreach(compounds as var id, var c) {
		foreach(c.innernamespace as var e) {
			e.ref := compounds[e.refid];
			if(e.ref && c.kind != 'group')
				e.ref.parent = c;
		}
		foreach(c.innerclass as var e) {
			e.ref := compounds[e.refid];
			if(e.ref && c.kind != 'group')
				e.ref.parent = c;
			if(c.kind == 'class')
				e.ref.show_in_toc = false; // Don't show inner classes
		}
		foreach(c.innergroup as var g) {
			g.ref := compounds[g.refid];
			if(g.ref)
				g.ref.parent = c;
		}
	}
	
	// insert groups into hierarchy	
	foreach(groups as var id, var g) {
		foreach(g.innerclass as var cref) {
			var parent = cref.ref.parent;
			cref.ref.parent = g;
			if(!g.parent)
				g.parent = parent;
			//cref.ref.show_in_toc = true; // only show classes in groups in toc
		}
		foreach(g.innernamespace as var nsref) {
			var parent = nsref.ref.parent;
			nsref.ref.parent = g;
			if(!g.parent)
				g.parent = parent;
		}
		foreach(g.innergroup as var gref) {
			var parent = gref.ref.parent;
			gref.ref.parent = g;
			if(parent != g && !g.parent)
				g.parent = parent;
		}
	}
	
	// try to guess group's namespace
	foreach(groups as var id, var g) {
		if(!g.parent && !g.innernamespace.empty()) {
			var top_ns = g.innernamespace.front().ref;
			while(top_ns.parent) {
				top_ns = top_ns.parent;
			}
			g.parent = top_ns;
		}
		if(!g.parent && !g.innerclass.empty()) {
			var top_ns = g.innerclass.front().ref;
			while(top_ns.parent) {
				top_ns = top_ns.parent;
			}
			g.parent = top_ns;
		}
		if(!g.parent && !g.sectiondef.empty()) {
			// try to guess namespace from member functions
			var m = false;
			foreach(g.sectiondef as var s) {
				if(!s.memberdef.empty()) {
					m = s.memberdef.front();
					break;
				}
			}
			if(m) {
				var ns = m.location.file.split("/").front();		
				foreach(namespaces as var id, var n) {
					if(n.compoundname == ns) {
						g.parent = n;
						break;
					}
				}
			}
		}
	}
};

//----------------------

T.writeMarkdown ::= fn(path) {
	if(!IO.isDir(path)) {
		Runtime.warn("Invalid path: " + path);
		return false;
	}
	if(!path.endsWith("/"))
		path += "/";
	updateHierarchy();
	foreach(compounds as var id, var c) {
		var md = writeCompound(c);
		if(md)
			IO.saveTextFile(path + id + ".md", md);
	}
};


//----------------------

T.initSchema ::= fn(file) {
	try {
		schema.parseSchema(file);
	} catch(e) {
		Runtime.warn("Could not parse schema '" + file + "': " + e);
		return false;
	}
};

//----------------------

T.parseFile ::= fn(file, outJSON=false) {
	var reader = new XML.MicroXMLReader;
	static rootObj;
	var objStack = [];
	
	reader.enter = [objStack] => this->fn(stack, tag) {
		schema.pushType();
		var obj = schema.createFromSchema(tag.name, tag.attributes);
		stack.pushBack(obj);
		return true;
	};
	
	reader.data = [objStack] => this->fn(stack, tagname, data) {
		var obj = stack.back();
		obj += data;
		return true;
	};
	
	reader.leave = [objStack] => this->fn(stack, tagname) {
		var obj = stack.popBack();
		schema.popType();
		
		if(tagname == "memberdef")
			members[obj.id] = obj;
		
		if(stack.empty()) {
			rootObj = obj;
		} else {
			stack.back() += obj;
		}
		return true;
	};
	
	try {
		reader.parse(file);
	} catch(e) {
		Runtime.warn("Could not parse file '" + file + "': " + e);
		return false;
	}
	
	if(!rootObj.getType() == "doxygen")
		return false;
	
	var compound = rootObj.compounddef;
	assureAttr(compound, $parent, false);
	assureAttr(compound, $show_in_toc, false);
	switch(compound.kind) {
		case "namespace":
			namespaces[compound.id] = compound;
			compound.show_in_toc = true;
			break;
		case "class":
			classes[compound.id] = compound;
			compound.show_in_toc = true;
			break;
		case "struct":
			structs[compound.id] = compound; break;
		case "union":
			unions[compound.id] = compound; break;
		case "group":
			groups[compound.id] = compound; 
			compound.show_in_toc = true;
			break;
		default:
			return false;
	}
	compounds[compound.id] = compound;	
	foreach(compound.sectiondef as var s) {
		foreach(s.memberdef as var m) {
			m.compound := compound;
		}
	}

	compound.shortname := compound.compoundname.split("::").back();
	if(compound.title)
		compound.shortname := compound.title.split("::").back();
	
	if(outJSON) {
		var filename = outJSON + "/" + compound.id + ".json";
		IO.saveTextFile(filename, objToJSON(compound));
	}
	return compound;
};

//----------------------

T.writeRefs ::= fn(fileName) {
	var refs = new Map;
	foreach(compounds as var id, var c)
		refs[c.compoundname] = c.id;
	foreach(members as var id, var m)
		refs[m.compound.compoundname + "::" + m.name] = m.compound.id + "#" + m.id;
	IO.saveTextFile(fileName, toJSON(refs));
};

//----------------------

return T;