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

discard "forward decl of StepGeom_UniformSurface"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_UniformSurfaceAndRationalBSplineSurface"
discard "forward decl of StepGeom_UniformSurfaceAndRationalBSplineSurface"
type
  HandleC1C1* = Handle[StepGeomUniformSurfaceAndRationalBSplineSurface]
  StepGeomUniformSurfaceAndRationalBSplineSurface* {.
      importcpp: "StepGeom_UniformSurfaceAndRationalBSplineSurface",
      header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx", bycopy.} = object of StepGeomBSplineSurface ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## UniformSurfaceAndRationalBSplineSurface


proc constructStepGeomUniformSurfaceAndRationalBSplineSurface*(): StepGeomUniformSurfaceAndRationalBSplineSurface {.
    constructor,
    importcpp: "StepGeom_UniformSurfaceAndRationalBSplineSurface(@)",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomUniformSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aUniformSurface: Handle[StepGeomUniformSurface];
          aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "Init",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomUniformSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc setUniformSurface*(this: var StepGeomUniformSurfaceAndRationalBSplineSurface;
                       aUniformSurface: Handle[StepGeomUniformSurface]) {.
    importcpp: "SetUniformSurface",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc uniformSurface*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): Handle[
    StepGeomUniformSurface] {.noSideEffect, importcpp: "UniformSurface", header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc setRationalBSplineSurface*(this: var StepGeomUniformSurfaceAndRationalBSplineSurface;
    aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "SetRationalBSplineSurface",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc rationalBSplineSurface*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): Handle[
    StepGeomRationalBSplineSurface] {.noSideEffect,
                                     importcpp: "RationalBSplineSurface", header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc setWeightsData*(this: var StepGeomUniformSurfaceAndRationalBSplineSurface;
                    aWeightsData: Handle[TColStdHArray2OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc weightsData*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): Handle[
    TColStdHArray2OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc weightsDataValue*(this: StepGeomUniformSurfaceAndRationalBSplineSurface;
                      num1: cint; num2: cint): cfloat {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataI*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataJ*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
type
  StepGeomUniformSurfaceAndRationalBSplineSurfacebaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_UniformSurfaceAndRationalBSplineSurface::get_type_name(@)", header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_UniformSurfaceAndRationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}
proc dynamicType*(this: StepGeomUniformSurfaceAndRationalBSplineSurface): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx".}

























