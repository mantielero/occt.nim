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
  StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Vector"
discard "forward decl of StepGeom_Vector"
type
  Handle_StepGeom_Vector* = handle[StepGeom_Vector]
  StepGeom_Vector* {.importcpp: "StepGeom_Vector", header: "StepGeom_Vector.hxx",
                    bycopy.} = object of StepGeom_GeometricRepresentationItem ## ! Returns a Vector


proc constructStepGeom_Vector*(): StepGeom_Vector {.constructor,
    importcpp: "StepGeom_Vector(@)", header: "StepGeom_Vector.hxx".}
proc Init*(this: var StepGeom_Vector; aName: handle[TCollection_HAsciiString];
          aOrientation: handle[StepGeom_Direction]; aMagnitude: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_Vector.hxx".}
proc SetOrientation*(this: var StepGeom_Vector;
                    aOrientation: handle[StepGeom_Direction]) {.
    importcpp: "SetOrientation", header: "StepGeom_Vector.hxx".}
proc Orientation*(this: StepGeom_Vector): handle[StepGeom_Direction] {.noSideEffect,
    importcpp: "Orientation", header: "StepGeom_Vector.hxx".}
proc SetMagnitude*(this: var StepGeom_Vector; aMagnitude: Standard_Real) {.
    importcpp: "SetMagnitude", header: "StepGeom_Vector.hxx".}
proc Magnitude*(this: StepGeom_Vector): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "StepGeom_Vector.hxx".}
type
  StepGeom_Vectorbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepGeom_Vector::get_type_name(@)",
                              header: "StepGeom_Vector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Vector::get_type_descriptor(@)",
    header: "StepGeom_Vector.hxx".}
proc DynamicType*(this: StepGeom_Vector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Vector.hxx".}