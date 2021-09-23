##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepGeom_HArray1OfSurfaceBoundary, ../Standard/Standard_Boolean,
  StepGeom_BoundedSurface

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepGeom_CurveBoundedSurface"
type
  Handle_StepGeom_CurveBoundedSurface* = handle[StepGeom_CurveBoundedSurface]

## ! Representation of STEP entity CurveBoundedSurface

type
  StepGeom_CurveBoundedSurface* {.importcpp: "StepGeom_CurveBoundedSurface",
                                 header: "StepGeom_CurveBoundedSurface.hxx",
                                 bycopy.} = object of StepGeom_BoundedSurface ## ! Empty
                                                                         ## constructor


proc constructStepGeom_CurveBoundedSurface*(): StepGeom_CurveBoundedSurface {.
    constructor, importcpp: "StepGeom_CurveBoundedSurface(@)",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc Init*(this: var StepGeom_CurveBoundedSurface;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface];
          aBoundaries: handle[StepGeom_HArray1OfSurfaceBoundary];
          aImplicitOuter: Standard_Boolean) {.importcpp: "Init",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc BasisSurface*(this: StepGeom_CurveBoundedSurface): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc SetBasisSurface*(this: var StepGeom_CurveBoundedSurface;
                     BasisSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_CurveBoundedSurface.hxx".}
proc Boundaries*(this: StepGeom_CurveBoundedSurface): handle[
    StepGeom_HArray1OfSurfaceBoundary] {.noSideEffect, importcpp: "Boundaries", header: "StepGeom_CurveBoundedSurface.hxx".}
proc SetBoundaries*(this: var StepGeom_CurveBoundedSurface;
                   Boundaries: handle[StepGeom_HArray1OfSurfaceBoundary]) {.
    importcpp: "SetBoundaries", header: "StepGeom_CurveBoundedSurface.hxx".}
proc ImplicitOuter*(this: StepGeom_CurveBoundedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "ImplicitOuter",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc SetImplicitOuter*(this: var StepGeom_CurveBoundedSurface;
                      ImplicitOuter: Standard_Boolean) {.
    importcpp: "SetImplicitOuter", header: "StepGeom_CurveBoundedSurface.hxx".}
type
  StepGeom_CurveBoundedSurfacebase_type* = StepGeom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_CurveBoundedSurface::get_type_name(@)",
                              header: "StepGeom_CurveBoundedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_CurveBoundedSurface::get_type_descriptor(@)",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc DynamicType*(this: StepGeom_CurveBoundedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_CurveBoundedSurface.hxx".}