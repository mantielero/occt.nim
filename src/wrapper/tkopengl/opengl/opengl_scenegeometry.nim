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

proc isRaytracedGroup*(theGroup: ptr OpenGlGroup): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedGroup(@)", dynlib: tkkxbase.}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theNode: ptr OpenGlElementNode): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)", dynlib: tkkxbase.}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theElement: ptr OpenGlElement): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)", dynlib: tkkxbase.}
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


var BSDF* {.importcpp: "BSDF", dynlib: tkkxbase.}: OpenGlRaytraceMaterialPhysical

proc newOpenGlRaytraceMaterial*(): OpenGlRaytraceMaterial {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceMaterial(@)", dynlib: tkkxbase.}
proc packed*(this: var OpenGlRaytraceMaterial): ptr StandardShortReal {.cdecl,
    importcpp: "Packed", dynlib: tkkxbase.}
## ! Stores properties of OpenGL light source.

type
  OpenGlRaytraceLight* {.importcpp: "OpenGl_RaytraceLight",
                        header: "OpenGl_SceneGeometry.hxx", bycopy.} = object ## ! Creates new light source.
    emission* {.importc: "Emission".}: BVH_Vec4f ## !< Diffuse intensity (in terms of OpenGL)
    position* {.importc: "Position".}: BVH_Vec4f ## !< Position of light source (in terms of OpenGL)


proc newOpenGlRaytraceLight*(): OpenGlRaytraceLight {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceLight(@)", dynlib: tkkxbase.}
proc newOpenGlRaytraceLight*(theEmission: BVH_Vec4f; thePosition: BVH_Vec4f): OpenGlRaytraceLight {.
    cdecl, constructor, importcpp: "OpenGl_RaytraceLight(@)", dynlib: tkkxbase.}
proc packed*(this: var OpenGlRaytraceLight): ptr StandardShortReal {.cdecl,
    importcpp: "Packed", dynlib: tkkxbase.}
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


proc newOpenGlTriangleSet*(theArrayID: csize_t;
                          theBuilder: Handle[BVH_Builder[StandardShortReal, 3]]): OpenGlTriangleSet {.
    cdecl, constructor, importcpp: "OpenGl_TriangleSet(@)", dynlib: tkkxbase.}
proc associatedPArrayID*(this: OpenGlTriangleSet): csize_t {.noSideEffect, cdecl,
    importcpp: "AssociatedPArrayID", dynlib: tkkxbase.}
proc materialIndex*(this: OpenGlTriangleSet): cint {.noSideEffect, cdecl,
    importcpp: "MaterialIndex", dynlib: tkkxbase.}
proc setMaterialIndex*(this: var OpenGlTriangleSet; theMatID: cint) {.cdecl,
    importcpp: "SetMaterialIndex", dynlib: tkkxbase.}
proc box*(this: OpenGlTriangleSet): BVH_BoxNt {.noSideEffect, cdecl, importcpp: "Box",
    dynlib: tkkxbase.}
## using statement

proc center*(this: OpenGlTriangleSet; theIndex: cint; theAxis: cint): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "Center", dynlib: tkkxbase.}
proc quadBVH*(this: var OpenGlTriangleSet): QuadBvhHandle {.cdecl,
    importcpp: "QuadBVH", dynlib: tkkxbase.}
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


proc newOpenGlRaytraceGeometry*(): OpenGlRaytraceGeometry {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceGeometry(@)", dynlib: tkkxbase.}
proc destroyOpenGlRaytraceGeometry*(this: var OpenGlRaytraceGeometry) {.cdecl,
    importcpp: "#.~OpenGl_RaytraceGeometry()", dynlib: tkkxbase.}
proc clearMaterials*(this: var OpenGlRaytraceGeometry) {.cdecl,
    importcpp: "ClearMaterials", dynlib: tkkxbase.}
proc clear*(this: var OpenGlRaytraceGeometry) {.cdecl, importcpp: "Clear",
    dynlib: tkkxbase.}
proc processAcceleration*(this: var OpenGlRaytraceGeometry): bool {.cdecl,
    importcpp: "ProcessAcceleration", dynlib: tkkxbase.}
proc accelerationOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.
    cdecl, importcpp: "AccelerationOffset", dynlib: tkkxbase.}
proc verticesOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.cdecl,
    importcpp: "VerticesOffset", dynlib: tkkxbase.}
proc elementsOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.cdecl,
    importcpp: "ElementsOffset", dynlib: tkkxbase.}
proc triangleSet*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): ptr OpenGlTriangleSet {.
    cdecl, importcpp: "TriangleSet", dynlib: tkkxbase.}
proc quadBVH*(this: var OpenGlRaytraceGeometry): QuadBvhHandle {.cdecl,
    importcpp: "QuadBVH", dynlib: tkkxbase.}
proc hasTextures*(this: OpenGlRaytraceGeometry): bool {.noSideEffect, cdecl,
    importcpp: "HasTextures", dynlib: tkkxbase.}
proc addTexture*(this: var OpenGlRaytraceGeometry; theTexture: Handle[OpenGlTexture]): cint {.
    cdecl, importcpp: "AddTexture", dynlib: tkkxbase.}
proc updateTextureHandles*(this: var OpenGlRaytraceGeometry;
                          theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "UpdateTextureHandles", dynlib: tkkxbase.}
proc acquireTextures*(this: var OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "AcquireTextures", dynlib: tkkxbase.}
proc releaseTextures*(this: OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.noSideEffect, cdecl,
    importcpp: "ReleaseTextures", dynlib: tkkxbase.}
proc textureHandles*(this: OpenGlRaytraceGeometry): Vector[GLuint64] {.noSideEffect,
    cdecl, importcpp: "TextureHandles", dynlib: tkkxbase.}
proc releaseResources*(this: var OpenGlRaytraceGeometry; a2: Handle[OpenGlContext]) {.
    cdecl, importcpp: "ReleaseResources", dynlib: tkkxbase.}
proc topLevelTreeDepth*(this: OpenGlRaytraceGeometry): cint {.noSideEffect, cdecl,
    importcpp: "TopLevelTreeDepth", dynlib: tkkxbase.}
proc botLevelTreeDepth*(this: OpenGlRaytraceGeometry): cint {.noSideEffect, cdecl,
    importcpp: "BotLevelTreeDepth", dynlib: tkkxbase.}