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

discard "forward decl of StepGeom_BezierSurface"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BezierSurfaceAndRationalBSplineSurface"
discard "forward decl of StepGeom_BezierSurfaceAndRationalBSplineSurface"
type
  HandleStepGeomBezierSurfaceAndRationalBSplineSurface* = Handle[
      StepGeomBezierSurfaceAndRationalBSplineSurface]
  StepGeomBezierSurfaceAndRationalBSplineSurface* {.
      importcpp: "StepGeom_BezierSurfaceAndRationalBSplineSurface",
      header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx", bycopy.} = object of StepGeomBSplineSurface ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## BezierSurfaceAndRationalBSplineSurface


proc constructStepGeomBezierSurfaceAndRationalBSplineSurface*(): StepGeomBezierSurfaceAndRationalBSplineSurface {.
    constructor, importcpp: "StepGeom_BezierSurfaceAndRationalBSplineSurface(@)",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomBezierSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: int; aVDegree: int;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aBezierSurface: Handle[StepGeomBezierSurface];
          aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "Init",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomBezierSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: int; aVDegree: int;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc setBezierSurface*(this: var StepGeomBezierSurfaceAndRationalBSplineSurface;
                      aBezierSurface: Handle[StepGeomBezierSurface]) {.
    importcpp: "SetBezierSurface",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc bezierSurface*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): Handle[
    StepGeomBezierSurface] {.noSideEffect, importcpp: "BezierSurface", header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc setRationalBSplineSurface*(this: var StepGeomBezierSurfaceAndRationalBSplineSurface;
    aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "SetRationalBSplineSurface",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc rationalBSplineSurface*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): Handle[
    StepGeomRationalBSplineSurface] {.noSideEffect,
                                     importcpp: "RationalBSplineSurface", header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc setWeightsData*(this: var StepGeomBezierSurfaceAndRationalBSplineSurface;
                    aWeightsData: Handle[TColStdHArray2OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc weightsData*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): Handle[
    TColStdHArray2OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc weightsDataValue*(this: StepGeomBezierSurfaceAndRationalBSplineSurface;
                      num1: int; num2: int): float {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataI*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): int {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataJ*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): int {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
type
  StepGeomBezierSurfaceAndRationalBSplineSurfacebaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_BezierSurfaceAndRationalBSplineSurface::get_type_name(@)", header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_BezierSurfaceAndRationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
proc dynamicType*(this: StepGeomBezierSurfaceAndRationalBSplineSurface): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx".}
