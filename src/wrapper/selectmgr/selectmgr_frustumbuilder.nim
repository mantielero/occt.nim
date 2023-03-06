import ../gp/gp_types
import ../graphic3d/graphic3d_types
import selectmgr_types





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



proc newSelectMgrFrustumBuilder*(): SelectMgrFrustumBuilder {.cdecl, constructor,
    importcpp: "SelectMgr_FrustumBuilder(@)", header: "SelectMgr_FrustumBuilder.hxx".}
proc setWorldViewMatrix*(this: var SelectMgrFrustumBuilder;
                        theWorldViewMatrix: Graphic3dMat4d) {.cdecl,
    importcpp: "SetWorldViewMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc worldViewMatrix*(this: SelectMgrFrustumBuilder): Graphic3dMat4d {.noSideEffect,
    cdecl, importcpp: "WorldViewMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc setProjectionMatrix*(this: var SelectMgrFrustumBuilder;
                         theProjection: Graphic3dMat4d) {.cdecl,
    importcpp: "SetProjectionMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc projectionMatrix*(this: SelectMgrFrustumBuilder): Graphic3dMat4d {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc setWorldViewProjState*(this: var SelectMgrFrustumBuilder;
                           theState: Graphic3dWorldViewProjState) {.cdecl,
    importcpp: "SetWorldViewProjState", header: "SelectMgr_FrustumBuilder.hxx".}
proc worldViewProjState*(this: SelectMgrFrustumBuilder): Graphic3dWorldViewProjState {.
    noSideEffect, cdecl, importcpp: "WorldViewProjState", header: "SelectMgr_FrustumBuilder.hxx".}
proc setWindowSize*(this: var SelectMgrFrustumBuilder; theWidth: cint; theHeight: cint) {.
    cdecl, importcpp: "SetWindowSize", header: "SelectMgr_FrustumBuilder.hxx".}
proc setViewport*(this: var SelectMgrFrustumBuilder; theX: cfloat; theY: cfloat;
                 theWidth: cfloat; theHeight: cfloat) {.cdecl,
    importcpp: "SetViewport", header: "SelectMgr_FrustumBuilder.hxx".}
proc invalidateViewport*(this: var SelectMgrFrustumBuilder) {.cdecl,
    importcpp: "InvalidateViewport", header: "SelectMgr_FrustumBuilder.hxx".}
proc windowSize*(this: SelectMgrFrustumBuilder; theWidth: var cint;
                theHeight: var cint) {.noSideEffect, cdecl, importcpp: "WindowSize",
                                    header: "SelectMgr_FrustumBuilder.hxx".}
proc signedPlanePntDist*(this: SelectMgrFrustumBuilder; theEq: SelectMgrVec3;
                        thePnt: SelectMgrVec3): cfloat {.noSideEffect, cdecl,
    importcpp: "SignedPlanePntDist", header: "SelectMgr_FrustumBuilder.hxx".}
proc projectPntOnViewPlane*(this: SelectMgrFrustumBuilder; theX: cfloat;
                           theY: cfloat; theZ: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "ProjectPntOnViewPlane", header: "SelectMgr_FrustumBuilder.hxx".}



