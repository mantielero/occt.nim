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

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_RectangularTrimmedSurface"
discard "forward decl of StepGeom_RectangularTrimmedSurface"
type
  HandleC1C1* = Handle[StepGeomRectangularTrimmedSurface]
  StepGeomRectangularTrimmedSurface* {.importcpp: "StepGeom_RectangularTrimmedSurface", header: "StepGeom_RectangularTrimmedSurface.hxx",
                                      bycopy.} = object of StepGeomBoundedSurface ## !
                                                                             ## Returns a
                                                                             ## RectangularTrimmedSurface


proc constructStepGeomRectangularTrimmedSurface*(): StepGeomRectangularTrimmedSurface {.
    constructor, importcpp: "StepGeom_RectangularTrimmedSurface(@)",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc init*(this: var StepGeomRectangularTrimmedSurface;
          aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface]; aU1: StandardReal;
          aU2: StandardReal; aV1: StandardReal; aV2: StandardReal;
          aUsense: StandardBoolean; aVsense: StandardBoolean) {.importcpp: "Init",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setBasisSurface*(this: var StepGeomRectangularTrimmedSurface;
                     aBasisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc basisSurface*(this: StepGeomRectangularTrimmedSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setU1*(this: var StepGeomRectangularTrimmedSurface; aU1: StandardReal) {.
    importcpp: "SetU1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc u1*(this: StepGeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "U1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setU2*(this: var StepGeomRectangularTrimmedSurface; aU2: StandardReal) {.
    importcpp: "SetU2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc u2*(this: StepGeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "U2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setV1*(this: var StepGeomRectangularTrimmedSurface; aV1: StandardReal) {.
    importcpp: "SetV1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc v1*(this: StepGeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "V1", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setV2*(this: var StepGeomRectangularTrimmedSurface; aV2: StandardReal) {.
    importcpp: "SetV2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc v2*(this: StepGeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "V2", header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setUsense*(this: var StepGeomRectangularTrimmedSurface;
               aUsense: StandardBoolean) {.importcpp: "SetUsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc usense*(this: StepGeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "Usense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc setVsense*(this: var StepGeomRectangularTrimmedSurface;
               aVsense: StandardBoolean) {.importcpp: "SetVsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc vsense*(this: StepGeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "Vsense",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
type
  StepGeomRectangularTrimmedSurfacebaseType* = StepGeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_RectangularTrimmedSurface::get_type_name(@)",
                            header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_RectangularTrimmedSurface::get_type_descriptor(@)",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}
proc dynamicType*(this: StepGeomRectangularTrimmedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RectangularTrimmedSurface.hxx".}