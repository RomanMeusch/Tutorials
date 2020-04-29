---
api_location: "Sound/Serialization/AbstractAudioStreamer.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Sound:namespaceSound"
keywords: ~AbstractAudioStreamer, loadAudio, AbstractAudioStreamer
kind: class
layout: api
path: Sound
permalink: classSound_1_1AbstractAudioStreamer
show_in_toc: true
sidebar: api_sidebar
title: "AbstractAudioStreamer"
toc: false
use_as_root: false
---

| public | abstract |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	AbstractAudioStreamer
	AbstractAudioStreamer --> AbstractStreamer
	StreamerFLAC --> AbstractAudioStreamer
	StreamerMP3 --> AbstractAudioStreamer
	StreamerWAV --> AbstractAudioStreamer
	click AbstractAudioStreamer "classSound_1_1AbstractAudioStreamer"
	click AbstractStreamer "classUtil_1_1Serialization_1_1AbstractStreamer"
	click StreamerFLAC "classSound_1_1StreamerFLAC"
	click StreamerMP3 "classSound_1_1StreamerMP3"
	click StreamerWAV "classSound_1_1StreamerWAV"
```

## Description



Interface for classes that are capable of converting between audio data and streams.



## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[~AbstractAudioStreamer](#classSound_1_1AbstractAudioStreamer_1adbf490e6c7ca0ed8f0058bb2f0284aa7)**() |
|  | |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > | **[loadAudio](#classSound_1_1AbstractAudioStreamer_1ab1f85df371d4c5a471931dfd5870cc5e)**(std::istream & void) |
{: .nohead .nowrap1 .api_section }


## Protected Functions

|
| ------: | ----------------- |
|  | |
|  | **[AbstractAudioStreamer](#classSound_1_1AbstractAudioStreamer_1a698fa34761ef49fdc5700b9c45594a35)**() <br/> Creation is only possible in subclasses. |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Sound::AbstractAudioStreamer::~AbstractAudioStreamer {#classSound_1_1AbstractAudioStreamer_1adbf490e6c7ca0ed8f0058bb2f0284aa7}

| public | inline | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[~AbstractAudioStreamer](#classSound_1_1AbstractAudioStreamer_1adbf490e6c7ca0ed8f0058bb2f0284aa7)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Sound/Serialization/AbstractAudioStreamer.h:27`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::AbstractAudioStreamer::loadAudio {#classSound_1_1AbstractAudioStreamer_1ab1f85df371d4c5a471931dfd5870cc5e}

| public | virtual |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > **[loadAudio](#classSound_1_1AbstractAudioStreamer_1ab1f85df371d4c5a471931dfd5870cc5e)**( | std::istream & | **void** ) |
{: .nohead .nowrap1 .api_doc }



Load audio data from the given stream.


#### Parameters
**input**
:  Use the data from the stream beginning at the preset position.




#### Returns
 [Buffer](classSound_1_1Buffer) object. The caller is responsible for the memory deallocation.





<sub>Defined in `Sound/Serialization/AbstractAudioStreamer.h:36`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::AbstractAudioStreamer::AbstractAudioStreamer {#classSound_1_1AbstractAudioStreamer_1a698fa34761ef49fdc5700b9c45594a35}

| protected | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[AbstractAudioStreamer](#classSound_1_1AbstractAudioStreamer_1a698fa34761ef49fdc5700b9c45594a35)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Creation is only possible in subclasses.





<sub>Defined in `Sound/Serialization/AbstractAudioStreamer.h:40`</sub>{:style="float: right"}

-------------------------------------------------------------------

