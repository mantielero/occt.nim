##  Created on: 2013-08-27
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../BVH/BVH_Geometry, ../BVH/BVH_Triangulation, ../BVH/BVH_BinnedBuilder,
  ../NCollection/NCollection_StdAllocator, OpenGl_TextureBufferArb,
  OpenGl_Texture, OpenGl_Sampler

discard "forward decl of OpenGl_Element"
discard "forward decl of OpenGl_ElementNode"
discard "forward decl of OpenGl_Group"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_PrimitiveArray"
## ! Checks to see if the group contains ray-trace geometry.

proc IsRaytracedGroup*(theGroup: ptr OpenGl_Group): Standard_Boolean {.
    importcpp: "OpenGl_Raytrace::IsRaytracedGroup(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc IsRaytracedElement*(theNode: ptr OpenGl_ElementNode): Standard_Boolean {.
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc IsRaytracedElement*(theElement: ptr OpenGl_Element): Standard_Boolean {.
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of surface material.

type
  OpenGl_RaytraceMaterial* {.importcpp: "OpenGl_RaytraceMaterial",
                            header: "OpenGl_SceneGeometry.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor.
    Ambient* {.importc: "Ambient".}: BVH_Vec4f ## !< Ambient reflection coefficient
    Diffuse* {.importc: "Diffuse".}: BVH_Vec4f ## !< Diffuse reflection coefficient
    Specular* {.importc: "Specular".}: BVH_Vec4f ## !< Glossy  reflection coefficient
    Emission* {.importc: "Emission".}: BVH_Vec4f ## !< Material emission
    Reflection* {.importc: "Reflection".}: BVH_Vec4f ## !< Specular reflection coefficient
    Refraction* {.importc: "Refraction".}: BVH_Vec4f ## !< Specular refraction coefficient
    Transparency* {.importc: "Transparency".}: BVH_Vec4f ## !< Material transparency
    TextureTransform* {.importc: "TextureTransform".}: BVH_Mat4f ## !< Texture transformation matrix
                                                             ## ! Physically-based material properties (used in path tracing engine).

  OpenGl_RaytraceMaterialPhysical* {.importcpp: "OpenGl_RaytraceMaterial::Physical",
                                    header: "OpenGl_SceneGeometry.hxx", bycopy.} = object
    Kc* {.importc: "Kc".}: BVH_Vec4f ## !< Weight of coat specular/glossy BRDF
    Kd* {.importc: "Kd".}: BVH_Vec4f ## !< Weight of base diffuse BRDF
    Ks* {.importc: "Ks".}: BVH_Vec4f ## !< Weight of base specular/glossy BRDF
    Kt* {.importc: "Kt".}: BVH_Vec4f ## !< Weight of base specular/glossy BTDF
    Le* {.importc: "Le".}: BVH_Vec4f ## !< Radiance emitted by the surface
    FresnelCoat* {.importc: "FresnelCoat".}: BVH_Vec4f ## !< Fresnel coefficients of coat layer
    FresnelBase* {.importc: "FresnelBase".}: BVH_Vec4f ## !< Fresnel coefficients of base layer
    Absorption* {.importc: "Absorption".}: BVH_Vec4f ## !< Absorption color/intensity


var BSDF* {.importcpp: "BSDF", header: "OpenGl_SceneGeometry.hxx".}: OpenGl_RaytraceMaterialPhysical

proc constructOpenGl_RaytraceMaterial*(): OpenGl_RaytraceMaterial {.constructor,
    importcpp: "OpenGl_RaytraceMaterial(@)", header: "OpenGl_SceneGeometry.hxx".}
proc Packed*(this: var OpenGl_RaytraceMaterial): ptr Standard_ShortReal {.
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of OpenGL light source.

type
  OpenGl_RaytraceLight* {.importcpp: "OpenGl_RaytraceLight",
                         header: "OpenGl_SceneGeometry.hxx", bycopy.} = object ## !
                                                                          ## Creates new light
                                                                          ## source.
    Emission* {.importc: "Emission".}: BVH_Vec4f ## !< Diffuse intensity (in terms of OpenGL)
    Position* {.importc: "Position".}: BVH_Vec4f ## !< Position of light source (in terms of OpenGL)


proc constructOpenGl_RaytraceLight*(): OpenGl_RaytraceLight {.constructor,
    importcpp: "OpenGl_RaytraceLight(@)", header: "OpenGl_SceneGeometry.hxx".}
proc constructOpenGl_RaytraceLight*(theEmission: BVH_Vec4f; thePosition: BVH_Vec4f): OpenGl_RaytraceLight {.
    constructor, importcpp: "OpenGl_RaytraceLight(@)",
    header: "OpenGl_SceneGeometry.hxx".}
proc Packed*(this: var OpenGl_RaytraceLight): ptr Standard_ShortReal {.
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Shared pointer to quad BVH (QBVH) tree.

type
  QuadBvhHandle* = handle[BVH_Tree[Standard_ShortReal, 3, BVH_QuadTree]]
  OpenGl_BVHTriangulation3f* = BVH_Triangulation[Standard_ShortReal, 3]

## ! Triangulation of single OpenGL primitive array.

type
  OpenGl_TriangleSet* {.importcpp: "OpenGl_TriangleSet",
                       header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of OpenGl_BVHTriangulation3f ##
                                                                                                   ## !
                                                                                                   ## Value
                                                                                                   ## of
                                                                                                   ## invalid
                                                                                                   ## material
                                                                                                   ## index
                                                                                                   ## to
                                                                                                   ## return
                                                                                                   ## in
                                                                                                   ## case
                                                                                                   ## of
                                                                                                   ## errors.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## new
                                                                                                   ## OpenGL
                                                                                                   ## element
                                                                                                   ## triangulation.
    Normals* {.importc: "Normals".}: BVH_Array3f ## !< Array of vertex normals.
    TexCrds* {.importc: "TexCrds".}: BVH_Array2f ## !< Array of texture coords.
    ## !< ID of associated primitive array.
    ## !< QBVH produced from binary BVH tree.

  OpenGl_TriangleSetbase_type* = OpenGl_BVHTriangulation3f

proc get_type_name*(): cstring {.importcpp: "OpenGl_TriangleSet::get_type_name(@)",
                              header: "OpenGl_SceneGeometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_TriangleSet::get_type_descriptor(@)",
    header: "OpenGl_SceneGeometry.hxx".}
proc DynamicType*(this: OpenGl_TriangleSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_SceneGeometry.hxx".}
proc constructOpenGl_TriangleSet*(theArrayID: Standard_Size; theBuilder: handle[
    BVH_Builder[Standard_ShortReal, 3]]): OpenGl_TriangleSet {.constructor,
    importcpp: "OpenGl_TriangleSet(@)", header: "OpenGl_SceneGeometry.hxx".}
proc AssociatedPArrayID*(this: OpenGl_TriangleSet): Standard_Size {.noSideEffect,
    importcpp: "AssociatedPArrayID", header: "OpenGl_SceneGeometry.hxx".}
proc MaterialIndex*(this: OpenGl_TriangleSet): Standard_Integer {.noSideEffect,
    importcpp: "MaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc SetMaterialIndex*(this: var OpenGl_TriangleSet; theMatID: Standard_Integer) {.
    importcpp: "SetMaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc Box*(this: OpenGl_TriangleSet): BVH_BoxNt {.noSideEffect, importcpp: "Box",
    header: "OpenGl_SceneGeometry.hxx".}
## using statement

proc Center*(this: OpenGl_TriangleSet; theIndex: Standard_Integer;
            theAxis: Standard_Integer): Standard_ShortReal {.noSideEffect,
    importcpp: "Center", header: "OpenGl_SceneGeometry.hxx".}
proc QuadBVH*(this: var OpenGl_TriangleSet): QuadBvhHandle {.importcpp: "QuadBVH",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Stores geometry of ray-tracing scene.

type
  OpenGl_RaytraceGeometry* {.importcpp: "OpenGl_RaytraceGeometry",
                            header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of BVH_Geometry[
      Standard_ShortReal, 3] ## ! Value of invalid offset to return in case of errors.
                           ## ! Array of properties of light sources.
                           ## ! Creates uninitialized ray-tracing geometry.
                           ## ! @name methods related to acceleration structure
                           ## ! Performs post-processing of high-level scene BVH.
                           ## ! @name methods related to texture management
                           ## ! Checks if scene contains textured objects.
                           ## ! @name auxiliary methods
                           ## ! Returns depth of top-level scene BVH from last build.
    Sources* {.importc: "Sources".}: vector[OpenGl_RaytraceLight,
        NCollection_StdAllocator[OpenGl_RaytraceLight]] ## ! Array of 'front' material properties.
    Materials* {.importc: "Materials".}: vector[OpenGl_RaytraceMaterial,
        NCollection_StdAllocator[OpenGl_RaytraceMaterial]] ## ! Global ambient from all light sources.
    Ambient* {.importc: "Ambient".}: BVH_Vec4f
    ## !< Array of texture maps shared between rendered objects
    ## !< Array of unique 64-bit texture handles obtained from OpenGL
    ## !< Depth of high-level scene BVH from last build
    ## !< Maximum depth of bottom-level scene BVHs from last build
    ## !< QBVH produced from binary BVH tree.


proc constructOpenGl_RaytraceGeometry*(): OpenGl_RaytraceGeometry {.constructor,
    importcpp: "OpenGl_RaytraceGeometry(@)", header: "OpenGl_SceneGeometry.hxx".}
proc destroyOpenGl_RaytraceGeometry*(this: var OpenGl_RaytraceGeometry) {.
    importcpp: "#.~OpenGl_RaytraceGeometry()", header: "OpenGl_SceneGeometry.hxx".}
proc ClearMaterials*(this: var OpenGl_RaytraceGeometry) {.
    importcpp: "ClearMaterials", header: "OpenGl_SceneGeometry.hxx".}
proc Clear*(this: var OpenGl_RaytraceGeometry) {.importcpp: "Clear",
    header: "OpenGl_SceneGeometry.hxx".}
proc ProcessAcceleration*(this: var OpenGl_RaytraceGeometry): Standard_Boolean {.
    importcpp: "ProcessAcceleration", header: "OpenGl_SceneGeometry.hxx".}
proc AccelerationOffset*(this: var OpenGl_RaytraceGeometry;
                        theNodeIdx: Standard_Integer): Standard_Integer {.
    importcpp: "AccelerationOffset", header: "OpenGl_SceneGeometry.hxx".}
proc VerticesOffset*(this: var OpenGl_RaytraceGeometry; theNodeIdx: Standard_Integer): Standard_Integer {.
    importcpp: "VerticesOffset", header: "OpenGl_SceneGeometry.hxx".}
proc ElementsOffset*(this: var OpenGl_RaytraceGeometry; theNodeIdx: Standard_Integer): Standard_Integer {.
    importcpp: "ElementsOffset", header: "OpenGl_SceneGeometry.hxx".}
proc TriangleSet*(this: var OpenGl_RaytraceGeometry; theNodeIdx: Standard_Integer): ptr OpenGl_TriangleSet {.
    importcpp: "TriangleSet", header: "OpenGl_SceneGeometry.hxx".}
proc QuadBVH*(this: var OpenGl_RaytraceGeometry): QuadBvhHandle {.
    importcpp: "QuadBVH", header: "OpenGl_SceneGeometry.hxx".}
proc HasTextures*(this: OpenGl_RaytraceGeometry): Standard_Boolean {.noSideEffect,
    importcpp: "HasTextures", header: "OpenGl_SceneGeometry.hxx".}
proc AddTexture*(this: var OpenGl_RaytraceGeometry;
                theTexture: handle[OpenGl_Texture]): Standard_Integer {.
    importcpp: "AddTexture", header: "OpenGl_SceneGeometry.hxx".}
proc UpdateTextureHandles*(this: var OpenGl_RaytraceGeometry;
                          theContext: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "UpdateTextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc AcquireTextures*(this: var OpenGl_RaytraceGeometry;
                     theContext: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "AcquireTextures", header: "OpenGl_SceneGeometry.hxx".}
proc ReleaseTextures*(this: OpenGl_RaytraceGeometry;
                     theContext: handle[OpenGl_Context]): Standard_Boolean {.
    noSideEffect, importcpp: "ReleaseTextures", header: "OpenGl_SceneGeometry.hxx".}
proc TextureHandles*(this: OpenGl_RaytraceGeometry): vector[GLuint64] {.
    noSideEffect, importcpp: "TextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc ReleaseResources*(this: var OpenGl_RaytraceGeometry; a2: handle[OpenGl_Context]) {.
    importcpp: "ReleaseResources", header: "OpenGl_SceneGeometry.hxx".}
proc TopLevelTreeDepth*(this: OpenGl_RaytraceGeometry): Standard_Integer {.
    noSideEffect, importcpp: "TopLevelTreeDepth",
    header: "OpenGl_SceneGeometry.hxx".}
proc BotLevelTreeDepth*(this: OpenGl_RaytraceGeometry): Standard_Integer {.
    noSideEffect, importcpp: "BotLevelTreeDepth",
    header: "OpenGl_SceneGeometry.hxx".}