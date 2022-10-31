import ../../tkernel/standard/standard_types
import graphic3d_types





##  Created on: 2013-12-25
##  Created by: Varvara POSKONINA
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! Graphic3d_CullingTool class provides a possibility to store parameters of view volume,
## ! such as its vertices and equations, and contains methods detecting if given AABB overlaps view volume.




proc newGraphic3dCullingToolCullingContext*(): Graphic3dCullingToolCullingContext {.
    cdecl, constructor, importcpp: "Graphic3d_CullingTool::CullingContext(@)",
    header: "Graphic3d_CullingTool.hxx".}


proc newGraphic3dCullingToolPlane*(): Graphic3dCullingToolPlane {.cdecl,
    constructor, importcpp: "Graphic3d_CullingTool::Plane(@)", header: "Graphic3d_CullingTool.hxx".}
proc newGraphic3dCullingToolPlane*(theOrigin: Graphic3dVec3d;
                                  theNormal: Graphic3dVec3d): Graphic3dCullingToolPlane {.
    cdecl, constructor, importcpp: "Graphic3d_CullingTool::Plane(@)", header: "Graphic3d_CullingTool.hxx".}
proc newGraphic3dCullingTool*(): Graphic3dCullingTool {.cdecl, constructor,
    importcpp: "Graphic3d_CullingTool(@)", header: "Graphic3d_CullingTool.hxx".}
#proc setViewVolume*(this: var Graphic3dCullingTool;
#                   theCamera: Handle[Graphic3dCamera];
#                   theModelWorld: Graphic3dMat4d = graphic3dMat4d()) {.cdecl,
#    importcpp: "SetViewVolume", header: "Graphic3d_CullingTool.hxx".}
proc setViewportSize*(this: var Graphic3dCullingTool; theViewportWidth: cint;
                     theViewportHeight: cint; theResolutionRatio: cfloat) {.cdecl,
    importcpp: "SetViewportSize", header: "Graphic3d_CullingTool.hxx".}
proc setCullingDistance*(this: Graphic3dCullingTool;
                        theCtx: var Graphic3dCullingToolCullingContext;
                        theDistance: cfloat) {.noSideEffect, cdecl,
    importcpp: "SetCullingDistance", header: "Graphic3d_CullingTool.hxx".}
proc setCullingSize*(this: Graphic3dCullingTool;
                    theCtx: var Graphic3dCullingToolCullingContext; theSize: cfloat) {.
    noSideEffect, cdecl, importcpp: "SetCullingSize", header: "Graphic3d_CullingTool.hxx".}
proc cacheClipPtsProjections*(this: var Graphic3dCullingTool) {.cdecl,
    importcpp: "CacheClipPtsProjections", header: "Graphic3d_CullingTool.hxx".}
proc isCulled*(this: Graphic3dCullingTool;
              theCtx: Graphic3dCullingToolCullingContext;
              theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d;
              theIsInside: ptr bool = nil): bool {.noSideEffect, cdecl,
    importcpp: "IsCulled", header: "Graphic3d_CullingTool.hxx".}
proc camera*(this: Graphic3dCullingTool): Handle[Graphic3dCamera] {.noSideEffect,
    cdecl, importcpp: "Camera", header: "Graphic3d_CullingTool.hxx".}
proc projectionMatrix*(this: Graphic3dCullingTool): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix", header: "Graphic3d_CullingTool.hxx".}
proc worldViewMatrix*(this: Graphic3dCullingTool): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "WorldViewMatrix", header: "Graphic3d_CullingTool.hxx".}
proc viewportWidth*(this: Graphic3dCullingTool): cint {.noSideEffect, cdecl,
    importcpp: "ViewportWidth", header: "Graphic3d_CullingTool.hxx".}
proc viewportHeight*(this: Graphic3dCullingTool): cint {.noSideEffect, cdecl,
    importcpp: "ViewportHeight", header: "Graphic3d_CullingTool.hxx".}
proc worldViewProjState*(this: Graphic3dCullingTool): Graphic3dWorldViewProjState {.
    noSideEffect, cdecl, importcpp: "WorldViewProjState", header: "Graphic3d_CullingTool.hxx".}
proc cameraEye*(this: Graphic3dCullingTool): Graphic3dVec3d {.noSideEffect, cdecl,
    importcpp: "CameraEye", header: "Graphic3d_CullingTool.hxx".}
proc cameraDirection*(this: Graphic3dCullingTool): Graphic3dVec3d {.noSideEffect,
    cdecl, importcpp: "CameraDirection", header: "Graphic3d_CullingTool.hxx".}
proc signedPlanePointDistance*(this: var Graphic3dCullingTool;
                              theNormal: Graphic3dVec4d; thePnt: Graphic3dVec4d): cfloat {.
    cdecl, importcpp: "SignedPlanePointDistance", header: "Graphic3d_CullingTool.hxx".}
proc isOutFrustum*(this: Graphic3dCullingTool; theMinPnt: Graphic3dVec3d;
                  theMaxPnt: Graphic3dVec3d; theIsInside: ptr bool = nil): bool {.
    noSideEffect, cdecl, importcpp: "IsOutFrustum", header: "Graphic3d_CullingTool.hxx".}
proc isTooDistant*(this: Graphic3dCullingTool;
                  theCtx: Graphic3dCullingToolCullingContext;
                  theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d;
                  theIsInside: ptr bool = nil): bool {.noSideEffect, cdecl,
    importcpp: "IsTooDistant", header: "Graphic3d_CullingTool.hxx".}
proc isTooSmall*(this: Graphic3dCullingTool;
                theCtx: Graphic3dCullingToolCullingContext;
                theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d): bool {.
    noSideEffect, cdecl, importcpp: "IsTooSmall", header: "Graphic3d_CullingTool.hxx".}


