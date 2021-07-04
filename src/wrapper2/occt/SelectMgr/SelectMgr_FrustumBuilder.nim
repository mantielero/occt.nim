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

import
  ../Standard/Standard_Type, ../Graphic3d/Graphic3d_Camera,
  ../Graphic3d/Graphic3d_WorldViewProjState, ../Precision/Precision,
  SelectMgr_VectorTypes

## ! The purpose of this class is to provide unified interface for building
## ! selecting frustum depending on current camera projection and orientation
## ! matrices, window size and viewport parameters.

type
  SelectMgr_FrustumBuilder* {.importcpp: "SelectMgr_FrustumBuilder",
                             header: "SelectMgr_FrustumBuilder.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructSelectMgr_FrustumBuilder*(): SelectMgr_FrustumBuilder {.constructor,
    importcpp: "SelectMgr_FrustumBuilder(@)",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc SetWorldViewMatrix*(this: var SelectMgr_FrustumBuilder;
                        theWorldViewMatrix: Graphic3d_Mat4d) {.
    importcpp: "SetWorldViewMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc WorldViewMatrix*(this: SelectMgr_FrustumBuilder): Graphic3d_Mat4d {.
    noSideEffect, importcpp: "WorldViewMatrix",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc SetProjectionMatrix*(this: var SelectMgr_FrustumBuilder;
                         theProjection: Graphic3d_Mat4d) {.
    importcpp: "SetProjectionMatrix", header: "SelectMgr_FrustumBuilder.hxx".}
proc ProjectionMatrix*(this: SelectMgr_FrustumBuilder): Graphic3d_Mat4d {.
    noSideEffect, importcpp: "ProjectionMatrix",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc SetWorldViewProjState*(this: var SelectMgr_FrustumBuilder;
                           theState: Graphic3d_WorldViewProjState) {.
    importcpp: "SetWorldViewProjState", header: "SelectMgr_FrustumBuilder.hxx".}
proc WorldViewProjState*(this: SelectMgr_FrustumBuilder): Graphic3d_WorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc SetWindowSize*(this: var SelectMgr_FrustumBuilder; theWidth: Standard_Integer;
                   theHeight: Standard_Integer) {.importcpp: "SetWindowSize",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc SetViewport*(this: var SelectMgr_FrustumBuilder; theX: Standard_Real;
                 theY: Standard_Real; theWidth: Standard_Real;
                 theHeight: Standard_Real) {.importcpp: "SetViewport",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc InvalidateViewport*(this: var SelectMgr_FrustumBuilder) {.
    importcpp: "InvalidateViewport", header: "SelectMgr_FrustumBuilder.hxx".}
proc WindowSize*(this: SelectMgr_FrustumBuilder; theWidth: var Standard_Integer;
                theHeight: var Standard_Integer) {.noSideEffect,
    importcpp: "WindowSize", header: "SelectMgr_FrustumBuilder.hxx".}
proc SignedPlanePntDist*(this: SelectMgr_FrustumBuilder; theEq: SelectMgr_Vec3;
                        thePnt: SelectMgr_Vec3): Standard_Real {.noSideEffect,
    importcpp: "SignedPlanePntDist", header: "SelectMgr_FrustumBuilder.hxx".}
proc ProjectPntOnViewPlane*(this: SelectMgr_FrustumBuilder; theX: Standard_Real;
                           theY: Standard_Real; theZ: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "ProjectPntOnViewPlane",
    header: "SelectMgr_FrustumBuilder.hxx".}
type
  SelectMgr_FrustumBuilderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_FrustumBuilder::get_type_name(@)",
                              header: "SelectMgr_FrustumBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_FrustumBuilder::get_type_descriptor(@)",
    header: "SelectMgr_FrustumBuilder.hxx".}
proc DynamicType*(this: SelectMgr_FrustumBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_FrustumBuilder.hxx".}
discard "forward decl of SelectMgr_FrustumBuilder"
type
  Handle_SelectMgr_FrustumBuilder* = handle[SelectMgr_FrustumBuilder]
