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

type
  Graphic3dCullingTool* {.importcpp: "Graphic3d_CullingTool",
                         header: "Graphic3d_CullingTool.hxx", bycopy.} = object ## !
                                                                           ## Auxiliary
                                                                           ## structure
                                                                           ## holding
                                                                           ## non-persistent
                                                                           ## culling
                                                                           ## options.
                                                                           ## !
                                                                           ## Creates an empty
                                                                           ## selector
                                                                           ## object with
                                                                           ## parallel
                                                                           ## projection type by
                                                                           ## default.
                                                                           ## !
                                                                           ## Calculates
                                                                           ## signed
                                                                           ## distance from plane to
                                                                           ## point.
                                                                           ## !
                                                                           ## @param
                                                                           ## theNormal [in] the
                                                                           ## plane's
                                                                           ## normal.
                                                                           ## !
                                                                           ## @param
                                                                           ## thePnt    [in]
                                                                           ## !
                                                                           ## Enumerates
                                                                           ## planes of view
                                                                           ## volume.
    ## !< Planes
    ## !< Vertices
    ## !< camera definition
    ##  for caching clip points projections onto viewing area normals once per traverse
    ##  ORDER: LEFT, RIGHT, BOTTOM, TOP, NEAR, FAR
    ## !< Max view volume's vertices projections onto its normals
    ## !< Min view volume's vertices projections onto its normals
    ##  for caching clip points projections onto AABB normals once per traverse
    ##  ORDER: E0, E1, E2
    ## !< Max view volume's vertices projections onto normalized dimensions of AABB
    ## !< Min view volume's vertices projections onto normalized dimensions of AABB
    ## !< State of world view projection matrices.
    ## !< camera eye position for distance culling
    ## !< camera direction for size culling
    ## !< camera scale for size culling
    ## !< pixel size for size culling

  Graphic3dCullingToolCullingContext* {.importcpp: "Graphic3d_CullingTool::CullingContext",
                                       header: "Graphic3d_CullingTool.hxx", bycopy.} = object
    distCull* {.importc: "DistCull".}: StandardReal ## !< culling distance
    sizeCull2* {.importc: "SizeCull2".}: StandardReal ## !< squared culling size
                                                  ## ! Empty constructor.


proc constructGraphic3dCullingToolCullingContext*(): Graphic3dCullingToolCullingContext {.
    constructor, importcpp: "Graphic3d_CullingTool::CullingContext(@)",
    header: "Graphic3d_CullingTool.hxx".}
type
  Graphic3dCullingToolPlane* {.importcpp: "Graphic3d_CullingTool::Plane",
                              header: "Graphic3d_CullingTool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## default
                                                                                ## plane.
    origin* {.importc: "Origin".}: Graphic3dVec3d
    normal* {.importc: "Normal".}: Graphic3dVec3d


proc constructGraphic3dCullingToolPlane*(): Graphic3dCullingToolPlane {.
    constructor, importcpp: "Graphic3d_CullingTool::Plane(@)",
    header: "Graphic3d_CullingTool.hxx".}
proc constructGraphic3dCullingToolPlane*(theOrigin: Graphic3dVec3d;
                                        theNormal: Graphic3dVec3d): Graphic3dCullingToolPlane {.
    constructor, importcpp: "Graphic3d_CullingTool::Plane(@)",
    header: "Graphic3d_CullingTool.hxx".}
proc constructGraphic3dCullingTool*(): Graphic3dCullingTool {.constructor,
    importcpp: "Graphic3d_CullingTool(@)", header: "Graphic3d_CullingTool.hxx".}
proc setViewVolume*(this: var Graphic3dCullingTool;
                   theCamera: Handle[Graphic3dCamera];
                   theModelWorld: Graphic3dMat4d = graphic3dMat4d()) {.
    importcpp: "SetViewVolume", header: "Graphic3d_CullingTool.hxx".}
proc setViewportSize*(this: var Graphic3dCullingTool;
                     theViewportWidth: StandardInteger;
                     theViewportHeight: StandardInteger;
                     theResolutionRatio: StandardReal) {.
    importcpp: "SetViewportSize", header: "Graphic3d_CullingTool.hxx".}
proc setCullingDistance*(this: Graphic3dCullingTool;
                        theCtx: var Graphic3dCullingToolCullingContext;
                        theDistance: StandardReal) {.noSideEffect,
    importcpp: "SetCullingDistance", header: "Graphic3d_CullingTool.hxx".}
proc setCullingSize*(this: Graphic3dCullingTool;
                    theCtx: var Graphic3dCullingToolCullingContext;
                    theSize: StandardReal) {.noSideEffect,
    importcpp: "SetCullingSize", header: "Graphic3d_CullingTool.hxx".}
proc cacheClipPtsProjections*(this: var Graphic3dCullingTool) {.
    importcpp: "CacheClipPtsProjections", header: "Graphic3d_CullingTool.hxx".}
proc isCulled*(this: Graphic3dCullingTool;
              theCtx: Graphic3dCullingToolCullingContext;
              theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d;
              theIsInside: ptr StandardBoolean = nil): bool {.noSideEffect,
    importcpp: "IsCulled", header: "Graphic3d_CullingTool.hxx".}
proc camera*(this: Graphic3dCullingTool): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "Camera", header: "Graphic3d_CullingTool.hxx".}
proc projectionMatrix*(this: Graphic3dCullingTool): Graphic3dMat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Graphic3d_CullingTool.hxx".}
proc worldViewMatrix*(this: Graphic3dCullingTool): Graphic3dMat4d {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "Graphic3d_CullingTool.hxx".}
proc viewportWidth*(this: Graphic3dCullingTool): StandardInteger {.noSideEffect,
    importcpp: "ViewportWidth", header: "Graphic3d_CullingTool.hxx".}
proc viewportHeight*(this: Graphic3dCullingTool): StandardInteger {.noSideEffect,
    importcpp: "ViewportHeight", header: "Graphic3d_CullingTool.hxx".}
proc worldViewProjState*(this: Graphic3dCullingTool): Graphic3dWorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "Graphic3d_CullingTool.hxx".}
proc cameraEye*(this: Graphic3dCullingTool): Graphic3dVec3d {.noSideEffect,
    importcpp: "CameraEye", header: "Graphic3d_CullingTool.hxx".}
proc cameraDirection*(this: Graphic3dCullingTool): Graphic3dVec3d {.noSideEffect,
    importcpp: "CameraDirection", header: "Graphic3d_CullingTool.hxx".}
proc signedPlanePointDistance*(this: var Graphic3dCullingTool;
                              theNormal: Graphic3dVec4d; thePnt: Graphic3dVec4d): StandardReal {.
    importcpp: "SignedPlanePointDistance", header: "Graphic3d_CullingTool.hxx".}
proc isOutFrustum*(this: Graphic3dCullingTool; theMinPnt: Graphic3dVec3d;
                  theMaxPnt: Graphic3dVec3d;
                  theIsInside: ptr StandardBoolean = nil): bool {.noSideEffect,
    importcpp: "IsOutFrustum", header: "Graphic3d_CullingTool.hxx".}
proc isTooDistant*(this: Graphic3dCullingTool;
                  theCtx: Graphic3dCullingToolCullingContext;
                  theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d;
                  theIsInside: ptr StandardBoolean = nil): bool {.noSideEffect,
    importcpp: "IsTooDistant", header: "Graphic3d_CullingTool.hxx".}
proc isTooSmall*(this: Graphic3dCullingTool;
                theCtx: Graphic3dCullingToolCullingContext;
                theMinPnt: Graphic3dVec3d; theMaxPnt: Graphic3dVec3d): bool {.
    noSideEffect, importcpp: "IsTooSmall", header: "Graphic3d_CullingTool.hxx".}

