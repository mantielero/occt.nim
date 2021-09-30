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

discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface"
discard "forward decl of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface"
type
  HandleC1C1* = Handle[StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface]
  StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface* {.
      importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface",
      header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx",
      bycopy.} = object of StepGeomBSplineSurface ## ! Returns a
                                             ## BSplineSurfaceWithKnotsAndRationalBSplineSurface


proc constructStepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface*(): StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface {.
    constructor,
    importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface(@)",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aBSplineSurfaceWithKnots: Handle[StepGeomBSplineSurfaceWithKnots];
          aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "Init",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc init*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
          aName: Handle[TCollectionHAsciiString]; aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aUMultiplicities: Handle[TColStdHArray1OfInteger];
          aVMultiplicities: Handle[TColStdHArray1OfInteger];
          aUKnots: Handle[TColStdHArray1OfReal];
          aVKnots: Handle[TColStdHArray1OfReal]; aKnotSpec: StepGeomKnotType;
          aWeightsData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setBSplineSurfaceWithKnots*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
    aBSplineSurfaceWithKnots: Handle[StepGeomBSplineSurfaceWithKnots]) {.
    importcpp: "SetBSplineSurfaceWithKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc bSplineSurfaceWithKnots*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    StepGeomBSplineSurfaceWithKnots] {.noSideEffect,
                                      importcpp: "BSplineSurfaceWithKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setRationalBSplineSurface*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
    aRationalBSplineSurface: Handle[StepGeomRationalBSplineSurface]) {.
    importcpp: "SetRationalBSplineSurface",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc rationalBSplineSurface*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    StepGeomRationalBSplineSurface] {.noSideEffect,
                                     importcpp: "RationalBSplineSurface", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setUMultiplicities*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                        aUMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc uMultiplicities*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc uMultiplicitiesValue*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                          num: cint): cint {.noSideEffect,
    importcpp: "UMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbUMultiplicities*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setVMultiplicities*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                        aVMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc vMultiplicities*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc vMultiplicitiesValue*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                          num: cint): cint {.noSideEffect,
    importcpp: "VMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbVMultiplicities*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setUKnots*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
               aUKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetUKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc uKnots*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "UKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc uKnotsValue*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 num: cint): cfloat {.noSideEffect, importcpp: "UKnotsValue", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbUKnots*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbUKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setVKnots*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
               aVKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetVKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc vKnots*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "VKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc vKnotsValue*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 num: cint): cfloat {.noSideEffect, importcpp: "VKnotsValue", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbVKnots*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbVKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setKnotSpec*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 aKnotSpec: StepGeomKnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc knotSpec*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): StepGeomKnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc setWeightsData*(this: var StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                    aWeightsData: Handle[TColStdHArray2OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc weightsData*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    TColStdHArray2OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc weightsDataValue*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                      num1: cint; num2: cint): cfloat {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbWeightsDataI*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc nbWeightsDataJ*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): cint {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
type
  StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurfacebaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface::get_type_name(@)", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc dynamicType*(this: StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}

























