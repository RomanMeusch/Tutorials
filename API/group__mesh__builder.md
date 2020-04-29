---
author: Generated using <a href="http://www.doxygen.nl/">Doxygen</a>
breadcrumbs: "Rendering:namespaceRendering|Resources:group__rendering__resources|Mesh:group__mesh"
keywords: createBox, addBox, createDome, addDome, createSphere, addSphere, createDiscSector, addDiscSector, createRingSector, addRingSector, createCone, addCone, createConicalFrustum, addConicalFrustum, createArrow, addArrow, createRectangle, createRectangle, addRectangle, addRectangle, createGrid, addGrid, createHexGrid, addHexGrid, createVoxelMesh, addVoxelMesh, createTorus, addTorus, createMeshFromBitmaps, addMeshFromBitmaps
kind: group
layout: api
path: Rendering->Resources->Mesh->Mesh Builder
permalink: group__mesh__builder
show_in_toc: true
sidebar: api_sidebar
title: "Mesh Builder"
toc: false
use_as_root: true
---

| void |
{:.api_label}

## Description



 [Mesh](classRendering_1_1Mesh) builders can be used to create meshes.



## Namespaces

|
| --------- | -------------------------------------------------------------------------------------------------------------------- | 
| namespace | [Rendering::MeshUtils::MarchingCubesMeshBuilder](namespaceRendering_1_1MeshUtils_1_1MarchingCubesMeshBuilder) <br/>  | 
| namespace | [Rendering::MeshUtils::PlatonicSolids](namespaceRendering_1_1MeshUtils_1_1PlatonicSolids) <br/>                      | 
| namespace | [Rendering::MeshUtils::WireShapes](namespaceRendering_1_1MeshUtils_1_1WireShapes) <br/>                              | 
{: .nohead }

## Classes

|
| ----- | ------------------------------------------------------------------------------------------------------ | 
| class | [Rendering::MeshUtils::MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) <br/>                  | 
| class | [Rendering::MeshUtils::QuadtreeMeshBuilder](classRendering_1_1MeshUtils_1_1QuadtreeMeshBuilder) <br/>  | 
{: .nohead }

## Functions

|
| ------: | ----------------- |
|  | |
| Mesh * | **[createBox](#group%5F%5Fmesh%5F%5Fbuilder_1gadcabbacfabfe221004d11494c8ef60c0)**(const VertexDescription & vd, const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & box) |
|  | |
| void | **[addBox](#group%5F%5Fmesh%5F%5Fbuilder_1ga2183404b9b165fe88049c25436357893)**(MeshBuilder & mb, const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & box) <br/> Adds a box to the given meshBuilder. |
|  | |
| Mesh * | **[createDome](#group%5F%5Fmesh%5F%5Fbuilder_1gaf7c627bb2e97719739291bef42697831)**(const VertexDescription & vd, const double radius, const int horiRes, const int vertRes, const double halfSphereFraction, const double imagePercentage) |
|  | |
| void | **[addDome](#group%5F%5Fmesh%5F%5Fbuilder_1gacebb186693c4bc52c27255eae776697a)**(MeshBuilder & mb, const double radius, const int horiRes, const int vertRes, const double halfSphereFraction, const double imagePercentage) <br/> Adds a dome to the given meshBuilder. |
|  | |
| Mesh * | **[createSphere](#group%5F%5Fmesh%5F%5Fbuilder_1ga276dcbfddaf2a3e66360ab3c4253df17)**(const VertexDescription & vd, const [Geometry::Sphere_f](namespaceGeometry#namespaceGeometry_1a652026bcf8da8be261079731c22e7321) & sphere, uint32_t inclinationSegments, uint32_t azimuthSegments) |
|  | |
| void | **[addSphere](#group%5F%5Fmesh%5F%5Fbuilder_1ga917791c7db3b90fe0d0b91db7c0d67b8)**(MeshBuilder & mb, const [Geometry::Sphere_f](namespaceGeometry#namespaceGeometry_1a652026bcf8da8be261079731c22e7321) & sphere, uint32_t inclinationSegments, uint32_t azimuthSegments) <br/> Adds a shere to the given meshBuilder. |
|  | |
| Mesh * | **[createDiscSector](#group%5F%5Fmesh%5F%5Fbuilder_1ga21a3ff8668f01e398a984be62515324f)**(const VertexDescription & vd, float radius, uint8_t numSegments, float angle) |
|  | |
| void | **[addDiscSector](#group%5F%5Fmesh%5F%5Fbuilder_1gab152ac69a2ccdc484b7956f237b69909)**(MeshBuilder & mb, float radius, uint8_t numSegments, float angle) <br/> Adds a disc sector to the given meshBuilder. |
|  | |
| Mesh * | **[createRingSector](#group%5F%5Fmesh%5F%5Fbuilder_1gac23e60d0b06f0a52fc99d35e1b971dee)**(const VertexDescription & vd, float innerRadius, float outerRadius, uint8_t numSegments, float angle) |
|  | |
| void | **[addRingSector](#group%5F%5Fmesh%5F%5Fbuilder_1ga1dec235ccb060799919c257d3330d576)**(MeshBuilder & mb, float innerRadius, float outerRadius, uint8_t numSegments, float angle) <br/> Adds a ring sector to the given meshBuilder. |
|  | |
| Mesh * | **[createCone](#group%5F%5Fmesh%5F%5Fbuilder_1ga1c81f86476d156fb842570da8a113e4d)**(const VertexDescription & vd, float radius, float height, uint8_t numSegments) |
|  | |
| void | **[addCone](#group%5F%5Fmesh%5F%5Fbuilder_1gab6dcff2f904619df4fa969c0beab41c7)**(MeshBuilder & mb, float radius, float height, uint8_t numSegments) <br/> Adds a cone to the given meshBuilder. |
|  | |
| Mesh * | **[createConicalFrustum](#group%5F%5Fmesh%5F%5Fbuilder_1ga1cac118ebebeeb679262355a4b27168e)**(const VertexDescription & vd, float radiusBottom, float radiusTop, float height, uint8_t numSegments) |
|  | |
| void | **[addConicalFrustum](#group%5F%5Fmesh%5F%5Fbuilder_1gaf9f15408c4eeafc34316cfeb52684f7c)**(MeshBuilder & mb, float radiusBottom, float radiusTop, float height, uint8_t numSegments) <br/> Adds a conical frustum to the given meshBuilder. |
|  | |
| Mesh * | **[createArrow](#group%5F%5Fmesh%5F%5Fbuilder_1ga14e9f46ef2ca5ca6d1db5dc3095f4d3a)**(const VertexDescription & vd, float radius, float length) |
|  | |
| void | **[addArrow](#group%5F%5Fmesh%5F%5Fbuilder_1gae8ca2735dd9c6300781ff429eb2364d3)**(MeshBuilder & mb, float radius, float length) <br/> Adds an arrow to the given meshBuilder. |
|  | |
| Mesh * | **[createRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1gaab5326a8ec8f50c74733ac6b7553ec30)**(const VertexDescription & vd, const [Geometry::Rect_f](namespaceGeometry#namespaceGeometry_1a6322e5950b8a5431445649300e786a52) & rect) |
|  | |
| Mesh * | **[createRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1gab80567e5cbd0318a3c08a10054d963b0)**(const VertexDescription & vd, float width, float height) |
|  | |
| void | **[addRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1ga773e516c509bd21ad601a2429da6979b)**(MeshBuilder & mb, const [Geometry::Rect_f](namespaceGeometry#namespaceGeometry_1a6322e5950b8a5431445649300e786a52) & rect) <br/> Adds an rectangle to the given meshBuilder. |
|  | |
| void | **[addRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1ga892c342c01b71b7e44909bf58e6198c8)**(MeshBuilder & mb, float width, float height) <br/> Adds an rectangle to the given meshBuilder. |
|  | |
| Mesh * | **[createGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga547256af2002a66fee161fe0c93d7ad6)**(const VertexDescription & vd, float width, float height, uint32_t rows, uint32_t columns) |
|  | |
| void | **[addGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga9e261ae7b8df264a744afdf7bc4776cd)**(MeshBuilder & mb, float width, float height, uint32_t rows, uint32_t columns) <br/> Adds a rectangular grid to the given meshBuilder. |
|  | |
| Mesh * | **[createHexGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga5633c20fe3bda852434912b8f3c90a36)**(const VertexDescription & vd, float width, float height, uint32_t rows, uint32_t columns) |
|  | |
| void | **[addHexGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga1a47780cdc562f708890d4c2ef481c25)**(MeshBuilder & mb, float width, float height, uint32_t rows, uint32_t columns) <br/> Adds a hexagonal grid to the given meshBuilder. |
|  | |
| Mesh * | **[createVoxelMesh](#group%5F%5Fmesh%5F%5Fbuilder_1ga486ccc4072aef040c07190d53a2fa301)**(const VertexDescription & vd, const [Util::PixelAccessor](classUtil_1_1PixelAccessor) & colorAcc, uint32_t depth) |
|  | |
| void | **[addVoxelMesh](#group%5F%5Fmesh%5F%5Fbuilder_1ga3df2ec6de94e282247d1d1b1d4a57f0a)**(MeshBuilder & mb, const [Util::PixelAccessor](classUtil_1_1PixelAccessor) & colorAcc, uint32_t depth) <br/> Adds a voxel mesh to the given meshBuilder. |
|  | |
| Mesh * | **[createTorus](#group%5F%5Fmesh%5F%5Fbuilder_1ga9fac437793f3677ab00265adfa509cad)**(const VertexDescription & vd, float innerRadius, float outerRadius, uint32_t majorSegments, uint32_t minorSegments) |
|  | |
| void | **[addTorus](#group%5F%5Fmesh%5F%5Fbuilder_1gaf356cac848a1a3e0182f42a87fbc0192)**(MeshBuilder & mb, float innerRadius, float outerRadius, uint32_t majorSegments, uint32_t minorSegments) <br/> Adds a torus to the [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) . |
|  | |
| Mesh * | **[createMeshFromBitmaps](#group%5F%5Fmesh%5F%5Fbuilder_1ga3f653c2a76a2df80fd785b1cc143d367)**(const VertexDescription & vd,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > depth,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > color,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > normals) |
|  | |
| void | **[addMeshFromBitmaps](#group%5F%5Fmesh%5F%5Fbuilder_1ga2b78d18d8f0c4963745863e23e80acaf)**(MeshBuilder & mb,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > depth,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > color,  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > normals) <br/> Adds a mesh from bitmap to the given meshBuilder. |
{: .nohead .nowrap1 .api_section }


-------------------------------------------------------------------

## Documentation

### <small>function</small><br/> createBox {#group__mesh__builder_1gadcabbacfabfe221004d11494c8ef60c0}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createBox](#group%5F%5Fmesh%5F%5Fbuilder_1gadcabbacfabfe221004d11494c8ef60c0)**( | const VertexDescription & | **vd**, |
| | const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & | **box** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return the mesh of a three-dimensional, axis-aligned box. Positions, and normals are supported.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**box**
:  Geometric specification of the box




#### Returns
 [Mesh](classRendering_1_1Mesh) of the box





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:62`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addBox {#group__mesh__builder_1ga2183404b9b165fe88049c25436357893}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addBox](#group%5F%5Fmesh%5F%5Fbuilder_1ga2183404b9b165fe88049c25436357893)**( | MeshBuilder & | **mb**, |
| | const [Geometry::Box](namespaceGeometry#namespaceGeometry_1a02eb80497cc2daa40fba114c929f877a) & | **box** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a box to the given meshBuilder.





*See also*:  [createBox](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gadcabbacfabfe221004d11494c8ef60c0) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:65`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createDome {#group__mesh__builder_1gaf7c627bb2e97719739291bef42697831}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createDome](#group%5F%5Fmesh%5F%5Fbuilder_1gaf7c627bb2e97719739291bef42697831)**( | const VertexDescription & | **vd**, |
| | const double | **radius**, |
| | const int | **horiRes**, |
| | const int | **vertRes**, |
| | const double | **halfSphereFraction**, |
| | const double | **imagePercentage** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a mesh for a sky dome with texture coordinates.
> **Note**: adapted from [alc][http://irrlicht.sourceforge.net/phpBB2/viewtopic.php?t=13887&sid=25788d2b93c73294fd7abe76db6fab1e](http://irrlicht.sourceforge.net/phpBB2/viewtopic.php?t=13887&sid=25788d2b93c73294fd7abe76db6fab1e)






<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:69`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addDome {#group__mesh__builder_1gacebb186693c4bc52c27255eae776697a}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addDome](#group%5F%5Fmesh%5F%5Fbuilder_1gacebb186693c4bc52c27255eae776697a)**( | MeshBuilder & | **mb**, |
| | const double | **radius**, |
| | const int | **horiRes**, |
| | const int | **vertRes**, |
| | const double | **halfSphereFraction**, |
| | const double | **imagePercentage** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a dome to the given meshBuilder.





*See also*:  [createDome](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gaf7c627bb2e97719739291bef42697831) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:72`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createSphere {#group__mesh__builder_1ga276dcbfddaf2a3e66360ab3c4253df17}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createSphere](#group%5F%5Fmesh%5F%5Fbuilder_1ga276dcbfddaf2a3e66360ab3c4253df17)**( | const VertexDescription & | **vd**, |
| | const [Geometry::Sphere_f](namespaceGeometry#namespaceGeometry_1a652026bcf8da8be261079731c22e7321) & | **sphere**, |
| | uint32_t | **inclinationSegments**, |
| | uint32_t | **azimuthSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a sphere, which is generated by subdividing the sphere surface into segements. The surface is subdivided into the given number of subdivisions of the inclination angle and the azimuth angle, respectively. The sphere is centered at the origin and the vertices are lying on the unit sphere. The given vertex description specifies which information is generated for every vertex. Positions, normals, colors, and texture coordinates are supported.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**inclinationSegments**
:  Number of subdivisions of the inclination angle



**azimuthSegments**
:  Number of subdivisions of the azimuth angle




#### Returns
Sphere [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:87`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addSphere {#group__mesh__builder_1ga917791c7db3b90fe0d0b91db7c0d67b8}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addSphere](#group%5F%5Fmesh%5F%5Fbuilder_1ga917791c7db3b90fe0d0b91db7c0d67b8)**( | MeshBuilder & | **mb**, |
| | const [Geometry::Sphere_f](namespaceGeometry#namespaceGeometry_1a652026bcf8da8be261079731c22e7321) & | **sphere**, |
| | uint32_t | **inclinationSegments**, |
| | uint32_t | **azimuthSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a shere to the given meshBuilder.





*See also*:  [createSphere](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga276dcbfddaf2a3e66360ab3c4253df17) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:90`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createDiscSector {#group__mesh__builder_1ga21a3ff8668f01e398a984be62515324f}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createDiscSector](#group%5F%5Fmesh%5F%5Fbuilder_1ga21a3ff8668f01e398a984be62515324f)**( | const VertexDescription & | **vd**, |
| | float | **radius**, |
| | uint8_t | **numSegments**, |
| | float | **angle** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a sector of a disc. The center of the disc is the origin. The disc is aligned with the y-z plane and the normals are pointing into negative x direction. Positions and normals for the vertices are generated.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**radius**
:  Radius of the disc



**numSegments**
:  Number of segments for the disc



**angle**
:  Central angle of the sector in degrees




#### Returns
Disc [Mesh](classRendering_1_1Mesh) or`nullptr`if the number of segments is smaller than two.





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:104`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addDiscSector {#group__mesh__builder_1gab152ac69a2ccdc484b7956f237b69909}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addDiscSector](#group%5F%5Fmesh%5F%5Fbuilder_1gab152ac69a2ccdc484b7956f237b69909)**( | MeshBuilder & | **mb**, |
| | float | **radius**, |
| | uint8_t | **numSegments**, |
| | float | **angle** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a disc sector to the given meshBuilder.





*See also*:  [createDiscSector](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga21a3ff8668f01e398a984be62515324f) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:107`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createRingSector {#group__mesh__builder_1gac23e60d0b06f0a52fc99d35e1b971dee}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createRingSector](#group%5F%5Fmesh%5F%5Fbuilder_1gac23e60d0b06f0a52fc99d35e1b971dee)**( | const VertexDescription & | **vd**, |
| | float | **innerRadius**, |
| | float | **outerRadius**, |
| | uint8_t | **numSegments**, |
| | float | **angle** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a sector of a ring. The center of the disc is the origin. The disc is aligned with the y-z plane and the normals are pointing into negative x direction. Positions and normals for the vertices are generated.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**innerRadius**
:  inner radius of the ring



**outerRadius**
:  outer radius of the ring



**numSegments**
:  Number of segments for the disc



**angle**
:  Central angle of the sector in degrees




#### Returns
Disc [Mesh](classRendering_1_1Mesh) or`nullptr`if the number of segments is smaller than two or innerRadius >= outerRadius





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:122`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addRingSector {#group__mesh__builder_1ga1dec235ccb060799919c257d3330d576}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addRingSector](#group%5F%5Fmesh%5F%5Fbuilder_1ga1dec235ccb060799919c257d3330d576)**( | MeshBuilder & | **mb**, |
| | float | **innerRadius**, |
| | float | **outerRadius**, |
| | uint8_t | **numSegments**, |
| | float | **angle** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a ring sector to the given meshBuilder.





*See also*:  [createRingSector](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gac23e60d0b06f0a52fc99d35e1b971dee) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:125`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createCone {#group__mesh__builder_1ga1c81f86476d156fb842570da8a113e4d}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createCone](#group%5F%5Fmesh%5F%5Fbuilder_1ga1c81f86476d156fb842570da8a113e4d)**( | const VertexDescription & | **vd**, |
| | float | **radius**, |
| | float | **height**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a cone with the radius given. The cap end is not created. The center of the base is the origin. The apex lies on the x-axis at distance*height*from the origin. Positions and normals for the vertices are generated.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**radius**
:  Radius of the base



**height**
:  Distance between the base and the apex



**numSegments**
:  Number of segments for the circle at the base and the lateral surface




#### Returns
Cone [Mesh](classRendering_1_1Mesh) or`nullptr`if the number of segments is smaller than two



*See also*: createDisc() for creation of a cap end





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:141`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addCone {#group__mesh__builder_1gab6dcff2f904619df4fa969c0beab41c7}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addCone](#group%5F%5Fmesh%5F%5Fbuilder_1gab6dcff2f904619df4fa969c0beab41c7)**( | MeshBuilder & | **mb**, |
| | float | **radius**, |
| | float | **height**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a cone to the given meshBuilder.





*See also*:  [createCone](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga1c81f86476d156fb842570da8a113e4d) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:144`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createConicalFrustum {#group__mesh__builder_1ga1cac118ebebeeb679262355a4b27168e}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createConicalFrustum](#group%5F%5Fmesh%5F%5Fbuilder_1ga1cac118ebebeeb679262355a4b27168e)**( | const VertexDescription & | **vd**, |
| | float | **radiusBottom**, |
| | float | **radiusTop**, |
| | float | **height**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Return a conical frustum with the radii given. The cap ends are not created. The center of the bottom circle is the origin. The center of the top circle lies on the x-axis at distance*height*from the origin. If both radii have the same value, a cylinder is created. Positions and normals for the vertices are generated.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**radiusBottom**
:  Radius of the bottom circle



**radiusTop**
:  Radius of the top circle



**height**
:  Distance between both circles



**numSegments**
:  Number of segments for the circles and the lateral surface




#### Returns
Conical frustum [Mesh](classRendering_1_1Mesh) or`nullptr`if the number of segments is smaller than two



*See also*: createDisc() for creation of cap ends





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:162`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addConicalFrustum {#group__mesh__builder_1gaf9f15408c4eeafc34316cfeb52684f7c}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addConicalFrustum](#group%5F%5Fmesh%5F%5Fbuilder_1gaf9f15408c4eeafc34316cfeb52684f7c)**( | MeshBuilder & | **mb**, |
| | float | **radiusBottom**, |
| | float | **radiusTop**, |
| | float | **height**, |
| | uint8_t | **numSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a conical frustum to the given meshBuilder.





*See also*:  [createConicalFrustum](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga1cac118ebebeeb679262355a4b27168e) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:165`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createArrow {#group__mesh__builder_1ga14e9f46ef2ca5ca6d1db5dc3095f4d3a}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createArrow](#group%5F%5Fmesh%5F%5Fbuilder_1ga14e9f46ef2ca5ca6d1db5dc3095f4d3a)**( | const VertexDescription & | **vd**, |
| | float | **radius**, |
| | float | **length** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Returns an arrow which consists of a ConicalFrustum and 2 Cones at one end.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**radius**
:  Radius of the arrow



**length**
:  Overall length of the arrow




#### Returns
Arrow [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:175`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addArrow {#group__mesh__builder_1gae8ca2735dd9c6300781ff429eb2364d3}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addArrow](#group%5F%5Fmesh%5F%5Fbuilder_1gae8ca2735dd9c6300781ff429eb2364d3)**( | MeshBuilder & | **mb**, |
| | float | **radius**, |
| | float | **length** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds an arrow to the given meshBuilder.





*See also*:  [createArrow](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga14e9f46ef2ca5ca6d1db5dc3095f4d3a) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:178`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createRectangle {#group__mesh__builder_1gaab5326a8ec8f50c74733ac6b7553ec30}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1gaab5326a8ec8f50c74733ac6b7553ec30)**( | const VertexDescription & | **vd**, |
| | const [Geometry::Rect_f](namespaceGeometry#namespaceGeometry_1a6322e5950b8a5431445649300e786a52) & | **rect** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Returns a Rectangle consisting of 2 triangles (oriented in x-y-plane)


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**rect**
:  the rectangle




#### Returns
Rectangle [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:187`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createRectangle {#group__mesh__builder_1gab80567e5cbd0318a3c08a10054d963b0}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1gab80567e5cbd0318a3c08a10054d963b0)**( | const VertexDescription & | **vd**, |
| | float | **width**, |
| | float | **height** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Returns a Rectangle consisting of 2 triangles with origin in the center (oriented in x-y-plane)


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**width**
:  The width of the rectangle



**height**
:  The height of the rectangle




#### Returns
Rectangle [Mesh](classRendering_1_1Mesh) 





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:197`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addRectangle {#group__mesh__builder_1ga773e516c509bd21ad601a2429da6979b}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1ga773e516c509bd21ad601a2429da6979b)**( | MeshBuilder & | **mb**, |
| | const [Geometry::Rect_f](namespaceGeometry#namespaceGeometry_1a6322e5950b8a5431445649300e786a52) & | **rect** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds an rectangle to the given meshBuilder.





*See also*:  [createRectangle](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gaab5326a8ec8f50c74733ac6b7553ec30) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:202`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addRectangle {#group__mesh__builder_1ga892c342c01b71b7e44909bf58e6198c8}

| public | inline |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addRectangle](#group%5F%5Fmesh%5F%5Fbuilder_1ga892c342c01b71b7e44909bf58e6198c8)**( | MeshBuilder & | **mb**, |
| | float | **width**, |
| | float | **height** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds an rectangle to the given meshBuilder.





*See also*:  [createRectangle](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gaab5326a8ec8f50c74733ac6b7553ec30) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:204`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createGrid {#group__mesh__builder_1ga547256af2002a66fee161fe0c93d7ad6}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga547256af2002a66fee161fe0c93d7ad6)**( | const VertexDescription & | **vd**, |
| | float | **width**, |
| | float | **height**, |
| | uint32_t | **rows**, |
| | uint32_t | **columns** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a rectangular grid in the x-z-plane.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**width**
:  The width of the grid



**height**
:  The height of the grid



**rows**
:  number of rows



**columns**
:  number of columns







<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:217`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addGrid {#group__mesh__builder_1ga9e261ae7b8df264a744afdf7bc4776cd}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga9e261ae7b8df264a744afdf7bc4776cd)**( | MeshBuilder & | **mb**, |
| | float | **width**, |
| | float | **height**, |
| | uint32_t | **rows**, |
| | uint32_t | **columns** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a rectangular grid to the given meshBuilder.





*See also*:  [createGrid](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga547256af2002a66fee161fe0c93d7ad6) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:220`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createHexGrid {#group__mesh__builder_1ga5633c20fe3bda852434912b8f3c90a36}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createHexGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga5633c20fe3bda852434912b8f3c90a36)**( | const VertexDescription & | **vd**, |
| | float | **width**, |
| | float | **height**, |
| | uint32_t | **rows**, |
| | uint32_t | **columns** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a hexagonal grid in the x-z-plane.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**width**
:  The width of the grid



**height**
:  The height of the grid



**rows**
:  number of rows. Needs to be at least 3



**columns**
:  number of columns. Needs to be at least 4







<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:231`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addHexGrid {#group__mesh__builder_1ga1a47780cdc562f708890d4c2ef481c25}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addHexGrid](#group%5F%5Fmesh%5F%5Fbuilder_1ga1a47780cdc562f708890d4c2ef481c25)**( | MeshBuilder & | **mb**, |
| | float | **width**, |
| | float | **height**, |
| | uint32_t | **rows**, |
| | uint32_t | **columns** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a hexagonal grid to the given meshBuilder.





*See also*:  [createHexGrid](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga5633c20fe3bda852434912b8f3c90a36) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:234`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createVoxelMesh {#group__mesh__builder_1ga486ccc4072aef040c07190d53a2fa301}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createVoxelMesh](#group%5F%5Fmesh%5F%5Fbuilder_1ga486ccc4072aef040c07190d53a2fa301)**( | const VertexDescription & | **vd**, |
| | const [Util::PixelAccessor](classUtil_1_1PixelAccessor) & | **colorAcc**, |
| | uint32_t | **depth** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a mesh from a voxel bitmap as exported from a 3D [Texture](classRendering_1_1Texture) . The bitmap should have a height of depth*heiht, i.e., each depth layer is stored from top to bottom in the vertical direction of the bitmap. The height and width of the voxel grid is derived from the bitmap width and height. The actual height of the voxel grid is bitmap-height/depth. A voxel box of size 1^3 is created for every pixel with a positive alpha value. The local point (0,0,0) in the resulting mesh corresponds to the (0,0,0) coordinate in the voxel bitmap. To scale the mesh afterwards, use [MeshUtils::transform](namespaceRendering_1_1MeshUtils#namespaceRendering_1_1MeshUtils_1af7e5065895da388620e53c8892464cc6) 


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**colorAcc**
:  the bitmap that defines the voxel grid. Every pixel with non-zero alpha value defines a voxel.



**the**
:  depth of the voxel grid. The height of the bitmap should be divisible by this value







<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:248`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addVoxelMesh {#group__mesh__builder_1ga3df2ec6de94e282247d1d1b1d4a57f0a}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addVoxelMesh](#group%5F%5Fmesh%5F%5Fbuilder_1ga3df2ec6de94e282247d1d1b1d4a57f0a)**( | MeshBuilder & | **mb**, |
| | const [Util::PixelAccessor](classUtil_1_1PixelAccessor) & | **colorAcc**, |
| | uint32_t | **depth** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a voxel mesh to the given meshBuilder.





*See also*:  [createHexGrid](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga5633c20fe3bda852434912b8f3c90a36) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:251`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createTorus {#group__mesh__builder_1ga9fac437793f3677ab00265adfa509cad}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createTorus](#group%5F%5Fmesh%5F%5Fbuilder_1ga9fac437793f3677ab00265adfa509cad)**( | const VertexDescription & | **vd**, |
| | float | **innerRadius**, |
| | float | **outerRadius**, |
| | uint32_t | **majorSegments**, |
| | uint32_t | **minorSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a torus mesh. The center of the torus is located at the origin. The aligned is aligned with the x-z plane.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**innerRadius**
:  inner radius of the torus. Should be greater than or equal 0.



**outerRadius**
:  outer radius of the torus. Should be greater than inner radius.



**majorSegments**
:  Number of major segments. Minimum is 3.



**minorSegments**
:  Number of minor segments. Minimum is 3.




#### Returns
The mesh





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:265`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addTorus {#group__mesh__builder_1gaf356cac848a1a3e0182f42a87fbc0192}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addTorus](#group%5F%5Fmesh%5F%5Fbuilder_1gaf356cac848a1a3e0182f42a87fbc0192)**( | MeshBuilder & | **mb**, |
| | float | **innerRadius**, |
| | float | **outerRadius**, |
| | uint32_t | **majorSegments**, |
| | uint32_t | **minorSegments** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a torus to the [MeshBuilder](classRendering_1_1MeshUtils_1_1MeshBuilder) .





*See also*:  [addTorus](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1gaf356cac848a1a3e0182f42a87fbc0192) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:268`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> createMeshFromBitmaps {#group__mesh__builder_1ga3f653c2a76a2df80fd785b1cc143d367}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| Mesh * **[createMeshFromBitmaps](#group%5F%5Fmesh%5F%5Fbuilder_1ga3f653c2a76a2df80fd785b1cc143d367)**( | const VertexDescription & | **vd**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **depth**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **color**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **normals** |
|   ) |
{: .nohead .nowrap1 .api_doc }



Creates a mesh from the input bitmap.


#### Parameters
**vd**
:  Vertex description specifying the vertex information to generate



**depth**
:  Bitmap with depth values. Translates to the y-values of the mesh.



**color**
:  Bitmap with colors.



**normals**
:  Bitmap with normals.




#### Returns
The mesh





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:280`</sub>{:style="float: right"}

-------------------------------------------------------------------

### <small>function</small><br/> addMeshFromBitmaps {#group__mesh__builder_1ga2b78d18d8f0c4963745863e23e80acaf}

| public |
{:.api_label}

|
| ------: | ----------------- |
|  |
| void **[addMeshFromBitmaps](#group%5F%5Fmesh%5F%5Fbuilder_1ga2b78d18d8f0c4963745863e23e80acaf)**( | MeshBuilder & | **mb**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **depth**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **color**, |
| |  [Util::Reference](classUtil_1_1Reference) < [Util::PixelAccessor](classUtil_1_1PixelAccessor) > | **normals** |
|   ) |
{: .nohead .nowrap1 .api_doc }

Adds a mesh from bitmap to the given meshBuilder.





*See also*:  [createMeshFromBitmaps](group%5F%5Fmesh%5F%5Fbuilder#group%5F%5Fmesh%5F%5Fbuilder_1ga3f653c2a76a2df80fd785b1cc143d367) (...)





<sub>Defined in `Rendering/MeshUtils/PrimitiveShapes.h:283`</sub>{:style="float: right"}

-------------------------------------------------------------------

