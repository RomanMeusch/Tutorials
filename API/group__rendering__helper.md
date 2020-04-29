---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Rendering:namespaceRendering"
keywords: enableGLErrorChecking, disableGLErrorChecking, checkGLError, getGLTypeString, getGLTypeSize, getGLType, getAttributeType, outputGLInformation, getGraphicsLanguageVersion, getShadingLanguageVersion, isExtensionSupported, readDepthValue, enableDebugOutput, disableDebugOutput, pushDebugGroup, popDebugGroup, triggerCapture, startCapture, endCapture
kind: group
layout: api
path: Rendering->Helper
permalink: group__rendering__helper
show_in_toc: true
sidebar: api_sidebar
title: "Helper"
toc: false
use_as_root: true
---

| void |
{:.api_label}

## Description





## Classes

|
| ----- | ---------------------------------------------------------------------- | 
| class | [Rendering::OcclusionQuery](classRendering_1_1OcclusionQuery) <br/>    | 
| class | [Rendering::QueryObject](classRendering_1_1QueryObject) <br/>          | 
| class | [Rendering::StatisticsQuery](classRendering_1_1StatisticsQuery) <br/>  | 
{: .nohead }

## Functions

|
| ------: | ----------------- |
|  | |
| void | **[enableGLErrorChecking](#group%5F%5Frendering%5F%5Fhelper_1gad50bf79ce5f7446d1999f685e8fbd2f9)**() |
|  | |
| void | **[disableGLErrorChecking](#group%5F%5Frendering%5F%5Fhelper_1ga1ddd8dd1c3044f1008eccd26cc75deda)**() |
|  | |
| void | **[checkGLError](#group%5F%5Frendering%5F%5Fhelper_1gae24addf57dfb7555a884a5872820af1b)**(const char * file, int line) |
|  | |
| const char * | **[getGLTypeString](#group%5F%5Frendering%5F%5Fhelper_1ga09c07bc78be39bf190320e943217d21e)**(uint32_t type) |
|  | |
| uint32_t | **[getGLTypeSize](#group%5F%5Frendering%5F%5Fhelper_1ga092cf02af46ab9abcd6ea8be5edc0ee7)**(uint32_t type) |
|  | |
| uint32_t | **[getGLType](#group%5F%5Frendering%5F%5Fhelper_1ga9e7988cb6ac0a6b8e5095d8f31c227ec)**( [Util::TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)  type) |
|  | |
| [Util::TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1) | **[getAttributeType](#group%5F%5Frendering%5F%5Fhelper_1gadc1f942627ab5ee0b8630b4b2a154615)**(uint32_t glType) |
|  | |
| void | **[outputGLInformation](#group%5F%5Frendering%5F%5Fhelper_1ga5a363b4eba863b9b687ac4aad2a2f22a)**(std::ostream & output) |
|  | |
| const char * | **[getGraphicsLanguageVersion](#group%5F%5Frendering%5F%5Fhelper_1ga50f6ff59ec3ae23836a22a6d6a117cdf)**() |
|  | |
| const char * | **[getShadingLanguageVersion](#group%5F%5Frendering%5F%5Fhelper_1ga9083573e97de19c9c69d506f616e9514)**() |
|  | |
| bool | **[isExtensionSupported](#group%5F%5Frendering%5F%5Fhelper_1ga2075f3c65eaa44c75f022c3fb356f477)**(const char * extension) |
|  | |
| float | **[readDepthValue](#group%5F%5Frendering%5F%5Fhelper_1gaadf934792d9fa890a45d168c9da9916b)**(int32_t x, int32_t y) |
|  | |
| void | **[enableDebugOutput](#group%5F%5Frendering%5F%5Fhelper_1ga5b041a52d40350109dd0b8b78a0b4a50)**() |
|  | |
| void | **[disableDebugOutput](#group%5F%5Frendering%5F%5Fhelper_1gabaed9d4620892c9810fea35f95d513c9)**() |
|  | |
| void | **[pushDebugGroup](#group%5F%5Frendering%5F%5Fhelper_1gac4985e05f151cec5c12d3af1e3c1ee80)**(const std::string & name) |
|  | |
| void | **[popDebugGroup](#group%5F%5Frendering%5F%5Fhelper_1ga76845856539fcd5f51bc7f01e085ec6e)**() |
|  | |
| void | **[triggerCapture](#group%5F%5Frendering%5F%5Fhelper_1ga5ba93ae7ee614547a36db4ae299482b9)**() |
|  | |
| void | **[startCapture](#group%5F%5Frendering%5F%5Fhelper_1ga0bdd8212d99abc003f4aeeb171fb1040)**() |
|  | |
| void | **[endCapture](#group%5F%5Frendering%5F%5Fhelper_1ga6073319e0831877120208309bb6967bd)**() |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> enableGLErrorChecking {#group__rendering__helper_1gad50bf79ce5f7446d1999f685e8fbd2f9}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[enableGLErrorChecking](#group%5F%5Frendering%5F%5Fhelper_1gad50bf79ce5f7446d1999f685e8fbd2f9)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/Helper.h:27`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> disableGLErrorChecking {#group__rendering__helper_1ga1ddd8dd1c3044f1008eccd26cc75deda}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[disableGLErrorChecking](#group%5F%5Frendering%5F%5Fhelper_1ga1ddd8dd1c3044f1008eccd26cc75deda)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/Helper.h:28`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> checkGLError {#group__rendering__helper_1gae24addf57dfb7555a884a5872820af1b}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[checkGLError](#group%5F%5Frendering%5F%5Fhelper_1gae24addf57dfb7555a884a5872820af1b)**( | const char * | **file**, |
| | int | **line** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/Helper.h:29`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getGLTypeString {#group__rendering__helper_1ga09c07bc78be39bf190320e943217d21e}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const char * **[getGLTypeString](#group%5F%5Frendering%5F%5Fhelper_1ga09c07bc78be39bf190320e943217d21e)**( | uint32_t | **type** ) |
{: .nohead .nowrap1 .api_doc }



Return a human-readable description for the given OpenGL type.


#### Parameters
**type**
:  Valid values are GL_BOOL, GL_UNSIGNED_BYTE, GL_BYTE, GL_UNSIGNED_SHORT, GL_SHORT, GL_UNSIGNED_INT, GL_INT, GL_FLOAT, and GL_DOUBLE.




#### Returns
String description of the type, or an empty string if the type is invalid.





<sub>Defined in `Rendering/Helper.h:37`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getGLTypeSize {#group__rendering__helper_1ga092cf02af46ab9abcd6ea8be5edc0ee7}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint32_t **[getGLTypeSize](#group%5F%5Frendering%5F%5Fhelper_1ga092cf02af46ab9abcd6ea8be5edc0ee7)**( | uint32_t | **type** ) |
{: .nohead .nowrap1 .api_doc }



Return the size of the given OpenGL type.


#### Parameters
**type**
:  Valid values are GL_BOOL, GL_UNSIGNED_BYTE, GL_BYTE, GL_UNSIGNED_SHORT, GL_SHORT, GL_UNSIGNED_INT, GL_INT, GL_FLOAT, and GL_DOUBLE.




#### Returns
Size in bytes, or zero if the type is invalid.





<sub>Defined in `Rendering/Helper.h:45`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getGLType {#group__rendering__helper_1ga9e7988cb6ac0a6b8e5095d8f31c227ec}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint32_t **[getGLType](#group%5F%5Frendering%5F%5Fhelper_1ga9e7988cb6ac0a6b8e5095d8f31c227ec)**( |  [Util::TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)  | **type** ) |
{: .nohead .nowrap1 .api_doc }



Returns the OpenGL type for the given resource attribute type.


#### Parameters
**type**
:  the attribute type (e.g., TypeConstant).




#### Returns
The corresponding OpenGL type constant.





<sub>Defined in `Rendering/Helper.h:53`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getAttributeType {#group__rendering__helper_1gadc1f942627ab5ee0b8630b4b2a154615}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Util::TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1) **[getAttributeType](#group%5F%5Frendering%5F%5Fhelper_1gadc1f942627ab5ee0b8630b4b2a154615)**( | uint32_t | **glType** ) |
{: .nohead .nowrap1 .api_doc }



Returns the resource attribute type for the given OpenGL type.


#### Parameters
**type**
:  the OpenGL type.




#### Returns
The corresponding attribute type.





<sub>Defined in `Rendering/Helper.h:61`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> outputGLInformation {#group__rendering__helper_1ga5a363b4eba863b9b687ac4aad2a2f22a}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[outputGLInformation](#group%5F%5Frendering%5F%5Fhelper_1ga5a363b4eba863b9b687ac4aad2a2f22a)**( | std::ostream & | **output** ) |
{: .nohead .nowrap1 .api_doc }



Write information about the current OpenGL context to the given stream.


#### Parameters
**output**
:  Output stream that the data is written to





*See also*: `glGetString`





<sub>Defined in `Rendering/Helper.h:69`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getGraphicsLanguageVersion {#group__rendering__helper_1ga50f6ff59ec3ae23836a22a6d6a117cdf}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const char * **[getGraphicsLanguageVersion](#group%5F%5Frendering%5F%5Fhelper_1ga50f6ff59ec3ae23836a22a6d6a117cdf)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Return the supported graphics language version.


#### Returns
Null-terminated string containing the supported graphics language version



*See also*: constant`GL_VERSION`of function`glGetString`



*See also*: `glewIsSupported`





<sub>Defined in `Rendering/Helper.h:78`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getShadingLanguageVersion {#group__rendering__helper_1ga9083573e97de19c9c69d506f616e9514}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const char * **[getShadingLanguageVersion](#group%5F%5Frendering%5F%5Fhelper_1ga9083573e97de19c9c69d506f616e9514)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Return the supported shading language version.


#### Returns
Null-terminated string containing the supported shading language version



*See also*: constant`GL_SHADING_LANGUAGE_VERSION`of function`glGetString`





<sub>Defined in `Rendering/Helper.h:86`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> isExtensionSupported {#group__rendering__helper_1ga2075f3c65eaa44c75f022c3fb356f477}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[isExtensionSupported](#group%5F%5Frendering%5F%5Fhelper_1ga2075f3c65eaa44c75f022c3fb356f477)**( | const char * | **extension** ) |
{: .nohead .nowrap1 .api_doc }



Check for support of a specific OpenGL extension.


#### Parameters
**extension**
:  Null-terminated string containing the name of the requested extension




#### Returns
`true`if the requested extension is supported,`false`otherwise.



*See also*: `glewIsSupported`





<sub>Defined in `Rendering/Helper.h:95`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> readDepthValue {#group__rendering__helper_1gaadf934792d9fa890a45d168c9da9916b}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| float **[readDepthValue](#group%5F%5Frendering%5F%5Fhelper_1gaadf934792d9fa890a45d168c9da9916b)**( | int32_t | **x**, |
| | int32_t | **y** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Read a single value from the depth buffer.



*See also*: `glReadPixels`





<sub>Defined in `Rendering/Helper.h:102`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> enableDebugOutput {#group__rendering__helper_1ga5b041a52d40350109dd0b8b78a0b4a50}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[enableDebugOutput](#group%5F%5Frendering%5F%5Fhelper_1ga5b041a52d40350109dd0b8b78a0b4a50)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Enable debug output that can be used to find errors or performance problems.



*See also*: OpenGL extension`GL_ARB_debug_output`





<sub>Defined in `Rendering/Helper.h:109`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> disableDebugOutput {#group__rendering__helper_1gabaed9d4620892c9810fea35f95d513c9}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[disableDebugOutput](#group%5F%5Frendering%5F%5Fhelper_1gabaed9d4620892c9810fea35f95d513c9)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Disable the debug output again.



*See also*:  [enableDebugOutput()](group%5F%5Frendering%5F%5Fhelper#group%5F%5Frendering%5F%5Fhelper_1ga5b041a52d40350109dd0b8b78a0b4a50) 





<sub>Defined in `Rendering/Helper.h:116`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> pushDebugGroup {#group__rendering__helper_1gac4985e05f151cec5c12d3af1e3c1ee80}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[pushDebugGroup](#group%5F%5Frendering%5F%5Fhelper_1gac4985e05f151cec5c12d3af1e3c1ee80)**( | const std::string & | **name** ) |
{: .nohead .nowrap1 .api_doc }



Push a named debug group into the command stream


#### Parameters
**name**
:  Name of the debug group





*See also*: `glPushDebugGroup`





<sub>Defined in `Rendering/Helper.h:124`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> popDebugGroup {#group__rendering__helper_1ga76845856539fcd5f51bc7f01e085ec6e}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[popDebugGroup](#group%5F%5Frendering%5F%5Fhelper_1ga76845856539fcd5f51bc7f01e085ec6e)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Pop the active debug group

*See also*: `glPopDebugGroup`





<sub>Defined in `Rendering/Helper.h:130`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> triggerCapture {#group__rendering__helper_1ga5ba93ae7ee614547a36db4ae299482b9}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[triggerCapture](#group%5F%5Frendering%5F%5Fhelper_1ga5ba93ae7ee614547a36db4ae299482b9)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Triggers a capture of the current GL state in RenderDoc.
> **Note**: Requires RenderDoc






<sub>Defined in `Rendering/Helper.h:136`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> startCapture {#group__rendering__helper_1ga0bdd8212d99abc003f4aeeb171fb1040}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[startCapture](#group%5F%5Frendering%5F%5Fhelper_1ga0bdd8212d99abc003f4aeeb171fb1040)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Starts capturing of the GL state in RenderDoc.
> **Note**: Requires RenderDoc






<sub>Defined in `Rendering/Helper.h:142`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> endCapture {#group__rendering__helper_1ga6073319e0831877120208309bb6967bd}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[endCapture](#group%5F%5Frendering%5F%5Fhelper_1ga6073319e0831877120208309bb6967bd)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Ends the active capture.
> **Note**: Requires RenderDoc






<sub>Defined in `Rendering/Helper.h:148`</sub>{:style="float: right"}

-------------------------------------------------------------------

