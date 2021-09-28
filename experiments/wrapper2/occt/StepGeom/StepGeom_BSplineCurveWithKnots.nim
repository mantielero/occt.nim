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
discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StepGeom_BSplineCurveWithKnots"
type
  HandleC1C1* = Handle[StepGeomBSplineCurveWithKnots]
  StepGeomBSplineCurveWithKnots* {.importcpp: "StepGeom_BSplineCurveWithKnots",
                                  header: "StepGeom_BSplineCurveWithKnots.hxx",
                                  bycopy.} = object of StepGeomBSplineCurve ## ! Returns a
                                                                       ## BSplineCurveWithKnots


proc constructStepGeomBSplineCurveWithKnots*(): StepGeomBSplineCurveWithKnots {.
    constructor, importcpp: "StepGeom_BSplineCurveWithKnots(@)",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc init*(this: var StepGeomBSplineCurveWithKnots;
          aName: Handle[TCollectionHAsciiString]; aDegree: cint;
          aControlPointsList: Handle[StepGeomHArray1OfCartesianPoint];
          aCurveForm: StepGeomBSplineCurveForm; aClosedCurve: StepDataLogical;
          aSelfIntersect: StepDataLogical;
          aKnotMultiplicities: Handle[TColStdHArray1OfInteger];
          aKnots: Handle[TColStdHArray1OfReal]; aKnotSpec: StepGeomKnotType) {.
    importcpp: "Init", header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc setKnotMultiplicities*(this: var StepGeomBSplineCurveWithKnots;
                           aKnotMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc knotMultiplicities*(this: StepGeomBSplineCurveWithKnots): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "KnotMultiplicities",
                              header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc knotMultiplicitiesValue*(this: StepGeomBSplineCurveWithKnots; num: cint): cint {.
    noSideEffect, importcpp: "KnotMultiplicitiesValue",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc nbKnotMultiplicities*(this: StepGeomBSplineCurveWithKnots): cint {.
    noSideEffect, importcpp: "NbKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc setKnots*(this: var StepGeomBSplineCurveWithKnots;
              aKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetKnots",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc knots*(this: StepGeomBSplineCurveWithKnots): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Knots", header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc knotsValue*(this: StepGeomBSplineCurveWithKnots; num: cint): cfloat {.
    noSideEffect, importcpp: "KnotsValue",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc nbKnots*(this: StepGeomBSplineCurveWithKnots): cint {.noSideEffect,
    importcpp: "NbKnots", header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc setKnotSpec*(this: var StepGeomBSplineCurveWithKnots;
                 aKnotSpec: StepGeomKnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc knotSpec*(this: StepGeomBSplineCurveWithKnots): StepGeomKnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
type
  StepGeomBSplineCurveWithKnotsbaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineCurveWithKnots::get_type_name(@)",
                            header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_BSplineCurveWithKnots::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc dynamicType*(this: StepGeomBSplineCurveWithKnots): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}

























