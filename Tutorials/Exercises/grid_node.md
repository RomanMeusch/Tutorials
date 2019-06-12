---
title: Creating Custom Nodes
permalink: exercises_grid_node
category: Exercises
author: Sascha Brandt
license: cc-by-sa 4.0
last_updated: May 28, 2019
order: 2
published: false
---

The goal of this exercise is to extend MinSG with a custom node.

## Exercise 1:

Required Languages: | C++ |
{:.lang_label}

* implement a grid node extending a group node
* each grid cell has a pointer to a node
* the cell can be empty, a group node, or geometry node (i.e., any node)
* the node has a fixed size
* adding a node moves its origin to the right cell (function has x,y parameters)

## Exercise 2:

Required Languages: | C++ | EScript |
{:.lang_label}

* create an EScript wrapper class

## Exercise 3:

Required Languages: | EScript |
{:.lang_label}

* create a script that clusters a scene into a grid
* requires to add intermediate node for correct transformations

## Exercise 4:

Required Languages: | EScript |
{:.lang_label}

* create node config gui for grid dimensions/size