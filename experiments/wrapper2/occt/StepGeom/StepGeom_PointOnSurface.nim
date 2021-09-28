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
discard "forward decl of StepGeom_PointOnSurface"
discard "forward decl of StepGeom_PointOnSurface"
type
  HandleC1C1* = Handle[StepGeomPointOnSurface]
  StepGeomPointOnSurface* {.importcpp: "StepGeom_PointOnSurface",
                           header: "StepGeom_PointOnSurface.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## PointOnSurface


proc constructStepGeomPointOnSurface*(): StepGeomPointOnSurface {.constructor,
    importcpp: "StepGeom_PointOnSurface(@)", header: "StepGeom_PointOnSurface.hxx".}
proc init*(this: var StepGeomPointOnSurface; aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface]; aPointParameterU: cfloat;
          aPointParameterV: cfloat) {.importcpp: "Init",
                                    header: "StepGeom_PointOnSurface.hxx".}
proc setBasisSurface*(this: var StepGeomPointOnSurface;
                     aBasisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_PointOnSurface.hxx".}
proc basisSurface*(this: StepGeomPointOnSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "StepGeom_PointOnSurface.hxx".}
proc setPointParameterU*(this: var StepGeomPointOnSurface; aPointParameterU: cfloat) {.
    importcpp: "SetPointParameterU", header: "StepGeom_PointOnSurface.hxx".}
proc pointParameterU*(this: StepGeomPointOnSurface): cfloat {.noSideEffect,
    importcpp: "PointParameterU", header: "StepGeom_PointOnSurface.hxx".}
proc setPointParameterV*(this: var StepGeomPointOnSurface; aPointParameterV: cfloat) {.
    importcpp: "SetPointParameterV", header: "StepGeom_PointOnSurface.hxx".}
proc pointParameterV*(this: StepGeomPointOnSurface): cfloat {.noSideEffect,
    importcpp: "PointParameterV", header: "StepGeom_PointOnSurface.hxx".}
type
  StepGeomPointOnSurfacebaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepGeom_PointOnSurface::get_type_name(@)",
                            header: "StepGeom_PointOnSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_PointOnSurface::get_type_descriptor(@)",
    header: "StepGeom_PointOnSurface.hxx".}
proc dynamicType*(this: StepGeomPointOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_PointOnSurface.hxx".}

























