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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Curve

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Vector"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Line"
discard "forward decl of StepGeom_Line"
type
  Handle_StepGeom_Line* = handle[StepGeom_Line]
  StepGeom_Line* {.importcpp: "StepGeom_Line", header: "StepGeom_Line.hxx", bycopy.} = object of StepGeom_Curve ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## Line


proc constructStepGeom_Line*(): StepGeom_Line {.constructor,
    importcpp: "StepGeom_Line(@)", header: "StepGeom_Line.hxx".}
proc Init*(this: var StepGeom_Line; aName: handle[TCollection_HAsciiString];
          aPnt: handle[StepGeom_CartesianPoint]; aDir: handle[StepGeom_Vector]) {.
    importcpp: "Init", header: "StepGeom_Line.hxx".}
proc SetPnt*(this: var StepGeom_Line; aPnt: handle[StepGeom_CartesianPoint]) {.
    importcpp: "SetPnt", header: "StepGeom_Line.hxx".}
proc Pnt*(this: StepGeom_Line): handle[StepGeom_CartesianPoint] {.noSideEffect,
    importcpp: "Pnt", header: "StepGeom_Line.hxx".}
proc SetDir*(this: var StepGeom_Line; aDir: handle[StepGeom_Vector]) {.
    importcpp: "SetDir", header: "StepGeom_Line.hxx".}
proc Dir*(this: StepGeom_Line): handle[StepGeom_Vector] {.noSideEffect,
    importcpp: "Dir", header: "StepGeom_Line.hxx".}
type
  StepGeom_Linebase_type* = StepGeom_Curve

proc get_type_name*(): cstring {.importcpp: "StepGeom_Line::get_type_name(@)",
                              header: "StepGeom_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Line::get_type_descriptor(@)",
    header: "StepGeom_Line.hxx".}
proc DynamicType*(this: StepGeom_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Line.hxx".}