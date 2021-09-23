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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  StepGeom_HArray2OfCartesianPoint, StepGeom_BSplineSurfaceForm,
  ../StepData/StepData_Logical, StepGeom_BoundedSurface

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_BSplineSurface"
discard "forward decl of StepGeom_BSplineSurface"
type
  Handle_StepGeom_BSplineSurface* = handle[StepGeom_BSplineSurface]
  StepGeom_BSplineSurface* {.importcpp: "StepGeom_BSplineSurface",
                            header: "StepGeom_BSplineSurface.hxx", bycopy.} = object of StepGeom_BoundedSurface ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## BSplineSurface


proc constructStepGeom_BSplineSurface*(): StepGeom_BSplineSurface {.constructor,
    importcpp: "StepGeom_BSplineSurface(@)", header: "StepGeom_BSplineSurface.hxx".}
proc Init*(this: var StepGeom_BSplineSurface;
          aName: handle[TCollection_HAsciiString]; aUDegree: Standard_Integer;
          aVDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray2OfCartesianPoint];
          aSurfaceForm: StepGeom_BSplineSurfaceForm; aUClosed: StepData_Logical;
          aVClosed: StepData_Logical; aSelfIntersect: StepData_Logical) {.
    importcpp: "Init", header: "StepGeom_BSplineSurface.hxx".}
proc SetUDegree*(this: var StepGeom_BSplineSurface; aUDegree: Standard_Integer) {.
    importcpp: "SetUDegree", header: "StepGeom_BSplineSurface.hxx".}
proc UDegree*(this: StepGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "StepGeom_BSplineSurface.hxx".}
proc SetVDegree*(this: var StepGeom_BSplineSurface; aVDegree: Standard_Integer) {.
    importcpp: "SetVDegree", header: "StepGeom_BSplineSurface.hxx".}
proc VDegree*(this: StepGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "StepGeom_BSplineSurface.hxx".}
proc SetControlPointsList*(this: var StepGeom_BSplineSurface; aControlPointsList: handle[
    StepGeom_HArray2OfCartesianPoint]) {.importcpp: "SetControlPointsList",
                                        header: "StepGeom_BSplineSurface.hxx".}
proc ControlPointsList*(this: StepGeom_BSplineSurface): handle[
    StepGeom_HArray2OfCartesianPoint] {.noSideEffect,
                                       importcpp: "ControlPointsList",
                                       header: "StepGeom_BSplineSurface.hxx".}
proc ControlPointsListValue*(this: StepGeom_BSplineSurface; num1: Standard_Integer;
                            num2: Standard_Integer): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "ControlPointsListValue",
                              header: "StepGeom_BSplineSurface.hxx".}
proc NbControlPointsListI*(this: StepGeom_BSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbControlPointsListI",
    header: "StepGeom_BSplineSurface.hxx".}
proc NbControlPointsListJ*(this: StepGeom_BSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbControlPointsListJ",
    header: "StepGeom_BSplineSurface.hxx".}
proc SetSurfaceForm*(this: var StepGeom_BSplineSurface;
                    aSurfaceForm: StepGeom_BSplineSurfaceForm) {.
    importcpp: "SetSurfaceForm", header: "StepGeom_BSplineSurface.hxx".}
proc SurfaceForm*(this: StepGeom_BSplineSurface): StepGeom_BSplineSurfaceForm {.
    noSideEffect, importcpp: "SurfaceForm", header: "StepGeom_BSplineSurface.hxx".}
proc SetUClosed*(this: var StepGeom_BSplineSurface; aUClosed: StepData_Logical) {.
    importcpp: "SetUClosed", header: "StepGeom_BSplineSurface.hxx".}
proc UClosed*(this: StepGeom_BSplineSurface): StepData_Logical {.noSideEffect,
    importcpp: "UClosed", header: "StepGeom_BSplineSurface.hxx".}
proc SetVClosed*(this: var StepGeom_BSplineSurface; aVClosed: StepData_Logical) {.
    importcpp: "SetVClosed", header: "StepGeom_BSplineSurface.hxx".}
proc VClosed*(this: StepGeom_BSplineSurface): StepData_Logical {.noSideEffect,
    importcpp: "VClosed", header: "StepGeom_BSplineSurface.hxx".}
proc SetSelfIntersect*(this: var StepGeom_BSplineSurface;
                      aSelfIntersect: StepData_Logical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_BSplineSurface.hxx".}
proc SelfIntersect*(this: StepGeom_BSplineSurface): StepData_Logical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_BSplineSurface.hxx".}
type
  StepGeom_BSplineSurfacebase_type* = StepGeom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineSurface::get_type_name(@)",
                              header: "StepGeom_BSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_BSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurface.hxx".}
proc DynamicType*(this: StepGeom_BSplineSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineSurface.hxx".}