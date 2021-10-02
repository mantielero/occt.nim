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

discard "forward decl of StepGeom_BezierCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BezierCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_BezierCurveAndRationalBSplineCurve"
type
  HandleC1C1* = Handle[StepGeomBezierCurveAndRationalBSplineCurve]
  StepGeomBezierCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve",
      header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## BezierCurveAndRationalBSplineCurve


proc constructStepGeomBezierCurveAndRationalBSplineCurve*(): StepGeomBezierCurveAndRationalBSplineCurve {.
    constructor, importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomBezierCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aBezierCurve: Handle[StepGeomBezierCurve];
          aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "Init", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomBezierCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc setBezierCurve*(this: var StepGeomBezierCurveAndRationalBSplineCurve;
                    aBezierCurve: Handle[StepGeomBezierCurve]) {.
    importcpp: "SetBezierCurve",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc bezierCurve*(this: StepGeomBezierCurveAndRationalBSplineCurve): Handle[
    StepGeomBezierCurve] {.noSideEffect, importcpp: "BezierCurve", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc setRationalBSplineCurve*(this: var StepGeomBezierCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc rationalBSplineCurve*(this: StepGeomBezierCurveAndRationalBSplineCurve): Handle[
    StepGeomRationalBSplineCurve] {.noSideEffect,
                                   importcpp: "RationalBSplineCurve", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc setWeightsData*(this: var StepGeomBezierCurveAndRationalBSplineCurve;
                    aWeightsData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc weightsData*(this: StepGeomBezierCurveAndRationalBSplineCurve): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc weightsDataValue*(this: StepGeomBezierCurveAndRationalBSplineCurve; num: int): StandardReal {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc nbWeightsData*(this: StepGeomBezierCurveAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
type
  StepGeomBezierCurveAndRationalBSplineCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc dynamicType*(this: StepGeomBezierCurveAndRationalBSplineCurve): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}