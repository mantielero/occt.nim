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

discard "forward decl of StepGeom_UniformCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_UniformCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_UniformCurveAndRationalBSplineCurve"
type
  HandleStepGeomUniformCurveAndRationalBSplineCurve* = Handle[
      StepGeomUniformCurveAndRationalBSplineCurve]
  StepGeomUniformCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve",
      header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## UniformCurveAndRationalBSplineCurve


proc constructStepGeomUniformCurveAndRationalBSplineCurve*(): StepGeomUniformCurveAndRationalBSplineCurve {.
    constructor, importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomUniformCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aUniformCurve: Handle[StepGeomUniformCurve];
          aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "Init", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc init*(this: var StepGeomUniformCurveAndRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: int;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc setUniformCurve*(this: var StepGeomUniformCurveAndRationalBSplineCurve;
                     aUniformCurve: Handle[StepGeomUniformCurve]) {.
    importcpp: "SetUniformCurve",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc uniformCurve*(this: StepGeomUniformCurveAndRationalBSplineCurve): Handle[
    StepGeomUniformCurve] {.noSideEffect, importcpp: "UniformCurve", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc setRationalBSplineCurve*(this: var StepGeomUniformCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: Handle[StepGeomRationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc rationalBSplineCurve*(this: StepGeomUniformCurveAndRationalBSplineCurve): Handle[
    StepGeomRationalBSplineCurve] {.noSideEffect,
                                   importcpp: "RationalBSplineCurve", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc setWeightsData*(this: var StepGeomUniformCurveAndRationalBSplineCurve;
                    aWeightsData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc weightsData*(this: StepGeomUniformCurveAndRationalBSplineCurve): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc weightsDataValue*(this: StepGeomUniformCurveAndRationalBSplineCurve; num: int): float {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc nbWeightsData*(this: StepGeomUniformCurveAndRationalBSplineCurve): int {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
type
  StepGeomUniformCurveAndRationalBSplineCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc dynamicType*(this: StepGeomUniformCurveAndRationalBSplineCurve): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
