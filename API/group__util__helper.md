---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil"
keywords: output_priority_t, TypeConstant, info, encodeBase64, decodeBase64, loadLibrary, loadFunction, unloadLibrary, output, composeDebugMessage, getNumBytes, getTypeString, enableInfo, disableInfo, align, calcHash, md5, hash_combine, hash_param, hash_param, hash_param
kind: group
layout: api
path: Util->Helper
permalink: group__util__helper
show_in_toc: true
sidebar: api_sidebar
title: "Helper"
toc: false
use_as_root: true
---

| void |
{:.api_label}

## Description





## Namespaces

|
| --------- | -------------------------------------------------- | 
| namespace | [Util::MicroXML](namespaceUtil_1_1MicroXML) <br/>  | 
| namespace | [Util::Numeric](namespaceUtil_1_1Numeric) <br/>    | 
| namespace | [Util::Utils](namespaceUtil_1_1Utils) <br/>        | 
{: .nohead }

## Classes

|
| ----- | ------------------------------------------------------------------------------------------------------------- | 
| class | [Util::JSON_Parser](classUtil_1_1JSON%5F%5FParser) <br/>                                                      | 
| class | [Util::ProgressIndicator](classUtil_1_1ProgressIndicator) <br/>                                               | 
| class | [Util::Timer](classUtil_1_1Timer) <br/> High resolution timer.                                                | 
| class | [Util::TriState](classUtil_1_1TriState) <br/> Class that can hold one of three values: true, fals, undefined. | 
| class | [Util::DebugOutput](classUtil_1_1DebugOutput) <br/>                                                           | 
{: .nohead }

## Enumerations

|
| ------: | ----------------- |
|  | |
| enum | **[output_priority_t](#group%5F%5Futil%5F%5Fhelper_1ga0f166422ea57b5bb9879e2c3cc1c6467)** {OUTPUT_DEBUG, OUTPUT_WARNING, OUTPUT_ERROR} |
|  | |
| enum | **[TypeConstant](#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)** {UINT8, UINT16, UINT32, UINT64, INT8, INT16, INT32, INT64, FLOAT, DOUBLE, HALF} <br/> This constants should not change and may be used for serialization. |
{: .nohead .nowrap1 .api_section }


## Variables

|
| ------: | ----------------- |
|  | |
| DebugOutput | **[info](#group%5F%5Futil%5F%5Fhelper_1ga538b5e26779c3cf0a1466e4b4396e465)**  |
{: .nohead .nowrap1 .api_section }


## Functions

|
| ------: | ----------------- |
|  | |
| std::string | **[encodeBase64](#group%5F%5Futil%5F%5Fhelper_1ga0d32971994711e110b87d9defbee9035)**(const std::vector< uint8_t > & source) |
|  | |
| std::vector< uint8_t > | **[decodeBase64](#group%5F%5Futil%5F%5Fhelper_1gaf6645a898d0bf89ac978d01b443a767b)**(const std::string & source) |
|  | |
| const StringIdentifier | **[loadLibrary](#group%5F%5Futil%5F%5Fhelper_1ga29b17a4a111ad5eb10386eedcc120e5f)**(const std::string & filename) |
|  | |
| void * | **[loadFunction](#group%5F%5Futil%5F%5Fhelper_1gaf2486e94fbc87abb6b6472b57000e55f)**(const StringIdentifier & libraryId, const std::string & name) |
|  | |
| void | **[unloadLibrary](#group%5F%5Futil%5F%5Fhelper_1ga0ad502c61a56b00f7dd65549ebfceda9)**(const StringIdentifier & libraryId) |
|  | |
| void | **[output](#group%5F%5Futil%5F%5Fhelper_1gaebcb05f08976eb360d80717637576a95)**(output_priority_t priority, const std::string & message) |
|  | |
| std::string | **[composeDebugMessage](#group%5F%5Futil%5F%5Fhelper_1gadf8c7261571ce37580be33bf73703eec)**(const std::string & message, const char * file, int line) |
|  | |
| size_t | **[getNumBytes](#group%5F%5Futil%5F%5Fhelper_1gaceab2b42afb19e6e17369546b021df66)**(TypeConstant t) |
|  | |
| std::string | **[getTypeString](#group%5F%5Futil%5F%5Fhelper_1ga94655694ef4c98b34fec071009e07179)**(TypeConstant t) |
|  | |
| void | **[enableInfo](#group%5F%5Futil%5F%5Fhelper_1gaa5368304757e0c6417ad51788d6d27bc)**() |
|  | |
| void | **[disableInfo](#group%5F%5Futil%5F%5Fhelper_1gae3def034625239e62eb1993577f45058)**() |
| template< typename T  >  | |
| T | **[align](#group%5F%5Futil%5F%5Fhelper_1ga4c0da0d042d9c9f7a1807da33d4eafde)**(T offset, T alignment) |
|  | |
| uint32_t | **[calcHash](#group%5F%5Futil%5F%5Fhelper_1ga543dbead1765a2cccbfda213a93a38c7)**(const uint8_t * ptr, size_t size) |
|  | |
| std::string | **[md5](#group%5F%5Futil%5F%5Fhelper_1ga793516ff4cf1904343cba4bb53fefed1)**(const std::string & str) |
| template< class T  >  | |
| void | **[hash_combine](#group%5F%5Futil%5F%5Fhelper_1gae08fb69fe00b892724393646a8de79c0)**(std::size_t & seed, const T & v) |
|  | |
| void | **[hash_param](#group%5F%5Futil%5F%5Fhelper_1ga8c15b7d2b4ae4a5a437ffcc5b1eba7ec)**(size_t & seed) |
| template< typename T  >  | |
| void | **[hash_param](#group%5F%5Futil%5F%5Fhelper_1gae8b6f640f2c1d3127544c2306f063c80)**(size_t & seed, const T & value) |
| template< typename T , typename... Args >  | |
| void | **[hash_param](#group%5F%5Futil%5F%5Fhelper_1ga9522104f8554f442ce3bbdbd4465e769)**(size_t & seed, const T & first_arg, const Args &... args) |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>enum</small><br/> output_priority_t {#group__util__helper_1ga0f166422ea57b5bb9879e2c3cc1c6467}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| enum **[output_priority_t](#group%5F%5Futil%5F%5Fhelper_1ga0f166422ea57b5bb9879e2c3cc1c6467)** |
{: .nohead .nowrap1 .api_doc }

| Enumerator     |  | Description | 
| -------------- | -- | ----------- | 
| Enumerator     |  | Description | 
| OUTPUT_DEBUG   |  |             | 
| OUTPUT_WARNING |  |             | 
| OUTPUT_ERROR   |  |             | 





<sub>Defined in `Util/Macros.h:22`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>enum</small><br/> TypeConstant {#group__util__helper_1ga1a435620d3040a5fff9aa70ec2be94a1}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| enum **[TypeConstant](#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)** |
{: .nohead .nowrap1 .api_doc }

| Enumerator |      | Description | 
| ---------- | ---- | ----------- | 
| Enumerator |      | Description | 
| UINT8      | = 0  |             | 
| UINT16     | = 1  |             | 
| UINT32     | = 2  |             | 
| UINT64     | = 3  |             | 
| INT8       | = 4  |             | 
| INT16      | = 5  |             | 
| INT32      | = 6  |             | 
| INT64      | = 7  |             | 
| FLOAT      | = 8  |             | 
| DOUBLE     | = 9  |             | 
| HALF       | = 10 |             | 

This constants should not change and may be used for serialization.





<sub>Defined in `Util/TypeConstant.h:22`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> info {#group__util__helper_1ga538b5e26779c3cf0a1466e4b4396e465}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| DebugOutput **[info](#group%5F%5Futil%5F%5Fhelper_1ga538b5e26779c3cf0a1466e4b4396e465)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:153`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> encodeBase64 {#group__util__helper_1ga0d32971994711e110b87d9defbee9035}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[encodeBase64](#group%5F%5Futil%5F%5Fhelper_1ga0d32971994711e110b87d9defbee9035)**( | const std::vector< uint8_t > & | **source** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Encoding.h:23`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> decodeBase64 {#group__util__helper_1gaf6645a898d0bf89ac978d01b443a767b}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::vector< uint8_t > **[decodeBase64](#group%5F%5Futil%5F%5Fhelper_1gaf6645a898d0bf89ac978d01b443a767b)**( | const std::string & | **source** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Encoding.h:24`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> loadLibrary {#group__util__helper_1ga29b17a4a111ad5eb10386eedcc120e5f}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const StringIdentifier **[loadLibrary](#group%5F%5Futil%5F%5Fhelper_1ga29b17a4a111ad5eb10386eedcc120e5f)**( | const std::string & | **filename** ) |
{: .nohead .nowrap1 .api_doc }



Function used to dynamically load a library at runtime.


> **Note**: This is highly experimental and not intended for use in production code. Use with caution.



#### Parameters
**filename**
:  File path to the dynamic library.




#### Returns
 [StringIdentifier](classUtil_1_1StringIdentifier) of the filename on success (used as library handle), or empty [StringIdentifier](classUtil_1_1StringIdentifier) on failure.





<sub>Defined in `Util/LoadLibrary.h:29`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> loadFunction {#group__util__helper_1gaf2486e94fbc87abb6b6472b57000e55f}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void * **[loadFunction](#group%5F%5Futil%5F%5Fhelper_1gaf2486e94fbc87abb6b6472b57000e55f)**( | const StringIdentifier & | **libraryId**, |
| | const std::string & | **name** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Loads a function of a dynamically loaded library at runtime.


> **Note**: This is highly experimental and not intended for use in production code. Use with caution.



#### Parameters
**libraryId**
:  Library handle received from loadLibrary.



**name**
:  name of the function.




#### Returns
Function handle or nullptr.





<sub>Defined in `Util/LoadLibrary.h:40`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> unloadLibrary {#group__util__helper_1ga0ad502c61a56b00f7dd65549ebfceda9}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[unloadLibrary](#group%5F%5Futil%5F%5Fhelper_1ga0ad502c61a56b00f7dd65549ebfceda9)**( | const StringIdentifier & | **libraryId** ) |
{: .nohead .nowrap1 .api_doc }



Function used to unload a dynamically loaded library.


> **Note**: This is highly experimental and not intended for use in production code. Use with caution. Actually, don't use it at all, because it can cause unforseeable side effects.



#### Parameters
**libraryId**
:  Library handle received from loadLibrary.







<sub>Defined in `Util/LoadLibrary.h:50`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> output {#group__util__helper_1gaebcb05f08976eb360d80717637576a95}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[output](#group%5F%5Futil%5F%5Fhelper_1gaebcb05f08976eb360d80717637576a95)**( | output_priority_t | **priority**, |
| | const std::string & | **message** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Macros.h:27`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> composeDebugMessage {#group__util__helper_1gadf8c7261571ce37580be33bf73703eec}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[composeDebugMessage](#group%5F%5Futil%5F%5Fhelper_1gadf8c7261571ce37580be33bf73703eec)**( | const std::string & | **message**, |
| | const char * | **file**, |
| | int | **line** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Macros.h:28`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getNumBytes {#group__util__helper_1gaceab2b42afb19e6e17369546b021df66}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| size_t **[getNumBytes](#group%5F%5Futil%5F%5Fhelper_1gaceab2b42afb19e6e17369546b021df66)**( | TypeConstant | **t** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/TypeConstant.h:36`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> getTypeString {#group__util__helper_1ga94655694ef4c98b34fec071009e07179}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[getTypeString](#group%5F%5Futil%5F%5Fhelper_1ga94655694ef4c98b34fec071009e07179)**( | TypeConstant | **t** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/TypeConstant.h:38`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> enableInfo {#group__util__helper_1gaa5368304757e0c6417ad51788d6d27bc}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[enableInfo](#group%5F%5Futil%5F%5Fhelper_1gaa5368304757e0c6417ad51788d6d27bc)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:155`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> disableInfo {#group__util__helper_1gae3def034625239e62eb1993577f45058}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[disableInfo](#group%5F%5Futil%5F%5Fhelper_1gae3def034625239e62eb1993577f45058)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:156`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> align {#group__util__helper_1ga4c0da0d042d9c9f7a1807da33d4eafde}

| public | static | inline |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| T **[align](#group%5F%5Futil%5F%5Fhelper_1ga4c0da0d042d9c9f7a1807da33d4eafde)**( | T | **offset**, |
| | T | **alignment** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:160`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> calcHash {#group__util__helper_1ga543dbead1765a2cccbfda213a93a38c7}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint32_t **[calcHash](#group%5F%5Futil%5F%5Fhelper_1ga543dbead1765a2cccbfda213a93a38c7)**( | const uint8_t * | **ptr**, |
| | size_t | **size** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:164`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> md5 {#group__util__helper_1ga793516ff4cf1904343cba4bb53fefed1}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[md5](#group%5F%5Futil%5F%5Fhelper_1ga793516ff4cf1904343cba4bb53fefed1)**( | const std::string & | **str** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:166`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> hash_combine {#group__util__helper_1gae08fb69fe00b892724393646a8de79c0}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
| template< class T  > |
| void **[hash_combine](#group%5F%5Futil%5F%5Fhelper_1gae08fb69fe00b892724393646a8de79c0)**( | std::size_t & | **seed**, |
| | const T & | **v** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:169`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> hash_param {#group__util__helper_1ga8c15b7d2b4ae4a5a437ffcc5b1eba7ec}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[hash_param](#group%5F%5Futil%5F%5Fhelper_1ga8c15b7d2b4ae4a5a437ffcc5b1eba7ec)**( | size_t & | **seed** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:174`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> hash_param {#group__util__helper_1gae8b6f640f2c1d3127544c2306f063c80}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| void **[hash_param](#group%5F%5Futil%5F%5Fhelper_1gae8b6f640f2c1d3127544c2306f063c80)**( | size_t & | **seed**, |
| | const T & | **value** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:177`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> hash_param {#group__util__helper_1ga9522104f8554f442ce3bbdbd4465e769}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T , typename... Args > |
| void **[hash_param](#group%5F%5Futil%5F%5Fhelper_1ga9522104f8554f442ce3bbdbd4465e769)**( | size_t & | **seed**, |
| | const T & | **first_arg**, |
| | const Args &... | **args** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Utils.h:182`</sub>{:style="float: right"}

-------------------------------------------------------------------

