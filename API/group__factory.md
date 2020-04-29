---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Util:namespaceUtil"
keywords: to_function_pointer, to_function
kind: group
layout: api
path: Util->Factory
permalink: group__factory
show_in_toc: true
sidebar: api_sidebar
title: "Factory"
toc: false
use_as_root: true
---

| void |
{:.api_label}

## Description





## Namespaces

|
| --------- | ------------------------------------------------------------------ | 
| namespace | [Util::FallbackPolicies](namespaceUtil_1_1FallbackPolicies) <br/>  | 
{: .nohead }

## Classes

|
| ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | 
| class  | [Util::Factory](classUtil_1_1Factory) <br/> [Generic](classUtil_1_1Generic) factory for objects.                                                                                         | 
| class  | [Util::ObjectCreator](classUtil_1_1ObjectCreator) <br/> [Generic](classUtil_1_1Generic) creator for objects.                                                                             | 
| class  | [Util::PointerHolderCreator](classUtil_1_1PointerHolderCreator) <br/> Creator for objects that holds a single instance.                                                                  | 
| struct | [Util::function_traits](structUtil_1_1function%5F%5Ftraits) <br/>                                                                                                                        | 
| struct | [Util::function_traits&lt; ReturnType(ClassType::*)(Args...) const  &gt;](structUtil_1_1function%5F%5Ftraits_3_01ReturnType_07ClassType_1_1_5_08_07Args_8_8_8_08_01const_01_01_4) <br/>  | 
| class  | [Util::LambdaFactory](classUtil_1_1LambdaFactory) <br/> [Generic](classUtil_1_1Generic) factory for objects allowing lambdas with variable number of arguments as creator functions.     | 
| class  | [Util::ObjectCache](classUtil_1_1ObjectCache) <br/> [Generic](classUtil_1_1Generic) object cache for objects allowing lambdas with variable number of arguments as cache functions.      | 
| class  | [Util::ObjectPool](classUtil_1_1ObjectPool) <br/> [Generic](classUtil_1_1Generic) object pool for objects.                                                                               | 
| class  | [Util::WrapperFactory](classUtil_1_1WrapperFactory) <br/> [Generic](classUtil_1_1Generic) factory for wrapper objects.                                                                   | 
| class  | [Util::PolymorphicWrapperCreator](classUtil_1_1PolymorphicWrapperCreator) <br/> [Generic](classUtil_1_1Generic) creator for wrapper objects.                                             | 
{: .nohead }

## Functions

|
| ------: | ----------------- |
| template< typename Function  >  | |
| function_traits< Function >::pointer | **[to_function_pointer](#group%5F%5Ffactory_1ga6c2102b38f5d96324ab9e174d68f5556)**(Function & lambda) |
| template< typename Function  >  | |
| function_traits< Function >::function | **[to_function](#group%5F%5Ffactory_1ga332cddd0a0566d21d52a2ccf460c10be)**(Function & lambda) |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> to_function_pointer {#group__factory_1ga6c2102b38f5d96324ab9e174d68f5556}

| public |
{:.api_label}

|
| ------: | ----------------- |
| template< typename Function  > |
| function_traits< Function >::pointer **[to_function_pointer](#group%5F%5Ffactory_1ga6c2102b38f5d96324ab9e174d68f5556)**( | Function & | **lambda** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Factory/LambdaFactory.h:40`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> to_function {#group__factory_1ga332cddd0a0566d21d52a2ccf460c10be}

| public |
{:.api_label}

|
| ------: | ----------------- |
| template< typename Function  > |
| function_traits< Function >::function **[to_function](#group%5F%5Ffactory_1ga332cddd0a0566d21d52a2ccf460c10be)**( | Function & | **lambda** ) |
{: .nohead .nowrap1 .api_doc }





<sub>Defined in `Util/Factory/LambdaFactory.h:46`</sub>{:style="float: right"}

-------------------------------------------------------------------

