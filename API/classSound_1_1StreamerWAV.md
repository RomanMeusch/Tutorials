---
api_location: "Sound/Serialization/StreamerWAV.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Sound:namespaceSound"
keywords: StreamerWAV, ~StreamerWAV, loadAudio, init
kind: class
layout: api
path: Sound
permalink: classSound_1_1StreamerWAV
show_in_toc: true
sidebar: api_sidebar
title: "StreamerWAV"
toc: false
use_as_root: false
---

| public |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	StreamerWAV
	StreamerWAV --> AbstractAudioStreamer
	click StreamerWAV "classSound_1_1StreamerWAV"
	click AbstractAudioStreamer "classSound_1_1AbstractAudioStreamer"
```

## Description





## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[StreamerWAV](#classSound_1_1StreamerWAV_1a05acbb96ce35133fff7e5f90231f8078)**() |
|  | |
|  | **[~StreamerWAV](#classSound_1_1StreamerWAV_1a1b9f7a14be5c37d7668bfb90630179a6)**() |
|  | |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > | **[loadAudio](#classSound_1_1StreamerWAV_1a32f53514563b451d50bb7419b3dc8cc6)**(std::istream & void) |
{: .nohead .nowrap1 .api_section }


## Public Static Functions

|
| ------: | ----------------- |
|  | |
| bool | **[init](#classSound_1_1StreamerWAV_1a0174a60fef1eff0dc7d60159071e7a5d)**() |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Sound::StreamerWAV::StreamerWAV {#classSound_1_1StreamerWAV_1a05acbb96ce35133fff7e5f90231f8078}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[StreamerWAV](#classSound_1_1StreamerWAV_1a05acbb96ce35133fff7e5f90231f8078)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Sound/Serialization/StreamerWAV.h:22`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::StreamerWAV::~StreamerWAV {#classSound_1_1StreamerWAV_1a1b9f7a14be5c37d7668bfb90630179a6}

| public | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[~StreamerWAV](#classSound_1_1StreamerWAV_1a1b9f7a14be5c37d7668bfb90630179a6)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Sound/Serialization/StreamerWAV.h:23`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::StreamerWAV::loadAudio {#classSound_1_1StreamerWAV_1a32f53514563b451d50bb7419b3dc8cc6}

| public | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > **[loadAudio](#classSound_1_1StreamerWAV_1a32f53514563b451d50bb7419b3dc8cc6)**( | std::istream & | **void** ) |
{: .nohead .nowrap1 .api_doc }



Load audio data from the given stream.


#### Parameters
**input**
:  Use the data from the stream beginning at the preset position.




#### Returns
 [Buffer](classSound_1_1Buffer) object. The caller is responsible for the memory deallocation.





<sub>Defined in `Sound/Serialization/StreamerWAV.h:25`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::StreamerWAV::init {#classSound_1_1StreamerWAV_1a0174a60fef1eff0dc7d60159071e7a5d}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[init](#classSound_1_1StreamerWAV_1a0174a60fef1eff0dc7d60159071e7a5d)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Sound/Serialization/StreamerWAV.h:27`</sub>{:style="float: right"}

-------------------------------------------------------------------

