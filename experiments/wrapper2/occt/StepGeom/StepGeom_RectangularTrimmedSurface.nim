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
  ../Standard/Standard_Boolean, StepGeom_BoundedSurface

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_RectangularTrimmedSurface"
discard "forward decl of StepGeom_RectangularTrimmedSurface"
type
  Handle_StepGeom_RectangularTrimmedSurface* = handle[
      StepGeom_RectangularTrimmedSurface]
  StepGeom_RectangularTrimmedSurface* {.importcpp: "StepGeom_RectangularTrimmedSurface", header: "StepGeom_RectangularTrimmedSurface.hxx",
                                       bycopy.} = object of StepGeom_BoundedSurface ## !
                                                                               ## Returns a
                                                                               ## RectangularTrimmedSurface


proc constructStepGeom_RectangularTrimmedSurface*(): StepGeom_RectangularTrimmedSurface {.
    constructor, importcpp: "StepGeom_RectangularTrimmedSurface(@)",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc Init*(this: var StepGeom_RectangularTrimmedSurface;
          aName: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface]; aU1: Standard_Real;
          aU2: Standard_Real; aV1: Standard_Real; aV2: Standard_Real;
          aUsense: Standard_Boolean; aVsense: Standard_Boolean) {.importcpp: "Init",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetBasisSurface*(this: var StepGeom_RectangularTrimmedSurface;
                     aBasisSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc BasisSurface*(this: StepGeom_RectangularTrimmedSurface): handle[
    StepGeom_Surface] {.noSideEffect, importcpp: "BasisSurface",
                       header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetU1*(this: var StepGeom_RectangularTrimmedSurface; aU1: Standard_Real) {.
    importcpp: "SetU1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc U1*(this: StepGeom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "U1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetU2*(this: var StepGeom_RectangularTrimmedSurface; aU2: Standard_Real) {.
    importcpp: "SetU2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc U2*(this: StepGeom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "U2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetV1*(this: var StepGeom_RectangularTrimmedSurface; aV1: Standard_Real) {.
    importcpp: "SetV1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc V1*(this: StepGeom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "V1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetV2*(this: var StepGeom_RectangularTrimmedSurface; aV2: Standard_Real) {.
    importcpp: "SetV2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc V2*(this: StepGeom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "V2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetUsense*(this: var StepGeom_RectangularTrimmedSurface;
               aUsense: Standard_Boolean) {.importcpp: "SetUsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc Usense*(this: StepGeom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "Usense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc SetVsense*(this: var StepGeom_RectangularTrimmedSurface;
               aVsense: Standard_Boolean) {.importcpp: "SetVsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc Vsense*(this: StepGeom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "Vsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
type
  StepGeom_RectangularTrimmedSurfacebase_type* = StepGeom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_RectangularTrimmedSurface::get_type_name(@)",
                              header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_RectangularTrimmedSurface::get_type_descriptor(@)",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc DynamicType*(this: StepGeom_RectangularTrimmedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}