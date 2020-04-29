---
api_location: "API/E_MinSG/Ext/TreeBuilder/E_TreeBuilder.cpp:32:14"
author: Generated using <a href="https://github.com/MeisterYeti/WhatsUpDoc">WhatsUpDoc</a>
breadcrumbs: "MinSG:escript_namespace_MinSG"
keywords: EXACT_CUBES, LOOSE_FACTOR, MAX_CHILD_COUNT, MAX_TREE_DEPTH, PREFERE_CUBES, USE_GEOMETRY_BB, rebuildAsBinaryTree, rebuildAsOcTree, rebuildAsKDTree, rebuildAsQuadTree, rebuildAsList
kind: namespace
layout: e_api
path: MinSG->Helper->TreeBuilder
permalink: escript_namespace_MinSG_TreeBuilder
show_in_toc: true
sidebar: e_api_sidebar
title: "TreeBuilder"
toc: false
use_as_root: true
---

## Description

Provides functions for reorganizing the data structure of scene graphs.<br/>Example:
```js
MinSG.TreeBuilder.rebuildAsOcTree(scene, {
	MinSG.TreeBuilder.MAX_TREE_DEPTH: 10,
	MinSG.TreeBuilder.MAX_CHILD_COUNT: 8,
	MinSG.TreeBuilder.LOOSE_FACTOR: 2,
	MinSG.TreeBuilder.PREFERE_CUBES: true,
	MinSG.TreeBuilder.USE_GEOMETRY_BB: false,
	MinSG.TreeBuilder.EXACT_CUBES: true,
});
```


## Attributes

|
| --------------------------------------------------------------------------------------------------------------------------------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | 
| **[MinSG.TreeBuilder.EXACT_CUBES](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1ad333a071f16644dd29f865fad9cbcaba)**     | Boolean. If set, the bounding box is expanded to a cube/square before splitting (quadtree, octree). Don't forget to disable `use geometry bounding boxes´.                                                                                             | 
| **[MinSG.TreeBuilder.LOOSE_FACTOR](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1aca56fa8d9fbbdcaba2f17eefc6cec09b)**    | Number. The scale factor for boxes when inserting nodes. If you don't want a loose tree, set this value to one.                                                                                                                                        | 
| **[MinSG.TreeBuilder.MAX_CHILD_COUNT](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1a3f84d3e02551715b0e746a648b328a19)** | Number. The maximum number of nodes stored in leaves. Leaves with more nodes will be split up as long as the maximum depth is not reached.                                                                                                             | 
| **[MinSG.TreeBuilder.MAX_TREE_DEPTH](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1ad875f2e2af45a5538383d9090aa7268a)**  | Number. The maximum depth of the created tree. Leaves in depth >= maximum will not be split.                                                                                                                                                           | 
| **[MinSG.TreeBuilder.PREFERE_CUBES](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1a8fa3b8265b293554b7287516290d63df)**   | Boolean. If set, bounding boxes will not always split in all dimensions (quadtree, octree, kd-tree).<br/>If the ratio between maximum and minimum extent of the bounding box gets greater than squareroot of two, only the large dimensions are split. | 
| **[MinSG.TreeBuilder.USE_GEOMETRY_BB](namespaceMinSG_1_1TreeBuilder#namespaceMinSG_1_1TreeBuilder_1ab6d886cb58ab86b66db62f26774d42c2)** | Boolean. If set, bounding boxes of the geometry instead of those of the previous step are used for splitting (quadtree, octree, binary tree, kd-tree).                                                                                                 | 
{: .nohead .nowrap1 }

## Functions

|
| ------------------------------------------------: | -------------------------------------------------------------------------------------------------------------------------------------------- | 
| **MinSG.TreeBuilder.rebuildAsBinaryTree**(p0, p1) | [ESF] void MinSG.rebuildAsBinaryTree(MinSG.GroupNode node, Map options)<br/>Builds a binary tree by splitting allways the largest dimension. | 
| **MinSG.TreeBuilder.rebuildAsKDTree**(p0, p1)     | [ESF] void MinSG.rebuildAsKDTree(MinSG.GroupNode node, Map options)<br/>Builds several variants of kd-trees.                                 | 
| **MinSG.TreeBuilder.rebuildAsList**(p0, p1)       | [ESF] void MinSG.rebuildAsList(MinSG.GroupNode node, Map options)<br/>Builds a simple list.                                                  | 
| **MinSG.TreeBuilder.rebuildAsOcTree**(p0, p1)     | [ESF] void MinSG.rebuildAsOcTree(MinSG.GroupNode node, Map options)<br/>Builds several variants of octrees.                                  | 
| **MinSG.TreeBuilder.rebuildAsQuadTree**(p0, p1)   | [ESF] void MinSG.rebuildAsQuadTree(MinSG.GroupNode node, Map options)<br/>Builds several variants of quadtrees.                              | 
{: .nohead .nowrap1 }

