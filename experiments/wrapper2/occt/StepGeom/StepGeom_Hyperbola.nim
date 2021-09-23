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
discard "forward decl of StepGeom_Hyperbola"
discard "forward decl of StepGeom_Hyperbola"
type
  Handle_StepGeom_Hyperbola* = handle[StepGeom_Hyperbola]
  StepGeom_Hyperbola* {.importcpp: "StepGeom_Hyperbola",
                       header: "StepGeom_Hyperbola.hxx", bycopy.} = object of StepGeom_Conic ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## Hyperbola


proc constructStepGeom_Hyperbola*(): StepGeom_Hyperbola {.constructor,
    importcpp: "StepGeom_Hyperbola(@)", header: "StepGeom_Hyperbola.hxx".}
proc Init*(this: var StepGeom_Hyperbola; aName: handle[TCollection_HAsciiString];
          aPosition: StepGeom_Axis2Placement; aSemiAxis: Standard_Real;
          aSemiImagAxis: Standard_Real) {.importcpp: "Init",
                                        header: "StepGeom_Hyperbola.hxx".}
proc SetSemiAxis*(this: var StepGeom_Hyperbola; aSemiAxis: Standard_Real) {.
    importcpp: "SetSemiAxis", header: "StepGeom_Hyperbola.hxx".}
proc SemiAxis*(this: StepGeom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "SemiAxis", header: "StepGeom_Hyperbola.hxx".}
proc SetSemiImagAxis*(this: var StepGeom_Hyperbola; aSemiImagAxis: Standard_Real) {.
    importcpp: "SetSemiImagAxis", header: "StepGeom_Hyperbola.hxx".}
proc SemiImagAxis*(this: StepGeom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "SemiImagAxis", header: "StepGeom_Hyperbola.hxx".}
type
  StepGeom_Hyperbolabase_type* = StepGeom_Conic

proc get_type_name*(): cstring {.importcpp: "StepGeom_Hyperbola::get_type_name(@)",
                              header: "StepGeom_Hyperbola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Hyperbola::get_type_descriptor(@)",
    header: "StepGeom_Hyperbola.hxx".}
proc DynamicType*(this: StepGeom_Hyperbola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Hyperbola.hxx".}