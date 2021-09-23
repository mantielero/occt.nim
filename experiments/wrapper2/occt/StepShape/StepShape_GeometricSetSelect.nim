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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Point"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_Surface"
type
  StepShape_GeometricSetSelect* {.importcpp: "StepShape_GeometricSetSelect",
                                 header: "StepShape_GeometricSetSelect.hxx",
                                 bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                     ## GeometricSetSelect SelectType


proc constructStepShape_GeometricSetSelect*(): StepShape_GeometricSetSelect {.
    constructor, importcpp: "StepShape_GeometricSetSelect(@)",
    header: "StepShape_GeometricSetSelect.hxx".}
proc CaseNum*(this: StepShape_GeometricSetSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_GeometricSetSelect.hxx".}
proc Point*(this: StepShape_GeometricSetSelect): handle[StepGeom_Point] {.
    noSideEffect, importcpp: "Point", header: "StepShape_GeometricSetSelect.hxx".}
proc Curve*(this: StepShape_GeometricSetSelect): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "Curve", header: "StepShape_GeometricSetSelect.hxx".}
proc Surface*(this: StepShape_GeometricSetSelect): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "StepShape_GeometricSetSelect.hxx".}