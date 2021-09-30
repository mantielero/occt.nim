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
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
type
  HandleC1C1* = Handle[StepGeomRationalBSplineCurve]
  StepGeomRationalBSplineCurve* {.importcpp: "StepGeom_RationalBSplineCurve",
                                 header: "StepGeom_RationalBSplineCurve.hxx",
                                 bycopy.} = object of StepGeomBSplineCurve ## ! Returns a
                                                                      ## RationalBSplineCurve


proc constructStepGeomRationalBSplineCurve*(): StepGeomRationalBSplineCurve {.
    constructor, importcpp: "StepGeom_RationalBSplineCurve(@)",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc init*(this: var StepGeomRationalBSplineCurve;
          aName: Handle[TCollectionHAsciiString]; aDegree: cint;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aWeightsData: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc setWeightsData*(this: var StepGeomRationalBSplineCurve;
                    aWeightsData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetWeightsData", header: "StepGeom_RationalBSplineCurve.hxx".}
proc weightsData*(this: StepGeomRationalBSplineCurve): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "WeightsData",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc weightsDataValue*(this: StepGeomRationalBSplineCurve; num: cint): cfloat {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc nbWeightsData*(this: StepGeomRationalBSplineCurve): cint {.noSideEffect,
    importcpp: "NbWeightsData", header: "StepGeom_RationalBSplineCurve.hxx".}
type
  StepGeomRationalBSplineCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_RationalBSplineCurve::get_type_name(@)",
                            header: "StepGeom_RationalBSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_RationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc dynamicType*(this: StepGeomRationalBSplineCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RationalBSplineCurve.hxx".}

























