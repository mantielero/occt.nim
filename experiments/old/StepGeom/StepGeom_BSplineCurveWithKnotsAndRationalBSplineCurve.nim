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

discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve"
discard "forward decl of StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve"
type
  HandleC1C1* = Handle[StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve]
  StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve* {.
      importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve",
      header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## BSplineCurveWithKnotsAndRationalBSplineCurve


proc constructStepGeomBSplineCurveWithKnotsAndRationalBSplineCurve*(): StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve {.
    constructor,
    importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve(@)",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aBSplineCurveWithKnots: Handle[StepGeomBSplineCurveWithKnots];
          aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "Init",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aKnotMultiplicities: Handle[TColStdHArray1OfInteger];
          aKnots: Handle[TColStdHArray1OfReal]; aKnotSpec: StepGeomKnotType;
          aWeightsData: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setBSplineCurveWithKnots*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
    aBSplineCurveWithKnots: Handle[StepGeomBSplineCurveWithKnots]) {.
    importcpp: "SetBSplineCurveWithKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc bSplineCurveWithKnots*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    StepGeomBSplineCurveWithKnots] {.noSideEffect,
                                    importcpp: "BSplineCurveWithKnots", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setRationalBSplineCurve*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
    aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc rationalBSplineCurve*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    StepGeomRationalBSplineCurve] {.noSideEffect,
                                   importcpp: "RationalBSplineCurve", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setKnotMultiplicities*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                           aKnotMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc knotMultiplicities*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "KnotMultiplicities", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc knotMultiplicitiesValue*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                             num: int): int {.noSideEffect,
    importcpp: "KnotMultiplicitiesValue",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc nbKnotMultiplicities*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setKnots*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
              aKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc knots*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "Knots", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc knotsValue*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                num: int): StandardReal {.noSideEffect, importcpp: "KnotsValue", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc nbKnots*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setKnotSpec*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                 aKnotSpec: StepGeomKnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc knotSpec*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): StepGeomKnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc setWeightsData*(this: var StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                    aWeightsData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc weightsData*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc weightsDataValue*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve;
                      num: int): StandardReal {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc nbWeightsData*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
type
  StepGeomBSplineCurveWithKnotsAndRationalBSplineCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc dynamicType*(this: StepGeomBSplineCurveWithKnotsAndRationalBSplineCurve): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}