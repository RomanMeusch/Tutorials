---
api_location: "Rendering/BufferObject.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Rendering:namespaceRendering|Resources:group__rendering__resources"
keywords: AccessFlag, TARGET_ARRAY_BUFFER, TARGET_ATOMIC_COUNTER_BUFFER, TARGET_COPY_READ_BUFFER, TARGET_COPY_WRITE_BUFFER, TARGET_DISPATCH_INDIRECT_BUFFER, TARGET_DRAW_INDIRECT_BUFFER, TARGET_ELEMENT_ARRAY_BUFFER, TARGET_PIXEL_PACK_BUFFER, TARGET_PIXEL_UNPACK_BUFFER, TARGET_QUERY_BUFFER, TARGET_SHADER_STORAGE_BUFFER, TARGET_TEXTURE_BUFFER, TARGET_TRANSFORM_FEEDBACK_BUFFER, TARGET_UNIFORM_BUFFER, USAGE_STREAM_DRAW, USAGE_STREAM_READ, USAGE_STREAM_COPY, USAGE_STATIC_DRAW, USAGE_STATIC_READ, USAGE_STATIC_COPY, USAGE_DYNAMIC_DRAW, USAGE_DYNAMIC_READ, USAGE_DYNAMIC_COPY, bufferId, BufferObject, BufferObject, BufferObject, ~BufferObject, swap, prepare, destroy, bind, bind, unbind, unbind, allocateData, uploadData, uploadData, uploadSubData, uploadSubData, downloadData, isValid, getGLId, clear, clear, copy, map, unmap
kind: class
layout: api
path: Rendering->Resources
permalink: classRendering_1_1BufferObject
show_in_toc: true
sidebar: api_sidebar
title: "BufferObject"
toc: false
use_as_root: false
---

| public |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	BufferObject
	click BufferObject "classRendering_1_1BufferObject"
```

## Description



Representation of an OpenGL buffer object (BO).



**Author**: Benjamin Eikel



**Date**: 2012-04-19





## Public Types

|
| ------: | ----------------- |
|  | |
| enum | **[AccessFlag](#classRendering_1_1BufferObject_1aedf539d18e7e3080772fccb1632c22ea)** {NO_ACCESS, READ_ONLY, WRITE_ONLY, READ_WRITE} |
{: .nohead .nowrap1 .api_section }


## Public Static Attributes

|
| ------: | ----------------- |
|  | |
| const uint32_t | **[TARGET_ARRAY_BUFFER](#classRendering_1_1BufferObject_1a7a454115767d27846ac218d2867d4106)**  |
|  | |
| const uint32_t | **[TARGET_ATOMIC_COUNTER_BUFFER](#classRendering_1_1BufferObject_1a18819887f07c67f424f80c1ad360d50d)**  |
|  | |
| const uint32_t | **[TARGET_COPY_READ_BUFFER](#classRendering_1_1BufferObject_1aa9d622ac99bbcb2cfb6d7318a7b37f38)**  |
|  | |
| const uint32_t | **[TARGET_COPY_WRITE_BUFFER](#classRendering_1_1BufferObject_1a465bf0cd7438ee19716365128a33cf2e)**  |
|  | |
| const uint32_t | **[TARGET_DISPATCH_INDIRECT_BUFFER](#classRendering_1_1BufferObject_1a49519053ce720c68b29ae3a7716759ef)**  |
|  | |
| const uint32_t | **[TARGET_DRAW_INDIRECT_BUFFER](#classRendering_1_1BufferObject_1aea368c5b429787882e960951448873d6)**  |
|  | |
| const uint32_t | **[TARGET_ELEMENT_ARRAY_BUFFER](#classRendering_1_1BufferObject_1a576d751d2ad30f1a6c2473052383fcb5)**  |
|  | |
| const uint32_t | **[TARGET_PIXEL_PACK_BUFFER](#classRendering_1_1BufferObject_1af1cea6424582dd1c0d6a43f20398dbd4)**  |
|  | |
| const uint32_t | **[TARGET_PIXEL_UNPACK_BUFFER](#classRendering_1_1BufferObject_1a44ad92c1a310efba303a1ae1721cb194)**  |
|  | |
| const uint32_t | **[TARGET_QUERY_BUFFER](#classRendering_1_1BufferObject_1a5a8d058c4fe809dcafae6979b7baa0a2)**  |
|  | |
| const uint32_t | **[TARGET_SHADER_STORAGE_BUFFER](#classRendering_1_1BufferObject_1a30aeba37b3028d907c5a6d37fe96b465)**  |
|  | |
| const uint32_t | **[TARGET_TEXTURE_BUFFER](#classRendering_1_1BufferObject_1a3acdb69b26f32958da46b6ca03597395)**  |
|  | |
| const uint32_t | **[TARGET_TRANSFORM_FEEDBACK_BUFFER](#classRendering_1_1BufferObject_1aa4d9a228f113e6f5bf9b9d351cad119d)**  |
|  | |
| const uint32_t | **[TARGET_UNIFORM_BUFFER](#classRendering_1_1BufferObject_1a0aa63a0178f15fb269eef609614efaee)**  |
|  | |
| const uint32_t | **[USAGE_STREAM_DRAW](#classRendering_1_1BufferObject_1ad4ca8afbdbdd192e608e3ad906db8e5f)**  |
|  | |
| const uint32_t | **[USAGE_STREAM_READ](#classRendering_1_1BufferObject_1ab5d6bf82deb3b0d0246c52d1964eb309)**  |
|  | |
| const uint32_t | **[USAGE_STREAM_COPY](#classRendering_1_1BufferObject_1a10fdec3ea9be4f40ea8eb6c088d8ec26)**  |
|  | |
| const uint32_t | **[USAGE_STATIC_DRAW](#classRendering_1_1BufferObject_1a9c82a81a2dd2a1054a3e4f57ed8ff026)**  |
|  | |
| const uint32_t | **[USAGE_STATIC_READ](#classRendering_1_1BufferObject_1a306ae96710b44b0900625359c199c9f0)**  |
|  | |
| const uint32_t | **[USAGE_STATIC_COPY](#classRendering_1_1BufferObject_1a15219c7857ae39a39dae1576491e4345)**  |
|  | |
| const uint32_t | **[USAGE_DYNAMIC_DRAW](#classRendering_1_1BufferObject_1adca74d9fdf14db4adb6eb93ea43b06ba)**  |
|  | |
| const uint32_t | **[USAGE_DYNAMIC_READ](#classRendering_1_1BufferObject_1a00d44c4391a5a42fda02abde4a382e86)**  |
|  | |
| const uint32_t | **[USAGE_DYNAMIC_COPY](#classRendering_1_1BufferObject_1ab1c21fe28224345f5ecdcde698878822)**  |
{: .nohead .nowrap1 .api_section }


## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[BufferObject](#classRendering_1_1BufferObject_1ae3b3fa68e25c21b580e2ed55e6f5159c)**() <br/> Create an invalid buffer object for the given target. |
|  | |
|  | **[BufferObject](#classRendering_1_1BufferObject_1ae20ad9b93b7d31145e49e1d21ea24fda)**(const [BufferObject](classRendering_1_1BufferObject) & void) <br/> Data of an buffer object should not be copied. |
|  | |
|  | **[BufferObject](#classRendering_1_1BufferObject_1a2e8434bdba437acc70bc95eabc7de744)**( [BufferObject](classRendering_1_1BufferObject) && other) <br/> Take ownership of the data of the other buffer object. |
|  | |
|  | **[~BufferObject](#classRendering_1_1BufferObject_1a451ad99f5341595c4d138d72aa3e0afa)**() <br/> Free the data of the buffer object. |
|  | |
| [BufferObject](classRendering_1_1BufferObject) & | **[operator=](#classRendering_1_1BufferObject_1a141efbc4eeb681b683aa876e2723d8b2)**(const [BufferObject](classRendering_1_1BufferObject) & void) <br/> Data of an buffer object should not be copied. |
|  | |
| [BufferObject](classRendering_1_1BufferObject) & | **[operator=](#classRendering_1_1BufferObject_1a832d8f6ac93c947a49b7a1ce48aef63c)**( [BufferObject](classRendering_1_1BufferObject) && other) <br/> Take ownership of the data of the other buffer object. |
|  | |
| void | **[swap](#classRendering_1_1BufferObject_1a3470de1772f72fe5004ca892dcd80de1)**( [BufferObject](classRendering_1_1BufferObject) & other) <br/> Swap the gl buffer with another [BufferObject](classRendering_1_1BufferObject) . |
|  | |
| void | **[prepare](#classRendering_1_1BufferObject_1a18e1e76ba5bf94a41e4df7ddb6abfe71)**() <br/> Request a new handle from OpenGL for this buffer object. |
|  | |
| void | **[destroy](#classRendering_1_1BufferObject_1aada6f2542d4d30ba2626e26190e09d41)**() <br/> Free the handle of this buffer object. |
|  | |
| void | **[bind](#classRendering_1_1BufferObject_1af7c7ecc54e1424153c86e642f5010553)**(uint32_t bufferTarget) const <br/> Bind the buffer object to the given target. |
|  | |
| void | **[bind](#classRendering_1_1BufferObject_1a266156b548d322a416d73c0cb13a6834)**(uint32_t bufferTarget, uint32_t location) const |
|  | |
| void | **[unbind](#classRendering_1_1BufferObject_1a04d038c7bbdffc418c8364bd8998995b)**(uint32_t bufferTarget) const <br/> Remove any binding of the given target. |
|  | |
| void | **[unbind](#classRendering_1_1BufferObject_1a899077065a870a1a392e2f8a0ab06cdf)**(uint32_t bufferTarget, uint32_t location) const |
| template< typename T  >  | |
| void | **[allocateData](#classRendering_1_1BufferObject_1adbfe0e0580a50532600282dadadc9f5b)**(uint32_t bufferTarget, std::size_t numberOfElements, uint32_t usageHint) <br/> Allocate buffer data. |
| template< typename T  >  | |
| void | **[uploadData](#classRendering_1_1BufferObject_1a44623319b3e3ab184852bad567b5e4e5)**(uint32_t bufferTarget, const std::vector< T > & data, uint32_t usageHint) <br/> Copy data to the buffer object. |
|  | |
| void | **[uploadData](#classRendering_1_1BufferObject_1a1ced280b15c0c1b6ae7b7cf977e5aa3e)**(uint32_t bufferTarget, const uint8_t * data, size_t numBytes, uint32_t usageHint) |
| template< typename T  >  | |
| void | **[uploadSubData](#classRendering_1_1BufferObject_1a1b37c18a0d60891bf95543abb003afa9)**(uint32_t bufferTarget, const std::vector< T > & data, size_t offset) <br/> Copy data to the buffer object. |
|  | |
| void | **[uploadSubData](#classRendering_1_1BufferObject_1a4650bdc281f1e2f5b3b9f8b401b6b1fb)**(uint32_t bufferTarget, const uint8_t * data, size_t numBytes, size_t offset) |
| template< typename T  >  | |
| std::vector< T > | **[downloadData](#classRendering_1_1BufferObject_1a2bcd8fb7a01dfc5ff59b416433bfb6af)**(uint32_t bufferTarget, size_t numberOfElements, size_t offset) const <br/> Retrieve data from the buffer object. |
|  | |
| bool | **[isValid](#classRendering_1_1BufferObject_1ab2011604658f02487ecc37693af76362)**() const <br/> `true`if and only if [prepare()](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1a18e1e76ba5bf94a41e4df7ddb6abfe71) was executed at least once without an execution of [destroy()](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1aada6f2542d4d30ba2626e26190e09d41) afterwards. |
|  | |
| uint32_t | **[getGLId](#classRendering_1_1BufferObject_1ab38644415ff69e0d4f94773922625624)**() const |
|  | |
| void | **[clear](#classRendering_1_1BufferObject_1a8ab7228c80638c556379df2dbef81f2d)**(uint32_t bufferTarget, uint32_t internalFormat, uint32_t format, uint32_t type, const uint8_t * data) |
|  | |
| void | **[clear](#classRendering_1_1BufferObject_1ab1f079f30d41037a934ba0b5c02d360c)**(uint32_t internalFormat, uint32_t format, uint32_t type, const uint8_t * data) |
|  | |
| void | **[copy](#classRendering_1_1BufferObject_1ace2f0a3498a6c0265b43b033bf16b5b9)**(const [BufferObject](classRendering_1_1BufferObject) & source, uint32_t sourceOffset, uint32_t targetOffset, uint32_t size) |
|  | |
| uint8_t * | **[map](#classRendering_1_1BufferObject_1ac38a0be3ffb940490913ce7648a016b6)**(uint32_t offset, uint32_t size,  [AccessFlag](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1aedf539d18e7e3080772fccb1632c22ea)  access) |
|  | |
| void | **[unmap](#classRendering_1_1BufferObject_1a12ecae9a1a79a2dd9ee2b5639462736d)**() |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>enum</small><br/> Rendering::BufferObject::AccessFlag {#classRendering_1_1BufferObject_1aedf539d18e7e3080772fccb1632c22ea}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| enum **[AccessFlag](#classRendering_1_1BufferObject_1aedf539d18e7e3080772fccb1632c22ea)** |
{: .nohead .nowrap1 .api_doc }

| Enumerator |     | Description | 
| ---------- | --- | ----------- | 
| Enumerator |     | Description | 
| NO_ACCESS  | = 0 |             | 
| READ_ONLY  | = 1 |             | 
| WRITE_ONLY | = 2 |             | 
| READ_WRITE | = 3 |             | 





<sub>Defined in `Rendering/BufferObject.h:58`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_ARRAY_BUFFER {#classRendering_1_1BufferObject_1a7a454115767d27846ac218d2867d4106}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_ARRAY_BUFFER](#classRendering_1_1BufferObject_1a7a454115767d27846ac218d2867d4106)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:33`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_ATOMIC_COUNTER_BUFFER {#classRendering_1_1BufferObject_1a18819887f07c67f424f80c1ad360d50d}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_ATOMIC_COUNTER_BUFFER](#classRendering_1_1BufferObject_1a18819887f07c67f424f80c1ad360d50d)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:34`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_COPY_READ_BUFFER {#classRendering_1_1BufferObject_1aa9d622ac99bbcb2cfb6d7318a7b37f38}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_COPY_READ_BUFFER](#classRendering_1_1BufferObject_1aa9d622ac99bbcb2cfb6d7318a7b37f38)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:35`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_COPY_WRITE_BUFFER {#classRendering_1_1BufferObject_1a465bf0cd7438ee19716365128a33cf2e}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_COPY_WRITE_BUFFER](#classRendering_1_1BufferObject_1a465bf0cd7438ee19716365128a33cf2e)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:36`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_DISPATCH_INDIRECT_BUFFER {#classRendering_1_1BufferObject_1a49519053ce720c68b29ae3a7716759ef}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_DISPATCH_INDIRECT_BUFFER](#classRendering_1_1BufferObject_1a49519053ce720c68b29ae3a7716759ef)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:37`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_DRAW_INDIRECT_BUFFER {#classRendering_1_1BufferObject_1aea368c5b429787882e960951448873d6}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_DRAW_INDIRECT_BUFFER](#classRendering_1_1BufferObject_1aea368c5b429787882e960951448873d6)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:38`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_ELEMENT_ARRAY_BUFFER {#classRendering_1_1BufferObject_1a576d751d2ad30f1a6c2473052383fcb5}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_ELEMENT_ARRAY_BUFFER](#classRendering_1_1BufferObject_1a576d751d2ad30f1a6c2473052383fcb5)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:39`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_PIXEL_PACK_BUFFER {#classRendering_1_1BufferObject_1af1cea6424582dd1c0d6a43f20398dbd4}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_PIXEL_PACK_BUFFER](#classRendering_1_1BufferObject_1af1cea6424582dd1c0d6a43f20398dbd4)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:40`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_PIXEL_UNPACK_BUFFER {#classRendering_1_1BufferObject_1a44ad92c1a310efba303a1ae1721cb194}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_PIXEL_UNPACK_BUFFER](#classRendering_1_1BufferObject_1a44ad92c1a310efba303a1ae1721cb194)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:41`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_QUERY_BUFFER {#classRendering_1_1BufferObject_1a5a8d058c4fe809dcafae6979b7baa0a2}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_QUERY_BUFFER](#classRendering_1_1BufferObject_1a5a8d058c4fe809dcafae6979b7baa0a2)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:42`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_SHADER_STORAGE_BUFFER {#classRendering_1_1BufferObject_1a30aeba37b3028d907c5a6d37fe96b465}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_SHADER_STORAGE_BUFFER](#classRendering_1_1BufferObject_1a30aeba37b3028d907c5a6d37fe96b465)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:43`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_TEXTURE_BUFFER {#classRendering_1_1BufferObject_1a3acdb69b26f32958da46b6ca03597395}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_TEXTURE_BUFFER](#classRendering_1_1BufferObject_1a3acdb69b26f32958da46b6ca03597395)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:44`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_TRANSFORM_FEEDBACK_BUFFER {#classRendering_1_1BufferObject_1aa4d9a228f113e6f5bf9b9d351cad119d}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_TRANSFORM_FEEDBACK_BUFFER](#classRendering_1_1BufferObject_1aa4d9a228f113e6f5bf9b9d351cad119d)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:45`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::TARGET_UNIFORM_BUFFER {#classRendering_1_1BufferObject_1a0aa63a0178f15fb269eef609614efaee}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[TARGET_UNIFORM_BUFFER](#classRendering_1_1BufferObject_1a0aa63a0178f15fb269eef609614efaee)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:46`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STREAM_DRAW {#classRendering_1_1BufferObject_1ad4ca8afbdbdd192e608e3ad906db8e5f}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STREAM_DRAW](#classRendering_1_1BufferObject_1ad4ca8afbdbdd192e608e3ad906db8e5f)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:48`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STREAM_READ {#classRendering_1_1BufferObject_1ab5d6bf82deb3b0d0246c52d1964eb309}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STREAM_READ](#classRendering_1_1BufferObject_1ab5d6bf82deb3b0d0246c52d1964eb309)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:49`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STREAM_COPY {#classRendering_1_1BufferObject_1a10fdec3ea9be4f40ea8eb6c088d8ec26}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STREAM_COPY](#classRendering_1_1BufferObject_1a10fdec3ea9be4f40ea8eb6c088d8ec26)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:50`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STATIC_DRAW {#classRendering_1_1BufferObject_1a9c82a81a2dd2a1054a3e4f57ed8ff026}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STATIC_DRAW](#classRendering_1_1BufferObject_1a9c82a81a2dd2a1054a3e4f57ed8ff026)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:51`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STATIC_READ {#classRendering_1_1BufferObject_1a306ae96710b44b0900625359c199c9f0}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STATIC_READ](#classRendering_1_1BufferObject_1a306ae96710b44b0900625359c199c9f0)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:52`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_STATIC_COPY {#classRendering_1_1BufferObject_1a15219c7857ae39a39dae1576491e4345}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_STATIC_COPY](#classRendering_1_1BufferObject_1a15219c7857ae39a39dae1576491e4345)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:53`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_DYNAMIC_DRAW {#classRendering_1_1BufferObject_1adca74d9fdf14db4adb6eb93ea43b06ba}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_DYNAMIC_DRAW](#classRendering_1_1BufferObject_1adca74d9fdf14db4adb6eb93ea43b06ba)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:54`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_DYNAMIC_READ {#classRendering_1_1BufferObject_1a00d44c4391a5a42fda02abde4a382e86}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_DYNAMIC_READ](#classRendering_1_1BufferObject_1a00d44c4391a5a42fda02abde4a382e86)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:55`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>variable</small><br/> Rendering::BufferObject::USAGE_DYNAMIC_COPY {#classRendering_1_1BufferObject_1ab1c21fe28224345f5ecdcde698878822}

| public | static |
{:.api_label}

|
| ------: | ----------------- |
|  |
| const uint32_t **[USAGE_DYNAMIC_COPY](#classRendering_1_1BufferObject_1ab1c21fe28224345f5ecdcde698878822)**  |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:56`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::BufferObject {#classRendering_1_1BufferObject_1ae3b3fa68e25c21b580e2ed55e6f5159c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[BufferObject](#classRendering_1_1BufferObject_1ae3b3fa68e25c21b580e2ed55e6f5159c)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Create an invalid buffer object for the given target.





<sub>Defined in `Rendering/BufferObject.h:71`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::BufferObject {#classRendering_1_1BufferObject_1ae20ad9b93b7d31145e49e1d21ea24fda}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[BufferObject](#classRendering_1_1BufferObject_1ae20ad9b93b7d31145e49e1d21ea24fda)**( | const [BufferObject](classRendering_1_1BufferObject) & | **void** ) |
{: .nohead .nowrap1 .api_doc }

Data of an buffer object should not be copied.





<sub>Defined in `Rendering/BufferObject.h:74`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::BufferObject {#classRendering_1_1BufferObject_1a2e8434bdba437acc70bc95eabc7de744}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[BufferObject](#classRendering_1_1BufferObject_1a2e8434bdba437acc70bc95eabc7de744)**( |  [BufferObject](classRendering_1_1BufferObject) && | **other** ) |
{: .nohead .nowrap1 .api_doc }

Take ownership of the data of the other buffer object.





<sub>Defined in `Rendering/BufferObject.h:77`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::~BufferObject {#classRendering_1_1BufferObject_1a451ad99f5341595c4d138d72aa3e0afa}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[~BufferObject](#classRendering_1_1BufferObject_1a451ad99f5341595c4d138d72aa3e0afa)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Free the data of the buffer object.





<sub>Defined in `Rendering/BufferObject.h:80`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::operator= {#classRendering_1_1BufferObject_1a141efbc4eeb681b683aa876e2723d8b2}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [BufferObject](classRendering_1_1BufferObject) & **[operator=](#classRendering_1_1BufferObject_1a141efbc4eeb681b683aa876e2723d8b2)**( | const [BufferObject](classRendering_1_1BufferObject) & | **void** ) |
{: .nohead .nowrap1 .api_doc }

Data of an buffer object should not be copied.





<sub>Defined in `Rendering/BufferObject.h:83`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::operator= {#classRendering_1_1BufferObject_1a832d8f6ac93c947a49b7a1ce48aef63c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [BufferObject](classRendering_1_1BufferObject) & **[operator=](#classRendering_1_1BufferObject_1a832d8f6ac93c947a49b7a1ce48aef63c)**( |  [BufferObject](classRendering_1_1BufferObject) && | **other** ) |
{: .nohead .nowrap1 .api_doc }

Take ownership of the data of the other buffer object.





<sub>Defined in `Rendering/BufferObject.h:86`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::swap {#classRendering_1_1BufferObject_1a3470de1772f72fe5004ca892dcd80de1}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[swap](#classRendering_1_1BufferObject_1a3470de1772f72fe5004ca892dcd80de1)**( |  [BufferObject](classRendering_1_1BufferObject) & | **other** ) |
{: .nohead .nowrap1 .api_doc }

Swap the gl buffer with another [BufferObject](classRendering_1_1BufferObject) .





<sub>Defined in `Rendering/BufferObject.h:89`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::prepare {#classRendering_1_1BufferObject_1a18e1e76ba5bf94a41e4df7ddb6abfe71}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[prepare](#classRendering_1_1BufferObject_1a18e1e76ba5bf94a41e4df7ddb6abfe71)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Request a new handle from OpenGL for this buffer object.





<sub>Defined in `Rendering/BufferObject.h:92`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::destroy {#classRendering_1_1BufferObject_1aada6f2542d4d30ba2626e26190e09d41}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[destroy](#classRendering_1_1BufferObject_1aada6f2542d4d30ba2626e26190e09d41)**( |  ) |
{: .nohead .nowrap1 .api_doc }

Free the handle of this buffer object.





<sub>Defined in `Rendering/BufferObject.h:95`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::bind {#classRendering_1_1BufferObject_1af7c7ecc54e1424153c86e642f5010553}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[bind](#classRendering_1_1BufferObject_1af7c7ecc54e1424153c86e642f5010553)**( | uint32_t | **bufferTarget** ) const |
{: .nohead .nowrap1 .api_doc }

Bind the buffer object to the given target.





<sub>Defined in `Rendering/BufferObject.h:98`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::bind {#classRendering_1_1BufferObject_1a266156b548d322a416d73c0cb13a6834}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[bind](#classRendering_1_1BufferObject_1a266156b548d322a416d73c0cb13a6834)**( | uint32_t | **bufferTarget**, |
| | uint32_t | **location** |
|   ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:99`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::unbind {#classRendering_1_1BufferObject_1a04d038c7bbdffc418c8364bd8998995b}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[unbind](#classRendering_1_1BufferObject_1a04d038c7bbdffc418c8364bd8998995b)**( | uint32_t | **bufferTarget** ) const |
{: .nohead .nowrap1 .api_doc }

Remove any binding of the given target.





<sub>Defined in `Rendering/BufferObject.h:102`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::unbind {#classRendering_1_1BufferObject_1a899077065a870a1a392e2f8a0ab06cdf}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[unbind](#classRendering_1_1BufferObject_1a899077065a870a1a392e2f8a0ab06cdf)**( | uint32_t | **bufferTarget**, |
| | uint32_t | **location** |
|   ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:103`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::allocateData {#classRendering_1_1BufferObject_1adbfe0e0580a50532600282dadadc9f5b}

| public |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| void **[allocateData](#classRendering_1_1BufferObject_1adbfe0e0580a50532600282dadadc9f5b)**( | uint32_t | **bufferTarget**, |
| | std::size_t | **numberOfElements**, |
| | uint32_t | **usageHint** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Allocate buffer data.



Bind the buffer object to the given target, allocate*numberOfElements*times`sizeof(T)`bytes, and unbind the buffer object.



<sub>Defined in `Rendering/BufferObject.h:113`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::uploadData {#classRendering_1_1BufferObject_1a44623319b3e3ab184852bad567b5e4e5}

| public |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| void **[uploadData](#classRendering_1_1BufferObject_1a44623319b3e3ab184852bad567b5e4e5)**( | uint32_t | **bufferTarget**, |
| | const std::vector< T > & | **data**, |
| | uint32_t | **usageHint** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Copy data to the buffer object.



Bind the buffer object to the given target, copy`data.size()`times`sizeof(T)`bytes from the vector to the buffer object, and unbind the buffer object.



<sub>Defined in `Rendering/BufferObject.h:123`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::uploadData {#classRendering_1_1BufferObject_1a1ced280b15c0c1b6ae7b7cf977e5aa3e}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[uploadData](#classRendering_1_1BufferObject_1a1ced280b15c0c1b6ae7b7cf977e5aa3e)**( | uint32_t | **bufferTarget**, |
| | const uint8_t * | **data**, |
| | size_t | **numBytes**, |
| | uint32_t | **usageHint** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:124`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::uploadSubData {#classRendering_1_1BufferObject_1a1b37c18a0d60891bf95543abb003afa9}

| public |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| void **[uploadSubData](#classRendering_1_1BufferObject_1a1b37c18a0d60891bf95543abb003afa9)**( | uint32_t | **bufferTarget**, |
| | const std::vector< T > & | **data**, |
| | size_t | **offset** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Copy data to the buffer object.



Bind the buffer object to the given target, copy`data.size()`times`sizeof(T)`bytes from the vector to the buffer object, and unbind the buffer object.



<sub>Defined in `Rendering/BufferObject.h:134`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::uploadSubData {#classRendering_1_1BufferObject_1a4650bdc281f1e2f5b3b9f8b401b6b1fb}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[uploadSubData](#classRendering_1_1BufferObject_1a4650bdc281f1e2f5b3b9f8b401b6b1fb)**( | uint32_t | **bufferTarget**, |
| | const uint8_t * | **data**, |
| | size_t | **numBytes**, |
| | size_t | **offset** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:135`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::downloadData {#classRendering_1_1BufferObject_1a2bcd8fb7a01dfc5ff59b416433bfb6af}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
| template< typename T  > |
| std::vector< T > **[downloadData](#classRendering_1_1BufferObject_1a2bcd8fb7a01dfc5ff59b416433bfb6af)**( | uint32_t | **bufferTarget**, |
| | size_t | **numberOfElements**, |
| | size_t | **offset** |
|   ) const |
{: .nohead .nowrap1 .api_doc }

Retrieve data from the buffer object.



Bind the buffer object to the given target, copy*numberOfElements*times`sizeof(T)`bytes from the buffer object to the vector, and unbind the buffer object.



<sub>Defined in `Rendering/BufferObject.h:145`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::isValid {#classRendering_1_1BufferObject_1ab2011604658f02487ecc37693af76362}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[isValid](#classRendering_1_1BufferObject_1ab2011604658f02487ecc37693af76362)**( |  ) const |
{: .nohead .nowrap1 .api_doc }

`true`if and only if [prepare()](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1a18e1e76ba5bf94a41e4df7ddb6abfe71) was executed at least once without an execution of [destroy()](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1aada6f2542d4d30ba2626e26190e09d41) afterwards.





<sub>Defined in `Rendering/BufferObject.h:148`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::getGLId {#classRendering_1_1BufferObject_1ab38644415ff69e0d4f94773922625624}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint32_t **[getGLId](#classRendering_1_1BufferObject_1ab38644415ff69e0d4f94773922625624)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:151`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::clear {#classRendering_1_1BufferObject_1a8ab7228c80638c556379df2dbef81f2d}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[clear](#classRendering_1_1BufferObject_1a8ab7228c80638c556379df2dbef81f2d)**( | uint32_t | **bufferTarget**, |
| | uint32_t | **internalFormat**, |
| | uint32_t | **format**, |
| | uint32_t | **type**, |
| | const uint8_t * | **data** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:153`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::clear {#classRendering_1_1BufferObject_1ab1f079f30d41037a934ba0b5c02d360c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[clear](#classRendering_1_1BufferObject_1ab1f079f30d41037a934ba0b5c02d360c)**( | uint32_t | **internalFormat**, |
| | uint32_t | **format**, |
| | uint32_t | **type**, |
| | const uint8_t * | **data** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:154`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::copy {#classRendering_1_1BufferObject_1ace2f0a3498a6c0265b43b033bf16b5b9}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[copy](#classRendering_1_1BufferObject_1ace2f0a3498a6c0265b43b033bf16b5b9)**( | const [BufferObject](classRendering_1_1BufferObject) & | **source**, |
| | uint32_t | **sourceOffset**, |
| | uint32_t | **targetOffset**, |
| | uint32_t | **size** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Rendering/BufferObject.h:156`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::map {#classRendering_1_1BufferObject_1ac38a0be3ffb940490913ce7648a016b6}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint8_t * **[map](#classRendering_1_1BufferObject_1ac38a0be3ffb940490913ce7648a016b6)**( | uint32_t | **offset**, |
| | uint32_t | **size**, |
| |  [AccessFlag](classRendering_1_1BufferObject#classRendering_1_1BufferObject_1aedf539d18e7e3080772fccb1632c22ea)  | **access** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Map all or part of a buffer object's data store into the client's address space
> **Note**: The buffer has to be unmapped before using it for rendering.



#### Parameters
**offset**
:  The offset into the buffer in bytes.



**size**
:  The size of the buffer range in bytes to map. When`size`is 0, the entire buffer is mapped.



**allowWrite**
:  Indicates that the returned pointer may be used to modify buffer object data.



**allowRead**
:  Indicates that the returned pointer may be used to read buffer object data.




#### Returns
The mapped data pointer, or`nullptr`if the mapping failed.





<sub>Defined in `Rendering/BufferObject.h:168`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::BufferObject::unmap {#classRendering_1_1BufferObject_1a12ecae9a1a79a2dd9ee2b5639462736d}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[unmap](#classRendering_1_1BufferObject_1a12ecae9a1a79a2dd9ee2b5639462736d)**( |  ) |
{: .nohead .nowrap1 .api_doc }



Unmaps a previously mapped buffer.



<sub>Defined in `Rendering/BufferObject.h:173`</sub>{:style="float: right"}

-------------------------------------------------------------------

