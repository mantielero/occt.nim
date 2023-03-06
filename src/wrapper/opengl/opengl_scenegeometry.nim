import ../standard/standard_types
import ../bvh/bvh_types
import opengl_types



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

## ! Checks to see if the group contains ray-trace geometry.

proc isRaytracedGroup*(theGroup: ptr OpenGlGroup): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedGroup(@)", header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theNode: ptr OpenGlElementNode): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)", header: "OpenGl_SceneGeometry.hxx".}
## ! Checks to see if the element contains ray-trace geometry.

proc isRaytracedElement*(theElement: ptr OpenGlElement): bool {.cdecl,
    importcpp: "OpenGl_Raytrace::IsRaytracedElement(@)", header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of surface material.




var BSDF* {.importcpp: "BSDF", header: "OpenGl_SceneGeometry.hxx".}: OpenGlRaytraceMaterialPhysical

proc newOpenGlRaytraceMaterial*(): OpenGlRaytraceMaterial {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceMaterial(@)", header: "OpenGl_SceneGeometry.hxx".}
proc packed*(this: var OpenGlRaytraceMaterial): ptr StandardShortReal {.cdecl,
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Stores properties of OpenGL light source.



proc newOpenGlRaytraceLight*(): OpenGlRaytraceLight {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceLight(@)", header: "OpenGl_SceneGeometry.hxx".}
proc newOpenGlRaytraceLight*(theEmission: BVH_Vec4f; thePosition: BVH_Vec4f): OpenGlRaytraceLight {.
    cdecl, constructor, importcpp: "OpenGl_RaytraceLight(@)", header: "OpenGl_SceneGeometry.hxx".}
proc packed*(this: var OpenGlRaytraceLight): ptr StandardShortReal {.cdecl,
    importcpp: "Packed", header: "OpenGl_SceneGeometry.hxx".}
## ! Shared pointer to quad BVH (QBVH) tree.





proc newOpenGlTriangleSet*(theArrayID: csize_t;
                          theBuilder: Handle[BVH_Builder[StandardShortReal, 3]]): OpenGlTriangleSet {.
    cdecl, constructor, importcpp: "OpenGl_TriangleSet(@)", header: "OpenGl_SceneGeometry.hxx".}
proc associatedPArrayID*(this: OpenGlTriangleSet): csize_t {.noSideEffect, cdecl,
    importcpp: "AssociatedPArrayID", header: "OpenGl_SceneGeometry.hxx".}
proc materialIndex*(this: OpenGlTriangleSet): cint {.noSideEffect, cdecl,
    importcpp: "MaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc setMaterialIndex*(this: var OpenGlTriangleSet; theMatID: cint) {.cdecl,
    importcpp: "SetMaterialIndex", header: "OpenGl_SceneGeometry.hxx".}
proc box*(this: OpenGlTriangleSet): BVH_BoxNt {.noSideEffect, cdecl, importcpp: "Box",
    header: "OpenGl_SceneGeometry.hxx".}
## using statement

proc center*(this: OpenGlTriangleSet; theIndex: cint; theAxis: cint): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "Center", header: "OpenGl_SceneGeometry.hxx".}
proc quadBVH*(this: var OpenGlTriangleSet): QuadBvhHandle {.cdecl,
    importcpp: "QuadBVH", header: "OpenGl_SceneGeometry.hxx".}
## ! Stores geometry of ray-tracing scene.



proc newOpenGlRaytraceGeometry*(): OpenGlRaytraceGeometry {.cdecl, constructor,
    importcpp: "OpenGl_RaytraceGeometry(@)", header: "OpenGl_SceneGeometry.hxx".}
proc destroyOpenGlRaytraceGeometry*(this: var OpenGlRaytraceGeometry) {.cdecl,
    importcpp: "#.~OpenGl_RaytraceGeometry()", header: "OpenGl_SceneGeometry.hxx".}
proc clearMaterials*(this: var OpenGlRaytraceGeometry) {.cdecl,
    importcpp: "ClearMaterials", header: "OpenGl_SceneGeometry.hxx".}
proc clear*(this: var OpenGlRaytraceGeometry) {.cdecl, importcpp: "Clear",
    header: "OpenGl_SceneGeometry.hxx".}
proc processAcceleration*(this: var OpenGlRaytraceGeometry): bool {.cdecl,
    importcpp: "ProcessAcceleration", header: "OpenGl_SceneGeometry.hxx".}
proc accelerationOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.
    cdecl, importcpp: "AccelerationOffset", header: "OpenGl_SceneGeometry.hxx".}
proc verticesOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.cdecl,
    importcpp: "VerticesOffset", header: "OpenGl_SceneGeometry.hxx".}
proc elementsOffset*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): cint {.cdecl,
    importcpp: "ElementsOffset", header: "OpenGl_SceneGeometry.hxx".}
proc triangleSet*(this: var OpenGlRaytraceGeometry; theNodeIdx: cint): ptr OpenGlTriangleSet {.
    cdecl, importcpp: "TriangleSet", header: "OpenGl_SceneGeometry.hxx".}
proc quadBVH*(this: var OpenGlRaytraceGeometry): QuadBvhHandle {.cdecl,
    importcpp: "QuadBVH", header: "OpenGl_SceneGeometry.hxx".}
proc hasTextures*(this: OpenGlRaytraceGeometry): bool {.noSideEffect, cdecl,
    importcpp: "HasTextures", header: "OpenGl_SceneGeometry.hxx".}
proc addTexture*(this: var OpenGlRaytraceGeometry; theTexture: Handle[OpenGlTexture]): cint {.
    cdecl, importcpp: "AddTexture", header: "OpenGl_SceneGeometry.hxx".}
proc updateTextureHandles*(this: var OpenGlRaytraceGeometry;
                          theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "UpdateTextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc acquireTextures*(this: var OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "AcquireTextures", header: "OpenGl_SceneGeometry.hxx".}
proc releaseTextures*(this: OpenGlRaytraceGeometry;
                     theContext: Handle[OpenGlContext]): bool {.noSideEffect, cdecl,
    importcpp: "ReleaseTextures", header: "OpenGl_SceneGeometry.hxx".}
proc textureHandles*(this: OpenGlRaytraceGeometry): Vector[GLuint64] {.noSideEffect,
    cdecl, importcpp: "TextureHandles", header: "OpenGl_SceneGeometry.hxx".}
proc releaseResources*(this: var OpenGlRaytraceGeometry; a2: Handle[OpenGlContext]) {.
    cdecl, importcpp: "ReleaseResources", header: "OpenGl_SceneGeometry.hxx".}
proc topLevelTreeDepth*(this: OpenGlRaytraceGeometry): cint {.noSideEffect, cdecl,
    importcpp: "TopLevelTreeDepth", header: "OpenGl_SceneGeometry.hxx".}
proc botLevelTreeDepth*(this: OpenGlRaytraceGeometry): cint {.noSideEffect, cdecl,
    importcpp: "BotLevelTreeDepth", header: "OpenGl_SceneGeometry.hxx".}

