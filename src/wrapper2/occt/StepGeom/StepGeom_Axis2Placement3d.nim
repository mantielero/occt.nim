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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepGeom_Placement

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_Axis2Placement3d"
type
  Handle_StepGeom_Axis2Placement3d* = handle[StepGeom_Axis2Placement3d]
  StepGeom_Axis2Placement3d* {.importcpp: "StepGeom_Axis2Placement3d",
                              header: "StepGeom_Axis2Placement3d.hxx", bycopy.} = object of StepGeom_Placement ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## Axis2Placement3d


proc constructStepGeom_Axis2Placement3d*(): StepGeom_Axis2Placement3d {.
    constructor, importcpp: "StepGeom_Axis2Placement3d(@)",
    header: "StepGeom_Axis2Placement3d.hxx".}
proc Init*(this: var StepGeom_Axis2Placement3d;
          aName: handle[TCollection_HAsciiString];
          aLocation: handle[StepGeom_CartesianPoint]; hasAaxis: Standard_Boolean;
          aAxis: handle[StepGeom_Direction]; hasArefDirection: Standard_Boolean;
          aRefDirection: handle[StepGeom_Direction]) {.importcpp: "Init",
    header: "StepGeom_Axis2Placement3d.hxx".}
proc SetAxis*(this: var StepGeom_Axis2Placement3d; aAxis: handle[StepGeom_Direction]) {.
    importcpp: "SetAxis", header: "StepGeom_Axis2Placement3d.hxx".}
proc UnSetAxis*(this: var StepGeom_Axis2Placement3d) {.importcpp: "UnSetAxis",
    header: "StepGeom_Axis2Placement3d.hxx".}
proc Axis*(this: StepGeom_Axis2Placement3d): handle[StepGeom_Direction] {.
    noSideEffect, importcpp: "Axis", header: "StepGeom_Axis2Placement3d.hxx".}
proc HasAxis*(this: StepGeom_Axis2Placement3d): Standard_Boolean {.noSideEffect,
    importcpp: "HasAxis", header: "StepGeom_Axis2Placement3d.hxx".}
proc SetRefDirection*(this: var StepGeom_Axis2Placement3d;
                     aRefDirection: handle[StepGeom_Direction]) {.
    importcpp: "SetRefDirection", header: "StepGeom_Axis2Placement3d.hxx".}
proc UnSetRefDirection*(this: var StepGeom_Axis2Placement3d) {.
    importcpp: "UnSetRefDirection", header: "StepGeom_Axis2Placement3d.hxx".}
proc RefDirection*(this: StepGeom_Axis2Placement3d): handle[StepGeom_Direction] {.
    noSideEffect, importcpp: "RefDirection",
    header: "StepGeom_Axis2Placement3d.hxx".}
proc HasRefDirection*(this: StepGeom_Axis2Placement3d): Standard_Boolean {.
    noSideEffect, importcpp: "HasRefDirection",
    header: "StepGeom_Axis2Placement3d.hxx".}
type
  StepGeom_Axis2Placement3dbase_type* = StepGeom_Placement

proc get_type_name*(): cstring {.importcpp: "StepGeom_Axis2Placement3d::get_type_name(@)",
                              header: "StepGeom_Axis2Placement3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Axis2Placement3d::get_type_descriptor(@)",
    header: "StepGeom_Axis2Placement3d.hxx".}
proc DynamicType*(this: StepGeom_Axis2Placement3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_Axis2Placement3d.hxx".}