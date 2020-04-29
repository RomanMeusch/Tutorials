---
api_location: "Util/Serialization/AbstractBitmapStreamer.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil|Serialization:namespaceUtil_1_1Serialization"
keywords: ~AbstractBitmapStreamer, loadBitmap, saveBitmap, AbstractBitmapStreamer
kind: class
layout: api
path: Util->Serialization
permalink: classUtil_1_1Serialization_1_1AbstractBitmapStreamer
show_in_toc: true
sidebar: api_sidebar
title: "AbstractBitmapStreamer"
toc: false
use_as_root: false
---

| public | abstract |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	AbstractBitmapStreamer
	AbstractBitmapStreamer --> AbstractStreamer
	StreamerPNG --> AbstractBitmapStreamer
	StreamerSDL --> AbstractBitmapStreamer
	StreamerSDLImage --> AbstractBitmapStreamer
	StreamerSTB --> AbstractBitmapStreamer
	StreamerTGA --> AbstractBitmapStreamer
	click AbstractBitmapStreamer "classUtil_1_1Serialization_1_1AbstractBitmapStreamer"
	click AbstractStreamer "classUtil_1_1Serialization_1_1AbstractStreamer"
	click StreamerPNG "classUtil_1_1Serialization_1_1StreamerPNG"
	click StreamerSDL "classUtil_1_1Serialization_1_1StreamerSDL"
	click StreamerSDLImage "classUtil_1_1Serialization_1_1StreamerSDLImage"
	click StreamerSTB "classUtil_1_1Serialization_1_1StreamerSTB"
	click StreamerTGA "classUtil_1_1Serialization_1_1StreamerTGA"
```

## Description



Interface for classes that are capable of converting between bitmaps and streams.



**Author**: Benjamin Eikel



**Date**: 2011-09-08





## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[~AbstractBitmapStreamer](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a1f2311dd39f2f992522037f5f773b6d3)**() |
|  | |
| [Reference](classUtil_1_1Reference) < [Bitmap](classUtil_1_1Bitmap) > | **[loadBitmap](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1aac585c02e09ca0e7a1801bf75fe7e993)**(std::istream & void) |
|  | |
| bool | **[saveBitmap](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1af75f55e87d84c1c9299bc65f799a6ba7)**(const [Bitmap](classUtil_1_1Bitmap) & void, std::ostream & void) |
{: .nohead .nowrap1 .api_section }


## Protected Functions

|
| ------: | ----------------- |
|  | |
|  | **[AbstractBitmapStreamer](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a63907e0c28e93bda0359543b26e04b4a)**() <br/> Creation is only possible in subclasses. |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Util::Serialization::AbstractBitmapStreamer::~AbstractBitmapStreamer {#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a1f2311dd39f2f992522037f5f773b6d3}

| public | inline | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[~AbstractBitmapStreamer](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a1f2311dd39f2f992522037f5f773b6d3)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Serialization/AbstractBitmapStreamer.h:34`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::AbstractBitmapStreamer::loadBitmap {#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1aac585c02e09ca0e7a1801bf75fe7e993}

| public | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Reference](classUtil_1_1Reference) < [Bitmap](classUtil_1_1Bitmap) > **[loadBitmap](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1aac585c02e09ca0e7a1801bf75fe7e993)**( | std::istream & | **void** ) |
{: .nohead .nowrap1 .api_doc }



Load a bitmap from the given stream.


#### Parameters
**input**
:  Use the data from the stream beginning at the preset position.




#### Returns
 [Bitmap](classUtil_1_1Bitmap) object. The caller is responsible for the memory deallocation.





<sub>Defined in `Util/Serialization/AbstractBitmapStreamer.h:43`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::AbstractBitmapStreamer::saveBitmap {#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1af75f55e87d84c1c9299bc65f799a6ba7}

| public | inline | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[saveBitmap](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1af75f55e87d84c1c9299bc65f799a6ba7)**( | const [Bitmap](classUtil_1_1Bitmap) & | **void**, |
| | std::ostream & | **void** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Save a bitmap to the given stream.


#### Parameters
**bitmap**
:   [Bitmap](classUtil_1_1Bitmap) object to save.



**output**
:  Use the stream for writing beginning at the preset position.




#### Returns
`true`if successful,`false`otherwise.





<sub>Defined in `Util/Serialization/AbstractBitmapStreamer.h:52`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::AbstractBitmapStreamer::AbstractBitmapStreamer {#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a63907e0c28e93bda0359543b26e04b4a}

| protected | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[AbstractBitmapStreamer](#classUtil_1_1Serialization_1_1AbstractBitmapStreamer_1a63907e0c28e93bda0359543b26e04b4a)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Creation is only possible in subclasses.





<sub>Defined in `Util/Serialization/AbstractBitmapStreamer.h:59`</sub>{:style="float: right"}

-------------------------------------------------------------------

