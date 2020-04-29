---
api_location: "Util/Serialization/StreamerTGA.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil|Serialization:namespaceUtil_1_1Serialization"
keywords: StreamerTGA, ~StreamerTGA, loadBitmap, init
kind: class
layout: api
path: Util->Serialization
permalink: classUtil_1_1Serialization_1_1StreamerTGA
show_in_toc: true
sidebar: api_sidebar
title: "StreamerTGA"
toc: false
use_as_root: false
---

| public |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	StreamerTGA
	StreamerTGA --> AbstractBitmapStreamer
	click StreamerTGA "classUtil_1_1Serialization_1_1StreamerTGA"
	click AbstractBitmapStreamer "classUtil_1_1Serialization_1_1AbstractBitmapStreamer"
```

## Description





## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[StreamerTGA](#classUtil_1_1Serialization_1_1StreamerTGA_1a836cb57921ea8388155a1947de92d994)**() |
|  | |
|  | **[~StreamerTGA](#classUtil_1_1Serialization_1_1StreamerTGA_1a6f578956bb11b022764eaa59c1850080)**() |
|  | |
| [Reference](classUtil_1_1Reference) < [Bitmap](classUtil_1_1Bitmap) > | **[loadBitmap](#classUtil_1_1Serialization_1_1StreamerTGA_1a21c179a3e12b822070ed189c8d395d33)**(std::istream & void) |
{: .nohead .nowrap1 .api_section }


## Public Static Functions

|
| ------: | ----------------- |
|  | |
| bool | **[init](#classUtil_1_1Serialization_1_1StreamerTGA_1ab9f121ea986f6cd8680f5c995bd179db)**() |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Util::Serialization::StreamerTGA::StreamerTGA {#classUtil_1_1Serialization_1_1StreamerTGA_1a836cb57921ea8388155a1947de92d994}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[StreamerTGA](#classUtil_1_1Serialization_1_1StreamerTGA_1a836cb57921ea8388155a1947de92d994)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Serialization/StreamerTGA.h:27`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::StreamerTGA::~StreamerTGA {#classUtil_1_1Serialization_1_1StreamerTGA_1a6f578956bb11b022764eaa59c1850080}

| public | inline | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[~StreamerTGA](#classUtil_1_1Serialization_1_1StreamerTGA_1a6f578956bb11b022764eaa59c1850080)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Serialization/StreamerTGA.h:30`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::StreamerTGA::loadBitmap {#classUtil_1_1Serialization_1_1StreamerTGA_1a21c179a3e12b822070ed189c8d395d33}

| public | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Reference](classUtil_1_1Reference) < [Bitmap](classUtil_1_1Bitmap) > **[loadBitmap](#classUtil_1_1Serialization_1_1StreamerTGA_1a21c179a3e12b822070ed189c8d395d33)**( | std::istream & | **void** ) |
{: .nohead .nowrap1 .api_doc }



Load a bitmap from the given stream.


#### Parameters
**input**
:  Use the data from the stream beginning at the preset position.




#### Returns
 [Bitmap](classUtil_1_1Bitmap) object. The caller is responsible for the memory deallocation.





<sub>Defined in `Util/Serialization/StreamerTGA.h:33`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::Serialization::StreamerTGA::init {#classUtil_1_1Serialization_1_1StreamerTGA_1ab9f121ea986f6cd8680f5c995bd179db}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[init](#classUtil_1_1Serialization_1_1StreamerTGA_1ab9f121ea986f6cd8680f5c995bd179db)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Serialization/StreamerTGA.h:35`</sub>{:style="float: right"}

-------------------------------------------------------------------

