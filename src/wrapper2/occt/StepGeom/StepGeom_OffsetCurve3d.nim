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
  ../StepData/StepData_Logical, StepGeom_Curve

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_OffsetCurve3d"
discard "forward decl of StepGeom_OffsetCurve3d"
type
  Handle_StepGeom_OffsetCurve3d* = handle[StepGeom_OffsetCurve3d]
  StepGeom_OffsetCurve3d* {.importcpp: "StepGeom_OffsetCurve3d",
                           header: "StepGeom_OffsetCurve3d.hxx", bycopy.} = object of StepGeom_Curve ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## OffsetCurve3d


proc constructStepGeom_OffsetCurve3d*(): StepGeom_OffsetCurve3d {.constructor,
    importcpp: "StepGeom_OffsetCurve3d(@)", header: "StepGeom_OffsetCurve3d.hxx".}
proc Init*(this: var StepGeom_OffsetCurve3d;
          aName: handle[TCollection_HAsciiString];
          aBasisCurve: handle[StepGeom_Curve]; aDistance: Standard_Real;
          aSelfIntersect: StepData_Logical;
          aRefDirection: handle[StepGeom_Direction]) {.importcpp: "Init",
    header: "StepGeom_OffsetCurve3d.hxx".}
proc SetBasisCurve*(this: var StepGeom_OffsetCurve3d;
                   aBasisCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_OffsetCurve3d.hxx".}
proc BasisCurve*(this: StepGeom_OffsetCurve3d): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "BasisCurve", header: "StepGeom_OffsetCurve3d.hxx".}
proc SetDistance*(this: var StepGeom_OffsetCurve3d; aDistance: Standard_Real) {.
    importcpp: "SetDistance", header: "StepGeom_OffsetCurve3d.hxx".}
proc Distance*(this: StepGeom_OffsetCurve3d): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "StepGeom_OffsetCurve3d.hxx".}
proc SetSelfIntersect*(this: var StepGeom_OffsetCurve3d;
                      aSelfIntersect: StepData_Logical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_OffsetCurve3d.hxx".}
proc SelfIntersect*(this: StepGeom_OffsetCurve3d): StepData_Logical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_OffsetCurve3d.hxx".}
proc SetRefDirection*(this: var StepGeom_OffsetCurve3d;
                     aRefDirection: handle[StepGeom_Direction]) {.
    importcpp: "SetRefDirection", header: "StepGeom_OffsetCurve3d.hxx".}
proc RefDirection*(this: StepGeom_OffsetCurve3d): handle[StepGeom_Direction] {.
    noSideEffect, importcpp: "RefDirection", header: "StepGeom_OffsetCurve3d.hxx".}
type
  StepGeom_OffsetCurve3dbase_type* = StepGeom_Curve

proc get_type_name*(): cstring {.importcpp: "StepGeom_OffsetCurve3d::get_type_name(@)",
                              header: "StepGeom_OffsetCurve3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_OffsetCurve3d::get_type_descriptor(@)",
    header: "StepGeom_OffsetCurve3d.hxx".}
proc DynamicType*(this: StepGeom_OffsetCurve3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_OffsetCurve3d.hxx".}