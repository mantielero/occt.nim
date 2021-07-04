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
  StepGeom_Point

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PointOnCurve"
discard "forward decl of StepGeom_PointOnCurve"
type
  Handle_StepGeom_PointOnCurve* = handle[StepGeom_PointOnCurve]
  StepGeom_PointOnCurve* {.importcpp: "StepGeom_PointOnCurve",
                          header: "StepGeom_PointOnCurve.hxx", bycopy.} = object of StepGeom_Point ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## PointOnCurve


proc constructStepGeom_PointOnCurve*(): StepGeom_PointOnCurve {.constructor,
    importcpp: "StepGeom_PointOnCurve(@)", header: "StepGeom_PointOnCurve.hxx".}
proc Init*(this: var StepGeom_PointOnCurve; aName: handle[TCollection_HAsciiString];
          aBasisCurve: handle[StepGeom_Curve]; aPointParameter: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_PointOnCurve.hxx".}
proc SetBasisCurve*(this: var StepGeom_PointOnCurve;
                   aBasisCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_PointOnCurve.hxx".}
proc BasisCurve*(this: StepGeom_PointOnCurve): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "BasisCurve", header: "StepGeom_PointOnCurve.hxx".}
proc SetPointParameter*(this: var StepGeom_PointOnCurve;
                       aPointParameter: Standard_Real) {.
    importcpp: "SetPointParameter", header: "StepGeom_PointOnCurve.hxx".}
proc PointParameter*(this: StepGeom_PointOnCurve): Standard_Real {.noSideEffect,
    importcpp: "PointParameter", header: "StepGeom_PointOnCurve.hxx".}
type
  StepGeom_PointOnCurvebase_type* = StepGeom_Point

proc get_type_name*(): cstring {.importcpp: "StepGeom_PointOnCurve::get_type_name(@)",
                              header: "StepGeom_PointOnCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_PointOnCurve::get_type_descriptor(@)",
    header: "StepGeom_PointOnCurve.hxx".}
proc DynamicType*(this: StepGeom_PointOnCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_PointOnCurve.hxx".}