---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Rendering:namespaceRendering|Resources:group__rendering__resources|Mesh:group__mesh|Mesh Builder:group__mesh__builder"
keywords: createWireBox, addWireBox, createWireRectangle, addWireRectangle, createWireSphere, addWireSphere, createWireCircle, addWireCircle, createWireFrustum, addWireFrustum, createLine, addLine
kind: namespace
layout: api
path: Rendering->Resources->Mesh->Mesh Builder->WireShapes
permalink: namespaceRendering_1_1MeshUtils_1_1WireShapes
show_in_toc: true
sidebar: api_sidebar
title: "WireShapes"
toc: false
use_as_root: true
---

## Description





## Functions

|
| ------: | ----------------- |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createWireBox](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a4bc1e38b1b66dfb379858fdc995a3eff)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & box) |
|  | |
| void | **[addWireBox](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a5b1a87e2e542e0975289bf5984812c04)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & box) <br/> Adds a wireframe box to the given meshBuilder. |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createWireRectangle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afcb6c170b41325d8269cfc229d834bc1)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, const [Geometry::Rect](namespaceGeometry#namespaceGeometry_1acedeea2f6bddd99f077df6f73901a875) & rect) |
|  | |
| void | **[addWireRectangle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a74def440dd422072a2eafc5696ea5c85)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, const [Geometry::Rect](namespaceGeometry#namespaceGeometry_1acedeea2f6bddd99f077df6f73901a875) & rect) <br/> Adds an rectangle to the given meshBuilder. |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createWireSphere](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a37ec16a015843df5d0caf5c51d809088)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, const [Geometry::Sphere](namespaceGeometry#namespaceGeometry_1a9b4e1a33efb403c504f20270d8af5b07) & sphere, uint8_t numSegments) |
|  | |
| void | **[addWireSphere](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a2a5d09967ae9b796e737acf5d7523c7c)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, const [Geometry::Sphere](namespaceGeometry#namespaceGeometry_1a9b4e1a33efb403c504f20270d8af5b07) & sphere, uint8_t numSegments) <br/> Adds a shere to the given meshBuilder. |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createWireCircle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a0859e1d8970330d797150bbdd9b4fbee)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, float radius, uint8_t numSegments) |
|  | |
| void | **[addWireCircle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1aa0510078a75babc9265e897134802567)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, float radius, uint8_t numSegments) <br/> Adds a wireframe circle to the given meshBuilder. |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createWireFrustum](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1af7580f810bf4fd73fba95dda2285039a)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, const [Geometry::Frustum](classGeometry_1_1Frustum) & frustum) |
|  | |
| void | **[addWireFrustum](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a27ef50487be4ec85836db995eabdf652)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, const [Geometry::Frustum](classGeometry_1_1Frustum) & frustum) <br/> Adds a wireframe frustum to the given meshBuilder. |
|  | |
| [Mesh](classRendering_1_1Mesh) * | **[createLine](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afd1e98f459042f330de8e909a3f0032c)**(const [VertexDescription](classRendering_1_1VertexDescription) & vd, const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & start, const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & end) |
|  | |
| void | **[addLine](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a40c54f6e30c3f621d4ed256175a9b6c0)**( [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & mb, const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & start, const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & end) <br/> Adds a line to the given meshBuilder. |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createWireBox {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a4bc1e38b1b66dfb379858fdc995a3eff}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createWireBox](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a4bc1e38b1b66dfb379858fdc995a3eff)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & | **box** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return the wireframe mesh of a three-dimensional, axis-aligned box.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**box**
:  Geometric specification of the box




#### Returns
 [Mesh](classRendering_1_1Mesh) of the box





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:49`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addWireBox {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a5b1a87e2e542e0975289bf5984812c04}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addWireBox](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a5b1a87e2e542e0975289bf5984812c04)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & | **box** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a wireframe box to the given meshBuilder.





*See also*:  [createWireBox](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a4bc1e38b1b66dfb379858fdc995a3eff) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:52`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createWireRectangle {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afcb6c170b41325d8269cfc229d834bc1}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createWireRectangle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afcb6c170b41325d8269cfc229d834bc1)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | const [Geometry::Rect](namespaceGeometry#namespaceGeometry_1acedeea2f6bddd99f077df6f73901a875) & | **rect** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Returns a wireframe rectangle (oriented in x-y-plane)


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**rect**
:  the rectangle




#### Returns
Rectangle [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:61`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addWireRectangle {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a74def440dd422072a2eafc5696ea5c85}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addWireRectangle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a74def440dd422072a2eafc5696ea5c85)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | const [Geometry::Rect](namespaceGeometry#namespaceGeometry_1acedeea2f6bddd99f077df6f73901a875) & | **rect** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds an rectangle to the given meshBuilder.





*See also*:  [createWireRectangle](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afcb6c170b41325d8269cfc229d834bc1) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:64`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createWireSphere {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a37ec16a015843df5d0caf5c51d809088}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createWireSphere](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a37ec16a015843df5d0caf5c51d809088)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | const [Geometry::Sphere](namespaceGeometry#namespaceGeometry_1a9b4e1a33efb403c504f20270d8af5b07) & | **sphere**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a wireframe sphere, consisting of 3 axis-aligned circles.

*See also*:  [createWireCircle](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a0859e1d8970330d797150bbdd9b4fbee) (...)


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**sphere**
:  the sphere



**numSegments**
:  Number of segments for each circle




#### Returns
Sphere [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:75`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addWireSphere {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a2a5d09967ae9b796e737acf5d7523c7c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addWireSphere](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a2a5d09967ae9b796e737acf5d7523c7c)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | const [Geometry::Sphere](namespaceGeometry#namespaceGeometry_1a9b4e1a33efb403c504f20270d8af5b07) & | **sphere**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a shere to the given meshBuilder.





*See also*:  [createWireSphere](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a37ec16a015843df5d0caf5c51d809088) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:78`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createWireCircle {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a0859e1d8970330d797150bbdd9b4fbee}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createWireCircle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a0859e1d8970330d797150bbdd9b4fbee)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | float | **radius**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a wireframe circle (oriented in x-y-plane).


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**radius**
:  radius of the circle



**numSegments**
:  Number of segments for the circle




#### Returns
Circle [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:88`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addWireCircle {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1aa0510078a75babc9265e897134802567}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addWireCircle](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1aa0510078a75babc9265e897134802567)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | float | **radius**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a wireframe circle to the given meshBuilder.





*See also*:  [createWireCircle](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a0859e1d8970330d797150bbdd9b4fbee) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:91`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createWireFrustum {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1af7580f810bf4fd73fba95dda2285039a}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createWireFrustum](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1af7580f810bf4fd73fba95dda2285039a)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | const [Geometry::Frustum](classGeometry_1_1Frustum) & | **frustum** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a wireframe frustum.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**frustum**
:  the frustum




#### Returns
frustum [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:100`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addWireFrustum {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a27ef50487be4ec85836db995eabdf652}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addWireFrustum](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a27ef50487be4ec85836db995eabdf652)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | const [Geometry::Frustum](classGeometry_1_1Frustum) & | **frustum** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a wireframe frustum to the given meshBuilder.





*See also*:  [createWireFrustum](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1af7580f810bf4fd73fba95dda2285039a) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:103`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::createLine {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afd1e98f459042f330de8e909a3f0032c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| [Mesh](classRendering_1_1Mesh) * **[createLine](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afd1e98f459042f330de8e909a3f0032c)**( | const [VertexDescription](classRendering_1_1VertexDescription) & | **vd**, |
| | const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & | **start**, |
| | const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & | **end** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Returns an line mesh.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**start**
:  start of the line



**end**
:  end of the line




#### Returns
Line [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:113`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> Rendering::MeshUtils::WireShapes::addLine {#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a40c54f6e30c3f621d4ed256175a9b6c0}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addLine](#namespaceRendering_1_1MeshUtils_1_1WireShapes_1a40c54f6e30c3f621d4ed256175a9b6c0)**( |  [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) & | **mb**, |
| | const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & | **start**, |
| | const [Geometry::Vec3](namespaceGeometry#namespaceGeometry_1ab29e4544da9b15b5bf224cbf5b691313) & | **end** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a line to the given meshBuilder.





*See also*:  [createLine](namespaceRendering_1_1MeshUtils_1_1WireShapes#namespaceRendering_1_1MeshUtils_1_1WireShapes_1afd1e98f459042f330de8e909a3f0032c) (...)





<sub>Defined in `Rendering/MeshUtils/WireShapes.h:116`</sub>{:style="float: right"}

-------------------------------------------------------------------

