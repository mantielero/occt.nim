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
discard "forward decl of StepGeom_Parabola"
discard "forward decl of StepGeom_Parabola"
type
  Handle_StepGeom_Parabola* = handle[StepGeom_Parabola]
  StepGeom_Parabola* {.importcpp: "StepGeom_Parabola",
                      header: "StepGeom_Parabola.hxx", bycopy.} = object of StepGeom_Conic ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## Parabola


proc constructStepGeom_Parabola*(): StepGeom_Parabola {.constructor,
    importcpp: "StepGeom_Parabola(@)", header: "StepGeom_Parabola.hxx".}
proc Init*(this: var StepGeom_Parabola; aName: handle[TCollection_HAsciiString];
          aPosition: StepGeom_Axis2Placement; aFocalDist: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_Parabola.hxx".}
proc SetFocalDist*(this: var StepGeom_Parabola; aFocalDist: Standard_Real) {.
    importcpp: "SetFocalDist", header: "StepGeom_Parabola.hxx".}
proc FocalDist*(this: StepGeom_Parabola): Standard_Real {.noSideEffect,
    importcpp: "FocalDist", header: "StepGeom_Parabola.hxx".}
type
  StepGeom_Parabolabase_type* = StepGeom_Conic

proc get_type_name*(): cstring {.importcpp: "StepGeom_Parabola::get_type_name(@)",
                              header: "StepGeom_Parabola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Parabola::get_type_descriptor(@)",
    header: "StepGeom_Parabola.hxx".}
proc DynamicType*(this: StepGeom_Parabola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Parabola.hxx".}