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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PointOnCurve"
discard "forward decl of StepGeom_PointOnCurve"
type
  HandleStepGeomPointOnCurve* = Handle[StepGeomPointOnCurve]
  StepGeomPointOnCurve* {.importcpp: "StepGeom_PointOnCurve",
                         header: "StepGeom_PointOnCurve.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## PointOnCurve


proc constructStepGeomPointOnCurve*(): StepGeomPointOnCurve {.constructor,
    importcpp: "StepGeom_PointOnCurve(@)", header: "StepGeom_PointOnCurve.hxx".}
proc init*(this: var StepGeomPointOnCurve; aName: Handle[TCollectionHAsciiString];
          aBasisCurve: Handle[StepGeomCurve]; aPointParameter: float) {.
    importcpp: "Init", header: "StepGeom_PointOnCurve.hxx".}
proc setBasisCurve*(this: var StepGeomPointOnCurve;
                   aBasisCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_PointOnCurve.hxx".}
proc basisCurve*(this: StepGeomPointOnCurve): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "StepGeom_PointOnCurve.hxx".}
proc setPointParameter*(this: var StepGeomPointOnCurve; aPointParameter: float) {.
    importcpp: "SetPointParameter", header: "StepGeom_PointOnCurve.hxx".}
proc pointParameter*(this: StepGeomPointOnCurve): float {.noSideEffect,
    importcpp: "PointParameter", header: "StepGeom_PointOnCurve.hxx".}
type
  StepGeomPointOnCurvebaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepGeom_PointOnCurve::get_type_name(@)",
                            header: "StepGeom_PointOnCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_PointOnCurve::get_type_descriptor(@)",
    header: "StepGeom_PointOnCurve.hxx".}
proc dynamicType*(this: StepGeomPointOnCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_PointOnCurve.hxx".}
