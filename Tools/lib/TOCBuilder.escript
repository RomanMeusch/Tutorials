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

T.entries @(init) := Array;

T.addToTOC ::= fn(String file) {
	var fileContents;
	try{
		fileContents = IO.loadTextFile(file);
	}catch(e){
		Runtime.warn("TOCBuilder: Could not load file '" + file + "'");
		return false;
	}
	var frontmatter = parseFrontmatter(fileContents);
	if(!frontmatter)
		return false;
	
	frontmatter["file"] = file;
	entries += new ExtObject(frontmatter);
	return true;
};

/*T.addEntry ::= fn(title, category, link, subcategory=void, order=void, published=void) {
	var entry = new ExtObject({
			$title : title,
			$category : category,
			$permalink : link
	});
	if(subcategory)
		entry.subcategory := subcategory;
	if(order)
		entry.order := order;
	if(published!=void)
		entry.published := published;
	entries += entry;
};*/

T.parseFrontmatter @(private) ::= fn(String input) {
	if(!input.beginsWith("---"))
		return false;
	
	var start = 4;
	var end = input.find("---", start);
	if(!end) {
		outln("TOCBuilder: missing final '---' in frontmatter.");
		return false;
	}
	
	var lines = input.substr(start, end-start).trim().split("\n");
	var frontmatter = new Map;
	// simple yaml parsing. Only supports "key: value" entries.
	foreach(lines as var line) {
		line = line.trim();
		var splitPos = line.find(":");
		if(!splitPos)
			continue;
		var key = line.substr(0, splitPos);
		var value = line.substr(splitPos+1);
		frontmatter[key.trim()] = value.trim();
	}
	return frontmatter;
};

T.checkFields @(private) ::= fn(entry) {
	// required fields
	foreach([$title, $permalink] as var field) {
		if(!entry.isSet(field)) {
			outln("WARNING: missing required field '", field ,"' in frontmatter of file '", entry.file, "'");
			return false;
		}
	}
	// update optional fields	
	if(entry.isSet($order))
		entry.order = entry.order.toNumber();
	else
		entry.order := 10000;
	
	if(!entry.isSet($published))
		entry.published := true;
	else
		entry.published := entry.published.toLower() == "true";
	if(!entry.isSet($show_in_toc))
		entry.show_in_toc := true;
	else
		entry.show_in_toc := entry.show_in_toc.toLower() == "true";
	if(!entry.published)
		entry.show_in_toc = false;
		
	if(!entry.isSet($path)) {
		var cat = entry.isSet($category) ? entry.category : void;
		var subcat = entry.isSet($subcategory) ? entry.subcategory : void;
		if(!cat)
			entry.path := "";
		else if(!subcat)
			entry.path := cat;
		else
			entry.path := cat + "->" + subcat;
	}
	
	if(!entry.isSet($sidebar))
		entry.sidebar := "home_sidebar";
	
	if(!entry.isSet($kind))
		entry.kind := "page";
		
	if(!entry.isSet($use_as_root))
		entry.use_as_root := false;
	else
		entry.use_as_root := entry.use_as_root.toLower() == "true";
		
	return true;
};

T.buildTOC ::= fn(sidebar, product) {
	var toc = new ExtObject({
		'title' : product,
		'url' : void,
		'order' : 0,
		'kind' : 'root',
		'items' : [],
	});
		
	foreach(entries as var entry) {
		if(!checkFields(entry) || !entry.show_in_toc || entry.sidebar != sidebar)
			continue;
				
		var path = entry.path.split("->");
		var parent = toc;
		foreach(path as var p) {
			p = p.trim();
			if(p.empty())
				continue;
			var order = 1000;
			if(p.contains("@")) {
				[p, order] = p.split("@");
				order = order.toNumber();
				p = p.trim();
			}
			
			// find entry
			var items = false;
			foreach(parent.items as var f) {
				if(f.title == p) {
					items = f;
					break;
				}
			}
			if(!items) {
				items = new ExtObject({
					'title' : p,
					'url' : void,
					'order' : order,
					'kind' : 'folder',
					'items' : [],
				});
				parent.items += items;
			}
			items.order = [items.order, order].min();
			parent = items;
		}
		
		if(entry.use_as_root) {
			parent.url = entry.permalink;
			parent.order = [parent.order, entry.order].min();
			parent.kind = entry.kind;
		} else {
			parent.items += new ExtObject({
				'title' : entry.title,
				'url' : entry.permalink,
				'order' : entry.order,
				'kind' : entry.kind,
				'items' : [],
			});
		}
	}
	
	var todo = [toc];
	while(!todo.empty()) {
		var entry = todo.popFront();
		entry.items.sort(fn(a,b) { return a.order < b.order || (a.order == b.order && a.title < b.title); });
		foreach(entry.items as var item)
			todo += item;
	}	
	return toc;
};

T.toYAML ::= fn(toc, indent=0) {
	var s = " " * indent;
	var yaml = "title: " + toc.title + "\n";
	if(toc.url)
		yaml += s + "url: /" + toc.url + "\n";
	if(toc.kind)
		yaml += s + "kind: " + toc.kind + "\n";
	if(!toc.items.empty()) {
		yaml += s + "items:\n";
		foreach(toc.items as var item) {
			yaml += s + "- " + thisFn(item, indent+2);
		}
	}
	return yaml;
};


return T;