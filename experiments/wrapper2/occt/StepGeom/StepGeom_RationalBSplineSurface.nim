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
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of StepGeom_RationalBSplineSurface"
type
  HandleStepGeomRationalBSplineSurface* = Handle[StepGeomRationalBSplineSurface]
  StepGeomRationalBSplineSurface* {.importcpp: "StepGeom_RationalBSplineSurface", header: "StepGeom_RationalBSplineSurface.hxx",
                                   bycopy.} = object of StepGeomBSplineSurface ## !
                                                                          ## Returns a
                                                                          ## RationalBSplineSurface


proc constructStepGeomRationalBSplineSurface*(): StepGeomRationalBSplineSurface {.
    constructor, importcpp: "StepGeom_RationalBSplineSurface(@)",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc init*(this: var StepGeomRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: int; aVDegree: int;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc setWeightsData*(this: var StepGeomRationalBSplineSurface;
                    aWeightsData: Handle[TColStdHArray2OfReal]) {.
    importcpp: "SetWeightsData", header: "StepGeom_RationalBSplineSurface.hxx".}
proc weightsData*(this: StepGeomRationalBSplineSurface): Handle[
    TColStdHArray2OfReal] {.noSideEffect, importcpp: "WeightsData",
                           header: "StepGeom_RationalBSplineSurface.hxx".}
proc weightsDataValue*(this: StepGeomRationalBSplineSurface; num1: int; num2: int): float {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc nbWeightsDataI*(this: StepGeomRationalBSplineSurface): int {.noSideEffect,
    importcpp: "NbWeightsDataI", header: "StepGeom_RationalBSplineSurface.hxx".}
proc nbWeightsDataJ*(this: StepGeomRationalBSplineSurface): int {.noSideEffect,
    importcpp: "NbWeightsDataJ", header: "StepGeom_RationalBSplineSurface.hxx".}
type
  StepGeomRationalBSplineSurfacebaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_RationalBSplineSurface::get_type_name(@)",
                            header: "StepGeom_RationalBSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_RationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_RationalBSplineSurface.hxx".}
proc dynamicType*(this: StepGeomRationalBSplineSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RationalBSplineSurface.hxx".}
