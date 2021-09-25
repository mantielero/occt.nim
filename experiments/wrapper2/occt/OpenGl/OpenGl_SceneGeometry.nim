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

discard "forward decl of OpenGl_Element"
discard "forward decl of OpenGl_ElementNode"
discard "forward decl of OpenGl_Group"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_PrimitiveArray"
## ! Checks to see if the group contains ray-trace geometry.

proc isRaytracedGroup*(theGroup: ptr OpenGlGroup): bool {.
    importcpp: "OpenGl_Raytrace::IsRaytracedGroup(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theNode: ptr OpenGlElementNode): bool {.
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theElement: ptr OpenGlElement): bool {.
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of surface material.

type
  OpenGlRaytraceMaterial* {.importcpp: "OpenGl_RaytraceMaterial",
                           header: "OpenGl_SceneGeometry.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor.
    ambient* {.importc: "Ambient".}: BVH_Vec4f ## !< Ambient reflection coefficient
    diffuse* {.importc: "Diffuse".}: BVH_Vec4f ## !< Diffuse reflection coefficient
    specular* {.importc: "Specular".}: BVH_Vec4f ## !< Glossy  reflection coefficient
    emission* {.importc: "Emission".}: BVH_Vec4f ## !< Material emission
    reflection* {.importc: "Reflection".}: BVH_Vec4f ## !< Specular reflection coefficient
    refraction* {.importc: "Refraction".}: BVH_Vec4f ## !< Specular refraction coefficient
    transparency* {.importc: "Transparency".}: BVH_Vec4f ## !< Material transparency
    textureTransform* {.importc: "TextureTransform".}: BVH_Mat4f ## !< Texture transformation matrix
                                                             ## ! Physically-based material properties (used in path tracing engine).

  OpenGlRaytraceMaterialPhysical* {.importcpp: "OpenGl_RaytraceMaterial::Physical",
                                   header: "OpenGl_SceneGeometry.hxx", bycopy.} = object
    kc* {.importc: "Kc".}: BVH_Vec4f ## !< Weight of coat specular/glossy BRDF
    kd* {.importc: "Kd".}: BVH_Vec4f ## !< Weight of base diffuse BRDF
    ks* {.importc: "Ks".}: BVH_Vec4f ## !< Weight of base specular/glossy BRDF
    kt* {.importc: "Kt".}: BVH_Vec4f ## !< Weight of base specular/glossy BTDF
    le* {.importc: "Le".}: BVH_Vec4f ## !< Radiance emitted by the surface
    fresnelCoat* {.importc: "FresnelCoat".}: BVH_Vec4f ## !< Fresnel coefficients of coat layer
    fresnelBase* {.importc: "FresnelBase".}: BVH_Vec4f ## !< Fresnel coefficients of base layer
    absorption* {.importc: "Absorption".}: BVH_Vec4f ## !< Absorption color/intensity


var BSDF* {.importcpp: "BSDF", header: "OpenGl_SceneGeometry.hxx".}: OpenGlRaytraceMaterialPhysical

proc constructOpenGlRaytraceMaterial*(): OpenGlRaytraceMaterial {.constructor,
    importcpp: "OpenGl_RaytraceMaterial(@)", header: "OpenGl_SceneGeometry.hxx".}
proc packed*(this: var OpenGlRaytraceMaterial): ptr StandardShortReal {.
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of OpenGL light source.

type
  OpenGlRaytraceLight* {.importcpp: "OpenGl_RaytraceLight",
                        header: "OpenGl_SceneGeometry.hxx", bycopy.} = object ## ! Creates new light source.
    emission* {.importc: "Emission".}: BVH_Vec4f ## !< Diffuse intensity (in terms of OpenGL)
    position* {.importc: "Position".}: BVH_Vec4f ## !< Position of light source (in terms of OpenGL)


proc constructOpenGlRaytraceLight*(): OpenGlRaytraceLight {.constructor,
    importcpp: "OpenGl_RaytraceLight(@)", header: "OpenGl_SceneGeometry.hxx".}
proc constructOpenGlRaytraceLight*(theEmission: BVH_Vec4f; thePosition: BVH_Vec4f): OpenGlRaytraceLight {.
    constructor, importcpp: "OpenGl_RaytraceLight(@)",
    header: "OpenGl_SceneGeometry.hxx".}
proc packed*(this: var OpenGlRaytraceLight): ptr StandardShortReal {.
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Shared pointer to quad BVH (QBVH) tree.

type
  QuadBvhHandle* = Handle[BVH_Tree[StandardShortReal, 3, BVH_QuadTree]]
  OpenGlBVHTriangulation3f* = BVH_Triangulation[StandardShortReal, 3]

## ! Triangulation of single OpenGL primitive array.

type
  OpenGlTriangleSet* {.importcpp: "OpenGl_TriangleSet",
                      header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of OpenGlBVHTriangulation3f ##
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
    normals* {.importc: "Normals".}: BVH_Array3f ## !< Array of vertex normals.
    texCrds* {.importc: "TexCrds".}: BVH_Array2f ## !< Array of texture coords.
    ## !< ID of associated primitive array.
    ## !< QBVH produced from binary BVH tree.

  OpenGlTriangleSetbaseType* = OpenGlBVHTriangulation3f

proc getTypeName*(): cstring {.importcpp: "OpenGl_TriangleSet::get_type_name(@)",
                            header: "OpenGl_SceneGeometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_TriangleSet::get_type_descriptor(@)",
    header: "OpenGl_SceneGeometry.hxx".}
proc dynamicType*(this: OpenGlTriangleSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_SceneGeometry.hxx".}
proc constructOpenGlTriangleSet*(theArrayID: StandardSize; theBuilder: Handle[
    BVH_Builder[StandardShortReal, 3]]): OpenGlTriangleSet {.constructor,
    importcpp: "OpenGl_TriangleSet(@)", header: "OpenGl_SceneGeometry.hxx".}
proc associatedPArrayID*(this: OpenGlTriangleSet): StandardSize {.noSideEffect,
    importcpp: "AssociatedPArrayID", header: "OpenGl_SceneGeometry.hxx".}
proc materialIndex*(this: OpenGlTriangleSet): int {.noSideEffect,
    importcpp: "MaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc setMaterialIndex*(this: var OpenGlTriangleSet; theMatID: int) {.
    importcpp: "SetMaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc box*(this: OpenGlTriangleSet): BVH_BoxNt {.noSideEffect, importcpp: "Box",
    header: "OpenGl_SceneGeometry.hxx".}
## using statement

proc center*(this: OpenGlTriangleSet; theIndex: int; theAxis: int): StandardShortReal {.
    noSideEffect, importcpp: "Center", header: "OpenGl_SceneGeometry.hxx".}
proc quadBVH*(this: var OpenGlTriangleSet): QuadBvhHandle {.importcpp: "QuadBVH",
    header: "OpenGl_SceneGeometry.hxx".}
## ! Stores geometry of ray-tracing scene.

type
  OpenGlRaytraceGeometry* {.importcpp: "OpenGl_RaytraceGeometry",
                           header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of BVH_Geometry[
      StandardShortReal, 3] ## ! Value of invalid offset to return in case of errors.
                          ## ! Array of properties of light sources.
                          ## ! Creates uninitialized ray-tracing geometry.
                          ## ! @name methods related to acceleration structure
                          ## ! Performs post-processing of high-level scene BVH.
                          ## ! @name methods related to texture management
                          ## ! Checks if scene contains textured objects.
                          ## ! @name auxiliary methods
                          ## ! Returns depth of top-level scene BVH from last build.
    sources* {.importc: "Sources".}: Vector[OpenGlRaytraceLight,
        NCollectionStdAllocator[OpenGlRaytraceLight]] ## ! Array of 'front' material properties.
    materials* {.importc: "Materials".}: Vector[OpenGlRaytraceMaterial,
        NCollectionStdAllocator[OpenGlRaytraceMaterial]] ## ! Global ambient from all light sources.
    ambient* {.importc: "Ambient".}: BVH_Vec4f
    ## !< Array of texture maps shared between rendered objects
    ## !< Array of unique 64-bit texture handles obtained from OpenGL
    ## !< Depth of high-level scene BVH from last build
    ## !< Maximum depth of bottom-level scene BVHs from last build
    ## !< QBVH produced from binary BVH tree.


proc constructOpenGlRaytraceGeometry*(): OpenGlRaytraceGeometry {.constructor,
    importcpp: "OpenGl_RaytraceGeometry(@)", header: "OpenGl_SceneGeometry.hxx".}
proc destroyOpenGlRaytraceGeometry*(this: var OpenGlRaytraceGeometry) {.
    importcpp: "#.~OpenGl_RaytraceGeometry()", header: "OpenGl_SceneGeometry.hxx".}
proc clearMaterials*(this: var OpenGlRaytraceGeometry) {.
    importcpp: "ClearMaterials", header: "OpenGl_SceneGeometry.hxx".}
proc clear*(this: var OpenGlRaytraceGeometry) {.importcpp: "Clear",
    header: "OpenGl_SceneGeometry.hxx".}
proc processAcceleration*(this: var OpenGlRaytraceGeometry): bool {.
    importcpp: "ProcessAcceleration", header: "OpenGl_SceneGeometry.hxx".}
proc accelerationOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: int): int {.
    importcpp: "AccelerationOffset", header: "OpenGl_SceneGeometry.hxx".}
proc verticesOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: int): int {.
    importcpp: "VerticesOffset", header: "OpenGl_SceneGeometry.hxx".}
proc elementsOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: int): int {.
    importcpp: "ElementsOffset", header: "OpenGl_SceneGeometry.hxx".}
proc triangleSet*(this: var OpenGlRaytraceGeometry; theNodeIdx: int): ptr OpenGlTriangleSet {.
    importcpp: "TriangleSet", header: "OpenGl_SceneGeometry.hxx".}
proc quadBVH*(this: var OpenGlRaytraceGeometry): QuadBvhHandle {.
    importcpp: "QuadBVH", header: "OpenGl_SceneGeometry.hxx".}
proc hasTextures*(this: OpenGlRaytraceGeometry): bool {.noSideEffect,
    importcpp: "HasTextures", header: "OpenGl_SceneGeometry.hxx".}
proc addTexture*(this: var OpenGlRaytraceGeometry; theTexture: Handle[OpenGlTexture]): int {.
    importcpp: "AddTexture", header: "OpenGl_SceneGeometry.hxx".}
proc updateTextureHandles*(this: var OpenGlRaytraceGeometry;
                          theContext: Handle[OpenGlContext]): bool {.
    importcpp: "UpdateTextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc acquireTextures*(this: var OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.
    importcpp: "AcquireTextures", header: "OpenGl_SceneGeometry.hxx".}
proc releaseTextures*(this: OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.noSideEffect,
    importcpp: "ReleaseTextures", header: "OpenGl_SceneGeometry.hxx".}
proc textureHandles*(this: OpenGlRaytraceGeometry): Vector[GLuint64] {.noSideEffect,
    importcpp: "TextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc releaseResources*(this: var OpenGlRaytraceGeometry; a2: Handle[OpenGlContext]) {.
    importcpp: "ReleaseResources", header: "OpenGl_SceneGeometry.hxx".}
proc topLevelTreeDepth*(this: OpenGlRaytraceGeometry): int {.noSideEffect,
    importcpp: "TopLevelTreeDepth", header: "OpenGl_SceneGeometry.hxx".}
proc botLevelTreeDepth*(this: OpenGlRaytraceGeometry): int {.noSideEffect,
    importcpp: "BotLevelTreeDepth", header: "OpenGl_SceneGeometry.hxx".}
