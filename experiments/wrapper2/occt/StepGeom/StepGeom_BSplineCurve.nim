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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_BSplineCurve"
discard "forward decl of StepGeom_BSplineCurve"
type
  HandleStepGeomBSplineCurve* = Handle[StepGeomBSplineCurve]
  StepGeomBSplineCurve* {.importcpp: "StepGeom_BSplineCurve",
                         header: "StepGeom_BSplineCurve.hxx", bycopy.} = object of StepGeomBoundedCurve ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## BSplineCurve


proc constructStepGeomBSplineCurve*(): StepGeomBSplineCurve {.constructor,
    importcpp: "StepGeom_BSplineCurve(@)", header: "StepGeom_BSplineCurve.hxx".}
proc init*(this: var StepGeomBSplineCurve; aName: Handle[TCollectionHAsciiString];
          aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical) {.importcpp: "Init",
    header: "StepGeom_BSplineCurve.hxx".}
proc setDegree*(this: var StepGeomBSplineCurve; aDegree: int) {.
    importcpp: "SetDegree", header: "StepGeom_BSplineCurve.hxx".}
proc degree*(this: StepGeomBSplineCurve): int {.noSideEffect, importcpp: "Degree",
    header: "StepGeom_BSplineCurve.hxx".}
proc setControlPointsList*(this: var StepGeomBSplineCurve; aControlPointsList: Handle[
    StepGeomHArray1OfCartesianPoint]) {.importcpp: "SetControlPointsList",
                                       header: "StepGeom_BSplineCurve.hxx".}
proc controlPointsList*(this: StepGeomBSplineCurve): Handle[
    StepGeomHArray1OfCartesianPoint] {.noSideEffect,
                                      importcpp: "ControlPointsList",
                                      header: "StepGeom_BSplineCurve.hxx".}
proc controlPointsListValue*(this: StepGeomBSplineCurve; num: int): Handle[
    StepGeomCartesianPoint] {.noSideEffect, importcpp: "ControlPointsListValue",
                             header: "StepGeom_BSplineCurve.hxx".}
proc nbControlPointsList*(this: StepGeomBSplineCurve): int {.noSideEffect,
    importcpp: "NbControlPointsList", header: "StepGeom_BSplineCurve.hxx".}
proc setCurveForm*(this: var StepGeomBSplineCurve;
                  aCurveForm: StepGeomBSplineCurveForm) {.
    importcpp: "SetCurveForm", header: "StepGeom_BSplineCurve.hxx".}
proc curveForm*(this: StepGeomBSplineCurve): StepGeomBSplineCurveForm {.
    noSideEffect, importcpp: "CurveForm", header: "StepGeom_BSplineCurve.hxx".}
proc setClosedCurve*(this: var StepGeomBSplineCurve; aClosedCurve: StepDataLogical) {.
    importcpp: "SetClosedCurve", header: "StepGeom_BSplineCurve.hxx".}
proc closedCurve*(this: StepGeomBSplineCurve): StepDataLogical {.noSideEffect,
    importcpp: "ClosedCurve", header: "StepGeom_BSplineCurve.hxx".}
proc setSelfIntersect*(this: var StepGeomBSplineCurve;
                      aSelfIntersect: StepDataLogical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_BSplineCurve.hxx".}
proc selfIntersect*(this: StepGeomBSplineCurve): StepDataLogical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_BSplineCurve.hxx".}
type
  StepGeomBSplineCurvebaseType* = StepGeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineCurve::get_type_name(@)",
                            header: "StepGeom_BSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_BSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurve.hxx".}
proc dynamicType*(this: StepGeomBSplineCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_BSplineCurve.hxx".}
