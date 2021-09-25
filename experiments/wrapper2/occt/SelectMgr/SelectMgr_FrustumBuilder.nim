##  Created on: 2014-11-24
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## ! The purpose of this class is to provide unified interface for building
## ! selecting frustum depending on current camera projection and orientation
## ! matrices, window size and viewport parameters.

type
  SelectMgrFrustumBuilder* {.importcpp: "SelectMgr_FrustumBuilder",
                            header: "SelectMgr_FrustumBuilder.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## new
                                                                                                    ## frustum
                                                                                                    ## builder
                                                                                                    ## with
                                                                                                    ## empty
                                                                                                    ## matrices
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Unprojects
                                                                                                    ## point
                                                                                                    ## from
                                                                                                    ## NDC
                                                                                                    ## coords
                                                                                                    ## to
                                                                                                    ## 3d
                                                                                                    ## world
                                                                                                    ## space


proc constructSelectMgrFrustumBuilder*(): SelectMgrFrustumBuilder {.constructor,
    importcpp: "SelectMgr_FrustumBuilder(@)",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc setWorldViewMatrix*(this: var SelectMgrFrustumBuilder;
                        theWorldViewMatrix: Graphic3dMat4d) {.
    importcpp: "SetWorldViewMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc worldViewMatrix*(this: SelectMgrFrustumBuilder): Graphic3dMat4d {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc setProjectionMatrix*(this: var SelectMgrFrustumBuilder;
                         theProjection: Graphic3dMat4d) {.
    importcpp: "SetProjectionMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc projectionMatrix*(this: SelectMgrFrustumBuilder): Graphic3dMat4d {.
    noSideEffect, importcpp: "ProjectionMatrix",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc setWorldViewProjState*(this: var SelectMgrFrustumBuilder;
                           theState: Graphic3dWorldViewProjState) {.
    importcpp: "SetWorldViewProjState", header: "SelectMgr_FrustumBuilder.hxx".}
proc worldViewProjState*(this: SelectMgrFrustumBuilder): Graphic3dWorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc setWindowSize*(this: var SelectMgrFrustumBuilder; theWidth: int; theHeight: int) {.
    importcpp: "SetWindowSize", header: "SelectMgr_FrustumBuilder.hxx".}
proc setViewport*(this: var SelectMgrFrustumBuilder; theX: float; theY: float;
                 theWidth: float; theHeight: float) {.importcpp: "SetViewport",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc invalidateViewport*(this: var SelectMgrFrustumBuilder) {.
    importcpp: "InvalidateViewport", header: "SelectMgr_FrustumBuilder.hxx".}
proc windowSize*(this: SelectMgrFrustumBuilder; theWidth: var int; theHeight: var int) {.
    noSideEffect, importcpp: "WindowSize", header: "SelectMgr_FrustumBuilder.hxx".}
proc signedPlanePntDist*(this: SelectMgrFrustumBuilder; theEq: SelectMgrVec3;
                        thePnt: SelectMgrVec3): float {.noSideEffect,
    importcpp: "SignedPlanePntDist", header: "SelectMgr_FrustumBuilder.hxx".}
proc projectPntOnViewPlane*(this: SelectMgrFrustumBuilder; theX: float; theY: float;
                           theZ: float): Pnt {.noSideEffect,
    importcpp: "ProjectPntOnViewPlane", header: "SelectMgr_FrustumBuilder.hxx".}
type
  SelectMgrFrustumBuilderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_FrustumBuilder::get_type_name(@)",
                            header: "SelectMgr_FrustumBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_FrustumBuilder::get_type_descriptor(@)",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc dynamicType*(this: SelectMgrFrustumBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_FrustumBuilder.hxx".}
discard "forward decl of SelectMgr_FrustumBuilder"
type
  HandleSelectMgrFrustumBuilder* = Handle[SelectMgrFrustumBuilder]

