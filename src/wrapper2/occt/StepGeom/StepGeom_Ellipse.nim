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
  StepGeom_Conic

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Ellipse"
discard "forward decl of StepGeom_Ellipse"
type
  Handle_StepGeom_Ellipse* = handle[StepGeom_Ellipse]
  StepGeom_Ellipse* {.importcpp: "StepGeom_Ellipse",
                     header: "StepGeom_Ellipse.hxx", bycopy.} = object of StepGeom_Conic ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## Ellipse


proc constructStepGeom_Ellipse*(): StepGeom_Ellipse {.constructor,
    importcpp: "StepGeom_Ellipse(@)", header: "StepGeom_Ellipse.hxx".}
proc Init*(this: var StepGeom_Ellipse; aName: handle[TCollection_HAsciiString];
          aPosition: StepGeom_Axis2Placement; aSemiAxis1: Standard_Real;
          aSemiAxis2: Standard_Real) {.importcpp: "Init",
                                     header: "StepGeom_Ellipse.hxx".}
proc SetSemiAxis1*(this: var StepGeom_Ellipse; aSemiAxis1: Standard_Real) {.
    importcpp: "SetSemiAxis1", header: "StepGeom_Ellipse.hxx".}
proc SemiAxis1*(this: StepGeom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "SemiAxis1", header: "StepGeom_Ellipse.hxx".}
proc SetSemiAxis2*(this: var StepGeom_Ellipse; aSemiAxis2: Standard_Real) {.
    importcpp: "SetSemiAxis2", header: "StepGeom_Ellipse.hxx".}
proc SemiAxis2*(this: StepGeom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "SemiAxis2", header: "StepGeom_Ellipse.hxx".}
type
  StepGeom_Ellipsebase_type* = StepGeom_Conic

proc get_type_name*(): cstring {.importcpp: "StepGeom_Ellipse::get_type_name(@)",
                              header: "StepGeom_Ellipse.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Ellipse::get_type_descriptor(@)",
    header: "StepGeom_Ellipse.hxx".}
proc DynamicType*(this: StepGeom_Ellipse): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Ellipse.hxx".}