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
discard "forward decl of StepGeom_OffsetSurface"
discard "forward decl of StepGeom_OffsetSurface"
type
  HandleC1C1* = Handle[StepGeomOffsetSurface]
  StepGeomOffsetSurface* {.importcpp: "StepGeom_OffsetSurface",
                          header: "StepGeom_OffsetSurface.hxx", bycopy.} = object of StepGeomSurface ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## OffsetSurface


proc constructStepGeomOffsetSurface*(): StepGeomOffsetSurface {.constructor,
    importcpp: "StepGeom_OffsetSurface(@)", header: "StepGeom_OffsetSurface.hxx".}
proc init*(this: var StepGeomOffsetSurface; aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface]; aDistance: StandardReal;
          aSelfIntersect: StepDataLogical) {.importcpp: "Init",
    header: "StepGeom_OffsetSurface.hxx".}
proc setBasisSurface*(this: var StepGeomOffsetSurface;
                     aBasisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_OffsetSurface.hxx".}
proc basisSurface*(this: StepGeomOffsetSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "StepGeom_OffsetSurface.hxx".}
proc setDistance*(this: var StepGeomOffsetSurface; aDistance: StandardReal) {.
    importcpp: "SetDistance", header: "StepGeom_OffsetSurface.hxx".}
proc distance*(this: StepGeomOffsetSurface): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "StepGeom_OffsetSurface.hxx".}
proc setSelfIntersect*(this: var StepGeomOffsetSurface;
                      aSelfIntersect: StepDataLogical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_OffsetSurface.hxx".}
proc selfIntersect*(this: StepGeomOffsetSurface): StepDataLogical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_OffsetSurface.hxx".}
type
  StepGeomOffsetSurfacebaseType* = StepGeomSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_OffsetSurface::get_type_name(@)",
                            header: "StepGeom_OffsetSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_OffsetSurface::get_type_descriptor(@)",
    header: "StepGeom_OffsetSurface.hxx".}
proc dynamicType*(this: StepGeomOffsetSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_OffsetSurface.hxx".}