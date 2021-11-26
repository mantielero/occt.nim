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

discard "forward decl of StepGeom_QuasiUniformCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_QuasiUniformCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_QuasiUniformCurveAndRationalBSplineCurve"
type
  HandleC1C1* = Handle[StepGeomQuasiUniformCurveAndRationalBSplineCurve]
  StepGeomQuasiUniformCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve",
      header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## QuasiUniformCurveAndRationalBSplineCurve


proc constructStepGeomQuasiUniformCurveAndRationalBSplineCurve*(): StepGeomQuasiUniformCurveAndRationalBSplineCurve {.
    constructor,
    importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomQuasiUniformCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aQuasiUniformCurve: Handle[StepGeomQuasiUniformCurve];
          aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "Init",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomQuasiUniformCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc setQuasiUniformCurve*(this: var StepGeomQuasiUniformCurveAndRationalBSplineCurve;
                          aQuasiUniformCurve: Handle[StepGeomQuasiUniformCurve]) {.
    importcpp: "SetQuasiUniformCurve",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc quasiUniformCurve*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve): Handle[
    StepGeomQuasiUniformCurve] {.noSideEffect, importcpp: "QuasiUniformCurve", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc setRationalBSplineCurve*(this: var StepGeomQuasiUniformCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc rationalBSplineCurve*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve): Handle[
    StepGeomRationalBSplineCurve] {.noSideEffect,
                                   importcpp: "RationalBSplineCurve", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc setWeightsData*(this: var StepGeomQuasiUniformCurveAndRationalBSplineCurve;
                    aWeightsData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc weightsData*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc weightsDataValue*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve;
                      num: int): StandardReal {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc nbWeightsData*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
type
  StepGeomQuasiUniformCurveAndRationalBSplineCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc dynamicType*(this: StepGeomQuasiUniformCurveAndRationalBSplineCurve): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}