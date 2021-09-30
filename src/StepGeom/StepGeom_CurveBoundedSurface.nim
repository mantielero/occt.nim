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

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepGeom_CurveBoundedSurface"
type
  HandleC1C1* = Handle[StepGeomCurveBoundedSurface]

## ! Representation of STEP entity CurveBoundedSurface

type
  StepGeomCurveBoundedSurface* {.importcpp: "StepGeom_CurveBoundedSurface",
                                header: "StepGeom_CurveBoundedSurface.hxx", bycopy.} = object of StepGeomBoundedSurface ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepGeomCurveBoundedSurface*(): StepGeomCurveBoundedSurface {.
    constructor, importcpp: "StepGeom_CurveBoundedSurface(@)",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc init*(this: var StepGeomCurveBoundedSurface;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface];
          aBoundaries: Handle[StepGeomHArray1OfSurfaceBoundary];
          aImplicitOuter: bool) {.importcpp: "Init",
                                header: "StepGeom_CurveBoundedSurface.hxx".}
proc basisSurface*(this: StepGeomCurveBoundedSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc setBasisSurface*(this: var StepGeomCurveBoundedSurface;
                     basisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_CurveBoundedSurface.hxx".}
proc boundaries*(this: StepGeomCurveBoundedSurface): Handle[
    StepGeomHArray1OfSurfaceBoundary] {.noSideEffect, importcpp: "Boundaries", header: "StepGeom_CurveBoundedSurface.hxx".}
proc setBoundaries*(this: var StepGeomCurveBoundedSurface;
                   boundaries: Handle[StepGeomHArray1OfSurfaceBoundary]) {.
    importcpp: "SetBoundaries", header: "StepGeom_CurveBoundedSurface.hxx".}
proc implicitOuter*(this: StepGeomCurveBoundedSurface): bool {.noSideEffect,
    importcpp: "ImplicitOuter", header: "StepGeom_CurveBoundedSurface.hxx".}
proc setImplicitOuter*(this: var StepGeomCurveBoundedSurface; implicitOuter: bool) {.
    importcpp: "SetImplicitOuter", header: "StepGeom_CurveBoundedSurface.hxx".}
type
  StepGeomCurveBoundedSurfacebaseType* = StepGeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_CurveBoundedSurface::get_type_name(@)",
                            header: "StepGeom_CurveBoundedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CurveBoundedSurface::get_type_descriptor(@)",
    header: "StepGeom_CurveBoundedSurface.hxx".}
proc dynamicType*(this: StepGeomCurveBoundedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_CurveBoundedSurface.hxx".}

























