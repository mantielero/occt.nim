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

discard "forward decl of StepGeom_QuasiUniformSurface"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface"
discard "forward decl of StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface"
type
  HandleC1C1* = Handle[StepGeomQuasiUniformSurfaceAndRationalBSplineSurface]
  StepGeomQuasiUniformSurfaceAndRationalBSplineSurface* {.
      importcpp: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface",
      header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx", bycopy.} = object of StepGeomBSplineSurface ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## QuasiUniformSurfaceAndRationalBSplineSurface


proc constructStepGeomQuasiUniformSurfaceAndRationalBSplineSurface*(): StepGeomQuasiUniformSurfaceAndRationalBSplineSurface {.
    constructor,
    importcpp: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface(@)",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aQuasiUniformSurface: Handle[StepGeomQuasiUniformSurface];
          aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "Init",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc setQuasiUniformSurface*(this: var StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
    aQuasiUniformSurface: Handle[StepGeomQuasiUniformSurface]) {.
    importcpp: "SetQuasiUniformSurface",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc quasiUniformSurface*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): Handle[
    StepGeomQuasiUniformSurface] {.noSideEffect, importcpp: "QuasiUniformSurface", header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc setRationalBSplineSurface*(this: var StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
    aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "SetRationalBSplineSurface",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc rationalBSplineSurface*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): Handle[
    StepGeomRationalBSplineSurface] {.noSideEffect,
                                     importcpp: "RationalBSplineSurface", header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc setWeightsData*(this: var StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
                    aWeightsData: Handle[TColStdHArray2OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc weightsData*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): Handle[
    TColStdHArray2OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc weightsDataValue*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface;
                      num1: cint; num2: cint): cfloat {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataI*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc nbWeightsDataJ*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
type
  StepGeomQuasiUniformSurfaceAndRationalBSplineSurfacebaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface::get_type_name(@)", header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}
proc dynamicType*(this: StepGeomQuasiUniformSurfaceAndRationalBSplineSurface): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx".}

























