---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil"
keywords: createString, createString
kind: group
layout: api
path: Util->Generic Attributes
permalink: group__generic__attr
show_in_toc: true
sidebar: api_sidebar
title: "Generic Attributes"
toc: false
use_as_root: true
---

| void |
{:.api_label}

## Description





## Namespaces

|
| --------- | ---------------------------------------------------------------------------------------------------------------------------- | 
| namespace | [Util::GenericConversion](namespaceUtil_1_1GenericConversion) <br/> Conversion to and from [Generic](classUtil_1_1Generic) . | 
{: .nohead }

## Classes

|
| ----- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | 
| class | [Util::AttributeProvider](classUtil_1_1AttributeProvider) <br/>                                                                                                                                 | 
| class | [Util::Generic](classUtil_1_1Generic) <br/> Container for a value with generic type.                                                                                                            | 
| class | [Util::GenericAttribute](classUtil_1_1GenericAttribute) <br/>                                                                                                                                   | 
| class | [Util::WrapperAttribute](classUtil_1_1WrapperAttribute) <br/>                                                                                                                                   | 
| class | [Util::GenericNumberAttribute](classUtil_1_1GenericNumberAttribute) <br/>                                                                                                                       | 
| class | [Util::_NumberAttribute](classUtil_1_1%5F%5FNumberAttribute) <br/>                                                                                                                              | 
| class | [Util::BoolAttribute](classUtil_1_1BoolAttribute) <br/>                                                                                                                                         | 
| class | [Util::GenericStringAttribute](classUtil_1_1GenericStringAttribute) <br/>                                                                                                                       | 
| class | [Util::_StringAttribute](classUtil_1_1%5F%5FStringAttribute) <br/>                                                                                                                              | 
| class | [Util::ReferenceAttribute](classUtil_1_1ReferenceAttribute) <br/>                                                                                                                               | 
| class | [Util::GenericAttributeMap](classUtil_1_1GenericAttributeMap) <br/>                                                                                                                             | 
| class | [Util::GenericAttributeList](classUtil_1_1GenericAttributeList) <br/>                                                                                                                           | 
| class | [Util::GenericAttributeSerialization](classUtil_1_1GenericAttributeSerialization) <br/> [Serialization](namespaceUtil_1_1Serialization) for [GenericAttribute](classUtil_1_1GenericAttribute) . | 
{: .nohead }

## Functions

|
| ------: | ----------------- |
|  | |
| StringAttribute * | **[createString](#group%5F%5Fgeneric%5F%5Fattr_1gaf4b9d8f2bdb6833509c5f08e449477a7)**(const std::string & s) |
|  | |
| StringAttribute * | **[createString](#group%5F%5Fgeneric%5F%5Fattr_1ga0af5ffa3b546ca5df5dabf1c7eb5a761)**(std::string && s) |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> createString {#group__generic__attr_1gaf4b9d8f2bdb6833509c5f08e449477a7}

| public | static | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| StringAttribute * **[createString](#group%5F%5Fgeneric%5F%5Fattr_1gaf4b9d8f2bdb6833509c5f08e449477a7)**( | const std::string & | **s** ) |
{: .nohead .nowrap1 .api_doc }



Encapsulate a standard string into a generic attribute.


#### Parameters
**s**
:  Standard string




#### Returns
String encapsulated into a generic string attribute





<sub>Defined in `Util/GenericAttribute.h:82`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createString {#group__generic__attr_1ga0af5ffa3b546ca5df5dabf1c7eb5a761}

| public | static | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| StringAttribute * **[createString](#group%5F%5Fgeneric%5F%5Fattr_1ga0af5ffa3b546ca5df5dabf1c7eb5a761)**( | std::string && | **s** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/GenericAttribute.h:83`</sub>{:style="float: right"}

-------------------------------------------------------------------

