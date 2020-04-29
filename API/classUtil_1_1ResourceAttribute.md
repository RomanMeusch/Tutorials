---
api_location: "Util/Resources/ResourceFormat.h"
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil|Resources:group__resources"
keywords: ResourceFormat, nameId, dataType, dataSize, offset, numValues, normalized, ResourceAttribute, ResourceAttribute, toString, getOffset, getDataSize, getNumValues, getDataType, isNormalized, getNameId, getName, empty, ResourceAttribute
kind: class
layout: api
path: Util->Resources
permalink: classUtil_1_1ResourceAttribute
show_in_toc: true
sidebar: api_sidebar
title: "ResourceAttribute"
toc: false
use_as_root: false
---

| public |
{:.api_label}

#### Inheritance Graph

```mermaid
graph BT
	ResourceAttribute
	click ResourceAttribute "classUtil_1_1ResourceAttribute"
```

## Description



 [ResourceAttribute](classUtil_1_1ResourceAttribute) 



## Public Functions

|
| ------: | ----------------- |
|  | |
|  | **[ResourceAttribute](#classUtil_1_1ResourceAttribute_1aa4941902ef925b7d505d43d6629010b0)**() |
|  | |
|  | **[ResourceAttribute](#classUtil_1_1ResourceAttribute_1a0c1020b330c0b9cc9eb2b21d48350e84)**(const [StringIdentifier](classUtil_1_1StringIdentifier) & _nameId,  [TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)  _dataType, uint8_t _numValues, bool _normalized, uint16_t _offset) |
|  | |
| bool | **[operator==](#classUtil_1_1ResourceAttribute_1a03d24438d0271f271205e7abb056b97e)**(const [ResourceAttribute](classUtil_1_1ResourceAttribute) & other) const |
|  | |
| bool | **[operator&lt;](#classUtil_1_1ResourceAttribute_1adc74a82e7a27647fab9d46f1c0efeb89)**(const [ResourceAttribute](classUtil_1_1ResourceAttribute) & other) const |
|  | |
| std::string | **[toString](#classUtil_1_1ResourceAttribute_1ab15809e92cef5653d60526b7a8956ae0)**() const |
|  | |
| uint16_t | **[getOffset](#classUtil_1_1ResourceAttribute_1a2a317e5f787654d64c421ddf59e90669)**() const |
|  | |
| uint16_t | **[getDataSize](#classUtil_1_1ResourceAttribute_1a5accd4366ef106da1abe068e06db90cd)**() const |
|  | |
| uint8_t | **[getNumValues](#classUtil_1_1ResourceAttribute_1ab4bb486ba18a057bdcac115325fa4062)**() const |
|  | |
| [TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1) | **[getDataType](#classUtil_1_1ResourceAttribute_1ab62818adae48febb3e674d925e128574)**() const |
|  | |
| bool | **[isNormalized](#classUtil_1_1ResourceAttribute_1acae9310829ae9d0926515dcf6f163d64)**() const |
|  | |
| [StringIdentifier](classUtil_1_1StringIdentifier) | **[getNameId](#classUtil_1_1ResourceAttribute_1aad49269cbd4d27ed44aef0f680a74f76)**() const |
|  | |
| std::string | **[getName](#classUtil_1_1ResourceAttribute_1a370be99b27c6d96423ceef1f13a14df3)**() const |
|  | |
| bool | **[empty](#classUtil_1_1ResourceAttribute_1a3c9db65aa56efed937fb8d304a578213)**() const |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Util::ResourceAttribute::ResourceAttribute {#classUtil_1_1ResourceAttribute_1aa4941902ef925b7d505d43d6629010b0}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[ResourceAttribute](#classUtil_1_1ResourceAttribute_1aa4941902ef925b7d505d43d6629010b0)**( |  ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:32`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::ResourceAttribute {#classUtil_1_1ResourceAttribute_1a0c1020b330c0b9cc9eb2b21d48350e84}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
|  **[ResourceAttribute](#classUtil_1_1ResourceAttribute_1a0c1020b330c0b9cc9eb2b21d48350e84)**( | const [StringIdentifier](classUtil_1_1StringIdentifier) & | **_nameId**, |
| |  [TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1)  | **_dataType**, |
| | uint8_t | **_numValues**, |
| | bool | **_normalized**, |
| | uint16_t | **_offset** |
|   ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:34`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::operator== {#classUtil_1_1ResourceAttribute_1a03d24438d0271f271205e7abb056b97e}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[operator==](#classUtil_1_1ResourceAttribute_1a03d24438d0271f271205e7abb056b97e)**( | const [ResourceAttribute](classUtil_1_1ResourceAttribute) & | **other** ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:36`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::operator&lt; {#classUtil_1_1ResourceAttribute_1adc74a82e7a27647fab9d46f1c0efeb89}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[operator&lt;](#classUtil_1_1ResourceAttribute_1adc74a82e7a27647fab9d46f1c0efeb89)**( | const [ResourceAttribute](classUtil_1_1ResourceAttribute) & | **other** ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:37`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::toString {#classUtil_1_1ResourceAttribute_1ab15809e92cef5653d60526b7a8956ae0}

| public | const |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[toString](#classUtil_1_1ResourceAttribute_1ab15809e92cef5653d60526b7a8956ae0)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:38`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getOffset {#classUtil_1_1ResourceAttribute_1a2a317e5f787654d64c421ddf59e90669}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint16_t **[getOffset](#classUtil_1_1ResourceAttribute_1a2a317e5f787654d64c421ddf59e90669)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:40`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getDataSize {#classUtil_1_1ResourceAttribute_1a5accd4366ef106da1abe068e06db90cd}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint16_t **[getDataSize](#classUtil_1_1ResourceAttribute_1a5accd4366ef106da1abe068e06db90cd)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:41`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getNumValues {#classUtil_1_1ResourceAttribute_1ab4bb486ba18a057bdcac115325fa4062}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| uint8_t **[getNumValues](#classUtil_1_1ResourceAttribute_1ab4bb486ba18a057bdcac115325fa4062)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:42`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getDataType {#classUtil_1_1ResourceAttribute_1ab62818adae48febb3e674d925e128574}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [TypeConstant](group%5F%5Futil%5F%5Fhelper#group%5F%5Futil%5F%5Fhelper_1ga1a435620d3040a5fff9aa70ec2be94a1) **[getDataType](#classUtil_1_1ResourceAttribute_1ab62818adae48febb3e674d925e128574)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:43`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::isNormalized {#classUtil_1_1ResourceAttribute_1acae9310829ae9d0926515dcf6f163d64}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[isNormalized](#classUtil_1_1ResourceAttribute_1acae9310829ae9d0926515dcf6f163d64)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:44`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getNameId {#classUtil_1_1ResourceAttribute_1aad49269cbd4d27ed44aef0f680a74f76}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [StringIdentifier](classUtil_1_1StringIdentifier) **[getNameId](#classUtil_1_1ResourceAttribute_1aad49269cbd4d27ed44aef0f680a74f76)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:45`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::getName {#classUtil_1_1ResourceAttribute_1a370be99b27c6d96423ceef1f13a14df3}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| std::string **[getName](#classUtil_1_1ResourceAttribute_1a370be99b27c6d96423ceef1f13a14df3)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:46`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Util::ResourceAttribute::empty {#classUtil_1_1ResourceAttribute_1a3c9db65aa56efed937fb8d304a578213}

| public | const | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| bool **[empty](#classUtil_1_1ResourceAttribute_1a3c9db65aa56efed937fb8d304a578213)**( |  ) const |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Resources/ResourceFormat.h:47`</sub>{:style="float: right"}

-------------------------------------------------------------------

