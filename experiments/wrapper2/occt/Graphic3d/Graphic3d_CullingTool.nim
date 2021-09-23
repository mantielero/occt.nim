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

import
  Graphic3d_Camera, Graphic3d_Vec4, Graphic3d_WorldViewProjState

## ! Graphic3d_CullingTool class provides a possibility to store parameters of view volume,
## ! such as its vertices and equations, and contains methods detecting if given AABB overlaps view volume.

type
  Graphic3d_CullingTool* {.importcpp: "Graphic3d_CullingTool",
                          header: "Graphic3d_CullingTool.hxx", bycopy.} = object ## !
                                                                            ## Auxiliary
                                                                            ## structure
                                                                            ## holding
                                                                            ## non-persistent
                                                                            ## culling
                                                                            ## options.
                                                                            ## !
                                                                            ## Creates an
                                                                            ## empty
                                                                            ## selector
                                                                            ## object with
                                                                            ## parallel
                                                                            ## projection type by
                                                                            ## default.
                                                                            ## !
                                                                            ## Calculates
                                                                            ## signed
                                                                            ## distance from
                                                                            ## plane to
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

  Graphic3d_CullingToolCullingContext* {.importcpp: "Graphic3d_CullingTool::CullingContext",
                                        header: "Graphic3d_CullingTool.hxx",
                                        bycopy.} = object
    DistCull* {.importc: "DistCull".}: Standard_Real ## !< culling distance
    SizeCull2* {.importc: "SizeCull2".}: Standard_Real ## !< squared culling size
                                                   ## ! Empty constructor.


proc constructGraphic3d_CullingToolCullingContext*(): Graphic3d_CullingToolCullingContext {.
    constructor, importcpp: "Graphic3d_CullingTool::CullingContext(@)",
    header: "Graphic3d_CullingTool.hxx".}
type
  Graphic3d_CullingToolPlane* {.importcpp: "Graphic3d_CullingTool::Plane",
                               header: "Graphic3d_CullingTool.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## default
                                                                                 ## plane.
    Origin* {.importc: "Origin".}: Graphic3d_Vec3d
    Normal* {.importc: "Normal".}: Graphic3d_Vec3d


proc constructGraphic3d_CullingToolPlane*(): Graphic3d_CullingToolPlane {.
    constructor, importcpp: "Graphic3d_CullingTool::Plane(@)",
    header: "Graphic3d_CullingTool.hxx".}
proc constructGraphic3d_CullingToolPlane*(theOrigin: Graphic3d_Vec3d;
    theNormal: Graphic3d_Vec3d): Graphic3d_CullingToolPlane {.constructor,
    importcpp: "Graphic3d_CullingTool::Plane(@)",
    header: "Graphic3d_CullingTool.hxx".}
proc constructGraphic3d_CullingTool*(): Graphic3d_CullingTool {.constructor,
    importcpp: "Graphic3d_CullingTool(@)", header: "Graphic3d_CullingTool.hxx".}
proc SetViewVolume*(this: var Graphic3d_CullingTool;
                   theCamera: handle[Graphic3d_Camera];
                   theModelWorld: Graphic3d_Mat4d = Graphic3d_Mat4d()) {.
    importcpp: "SetViewVolume", header: "Graphic3d_CullingTool.hxx".}
proc SetViewportSize*(this: var Graphic3d_CullingTool;
                     theViewportWidth: Standard_Integer;
                     theViewportHeight: Standard_Integer;
                     theResolutionRatio: Standard_Real) {.
    importcpp: "SetViewportSize", header: "Graphic3d_CullingTool.hxx".}
proc SetCullingDistance*(this: Graphic3d_CullingTool;
                        theCtx: var Graphic3d_CullingToolCullingContext;
                        theDistance: Standard_Real) {.noSideEffect,
    importcpp: "SetCullingDistance", header: "Graphic3d_CullingTool.hxx".}
proc SetCullingSize*(this: Graphic3d_CullingTool;
                    theCtx: var Graphic3d_CullingToolCullingContext;
                    theSize: Standard_Real) {.noSideEffect,
    importcpp: "SetCullingSize", header: "Graphic3d_CullingTool.hxx".}
proc CacheClipPtsProjections*(this: var Graphic3d_CullingTool) {.
    importcpp: "CacheClipPtsProjections", header: "Graphic3d_CullingTool.hxx".}
proc IsCulled*(this: Graphic3d_CullingTool;
              theCtx: Graphic3d_CullingToolCullingContext;
              theMinPnt: Graphic3d_Vec3d; theMaxPnt: Graphic3d_Vec3d;
              theIsInside: ptr Standard_Boolean = nil): bool {.noSideEffect,
    importcpp: "IsCulled", header: "Graphic3d_CullingTool.hxx".}
proc Camera*(this: Graphic3d_CullingTool): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "Camera", header: "Graphic3d_CullingTool.hxx".}
proc ProjectionMatrix*(this: Graphic3d_CullingTool): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Graphic3d_CullingTool.hxx".}
proc WorldViewMatrix*(this: Graphic3d_CullingTool): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "Graphic3d_CullingTool.hxx".}
proc ViewportWidth*(this: Graphic3d_CullingTool): Standard_Integer {.noSideEffect,
    importcpp: "ViewportWidth", header: "Graphic3d_CullingTool.hxx".}
proc ViewportHeight*(this: Graphic3d_CullingTool): Standard_Integer {.noSideEffect,
    importcpp: "ViewportHeight", header: "Graphic3d_CullingTool.hxx".}
proc WorldViewProjState*(this: Graphic3d_CullingTool): Graphic3d_WorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "Graphic3d_CullingTool.hxx".}
proc CameraEye*(this: Graphic3d_CullingTool): Graphic3d_Vec3d {.noSideEffect,
    importcpp: "CameraEye", header: "Graphic3d_CullingTool.hxx".}
proc CameraDirection*(this: Graphic3d_CullingTool): Graphic3d_Vec3d {.noSideEffect,
    importcpp: "CameraDirection", header: "Graphic3d_CullingTool.hxx".}
proc SignedPlanePointDistance*(this: var Graphic3d_CullingTool;
                              theNormal: Graphic3d_Vec4d; thePnt: Graphic3d_Vec4d): Standard_Real {.
    importcpp: "SignedPlanePointDistance", header: "Graphic3d_CullingTool.hxx".}
proc IsOutFrustum*(this: Graphic3d_CullingTool; theMinPnt: Graphic3d_Vec3d;
                  theMaxPnt: Graphic3d_Vec3d;
                  theIsInside: ptr Standard_Boolean = nil): bool {.noSideEffect,
    importcpp: "IsOutFrustum", header: "Graphic3d_CullingTool.hxx".}
proc IsTooDistant*(this: Graphic3d_CullingTool;
                  theCtx: Graphic3d_CullingToolCullingContext;
                  theMinPnt: Graphic3d_Vec3d; theMaxPnt: Graphic3d_Vec3d;
                  theIsInside: ptr Standard_Boolean = nil): bool {.noSideEffect,
    importcpp: "IsTooDistant", header: "Graphic3d_CullingTool.hxx".}
proc IsTooSmall*(this: Graphic3d_CullingTool;
                theCtx: Graphic3d_CullingToolCullingContext;
                theMinPnt: Graphic3d_Vec3d; theMaxPnt: Graphic3d_Vec3d): bool {.
    noSideEffect, importcpp: "IsTooSmall", header: "Graphic3d_CullingTool.hxx".}