##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_RightAngularWedge"
discard "forward decl of StepShape_RightAngularWedge"
type
  Handle_StepShape_RightAngularWedge* = handle[StepShape_RightAngularWedge]
  StepShape_RightAngularWedge* {.importcpp: "StepShape_RightAngularWedge",
                                header: "StepShape_RightAngularWedge.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                              ## !
                                                                                                                              ## Returns
                                                                                                                              ## a
                                                                                                                              ## RightAngularWedge


proc constructStepShape_RightAngularWedge*(): StepShape_RightAngularWedge {.
    constructor, importcpp: "StepShape_RightAngularWedge(@)",
    header: "StepShape_RightAngularWedge.hxx".}
proc Init*(this: var StepShape_RightAngularWedge;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d]; aX: Standard_Real;
          aY: Standard_Real; aZ: Standard_Real; aLtx: Standard_Real) {.
    importcpp: "Init", header: "StepShape_RightAngularWedge.hxx".}
proc SetPosition*(this: var StepShape_RightAngularWedge;
                 aPosition: handle[StepGeom_Axis2Placement3d]) {.
    importcpp: "SetPosition", header: "StepShape_RightAngularWedge.hxx".}
proc Position*(this: StepShape_RightAngularWedge): handle[StepGeom_Axis2Placement3d] {.
    noSideEffect, importcpp: "Position", header: "StepShape_RightAngularWedge.hxx".}
proc SetX*(this: var StepShape_RightAngularWedge; aX: Standard_Real) {.
    importcpp: "SetX", header: "StepShape_RightAngularWedge.hxx".}
proc X*(this: StepShape_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "X", header: "StepShape_RightAngularWedge.hxx".}
proc SetY*(this: var StepShape_RightAngularWedge; aY: Standard_Real) {.
    importcpp: "SetY", header: "StepShape_RightAngularWedge.hxx".}
proc Y*(this: StepShape_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "Y", header: "StepShape_RightAngularWedge.hxx".}
proc SetZ*(this: var StepShape_RightAngularWedge; aZ: Standard_Real) {.
    importcpp: "SetZ", header: "StepShape_RightAngularWedge.hxx".}
proc Z*(this: StepShape_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "Z", header: "StepShape_RightAngularWedge.hxx".}
proc SetLtx*(this: var StepShape_RightAngularWedge; aLtx: Standard_Real) {.
    importcpp: "SetLtx", header: "StepShape_RightAngularWedge.hxx".}
proc Ltx*(this: StepShape_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "Ltx", header: "StepShape_RightAngularWedge.hxx".}
type
  StepShape_RightAngularWedgebase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_RightAngularWedge::get_type_name(@)",
                              header: "StepShape_RightAngularWedge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_RightAngularWedge::get_type_descriptor(@)",
    header: "StepShape_RightAngularWedge.hxx".}
proc DynamicType*(this: StepShape_RightAngularWedge): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RightAngularWedge.hxx".}