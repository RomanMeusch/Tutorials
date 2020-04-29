---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Sound:namespaceSound"
keywords: loadAudio, loadAudio, registerAudioLoader
kind: namespace
layout: api
path: Sound->Serialization
permalink: namespaceSound_1_1Serialization
show_in_toc: true
sidebar: api_sidebar
title: "Serialization"
toc: false
use_as_root: true
---

## Description





## Functions

|
| ------: | ----------------- |
|  | |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > | **[loadAudio](#namespaceSound_1_1Serialization_1aae0797bcfee6cfacae82f53f48981021)**(const [Util::FileName](classUtil_1_1FileName) & url) |
|  | |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > | **[loadAudio](#namespaceSound_1_1Serialization_1a95e58d8d121370d5c6328c52c035d639)**(const std::string & extension, const std::string & data) |
|  | |
| bool | **[registerAudioLoader](#namespaceSound_1_1Serialization_1a8c70db6895b083707e60bc4b74cbe549)**(const std::string & extension, std::function< [AbstractAudioStreamer](classSound_1_1AbstractAudioStreamer) *()> loaderCreator) |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Sound::Serialization::loadAudio {#namespaceSound_1_1Serialization_1aae0797bcfee6cfacae82f53f48981021}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > **[loadAudio](#namespaceSound_1_1Serialization_1aae0797bcfee6cfacae82f53f48981021)**( | const [Util::FileName](classUtil_1_1FileName) & | **url** ) |
{: .nohead .nowrap1 .api_doc }



Load a single audio file from the given address. The type of the audio file is determined by the file extension.


#### Parameters
**file**
:  Address to the file containing the audio data.




#### Returns
A single audio file.





<sub>Defined in `Sound/Serialization/Serialization.h:34`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::Serialization::loadAudio {#namespaceSound_1_1Serialization_1a95e58d8d121370d5c6328c52c035d639}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Util::Reference](classUtil_1_1Reference) < [Buffer](classSound_1_1Buffer) > **[loadAudio](#namespaceSound_1_1Serialization_1a95e58d8d121370d5c6328c52c035d639)**( | const std::string & | **extension**, |
| | const std::string & | **data** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Create a audio buffer from the given data. The type of the bitmap has to be given as parameter.


#### Parameters
**extension**
:  File extension specifying the type of the bitmap.



**data**
:  Bitmap data.




#### Returns
A single bitmap.





<sub>Defined in `Sound/Serialization/Serialization.h:44`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Sound::Serialization::registerAudioLoader {#namespaceSound_1_1Serialization_1a8c70db6895b083707e60bc4b74cbe549}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[registerAudioLoader](#namespaceSound_1_1Serialization_1a8c70db6895b083707e60bc4b74cbe549)**( | const std::string & | **extension**, |
| | std::function< [AbstractAudioStreamer](classSound_1_1AbstractAudioStreamer) *()> | **loaderCreator** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Register a new streamer for the given file extension that supports loading of bitmaps.


#### Parameters
**extension**
:  File extension specifying the type of the bitmap.



**loaderCreator**
:  A function that creates a new streamer when called.




#### Parameters

:  





<sub>Defined in `Sound/Serialization/Serialization.h:54`</sub>{:style="float: right"}

-------------------------------------------------------------------

