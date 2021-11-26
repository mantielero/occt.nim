##  Created on: 1991-10-03
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2dConvert_BSplineCurveKnotSplitting"
discard "forward decl of Geom2dConvert_BSplineCurveToBezierCurve"
discard "forward decl of Geom2dConvert_CompCurveToBSplineCurve"
discard "forward decl of Geom2dConvert_ApproxCurve"
type
  Geom2dConvert* {.importcpp: "Geom2dConvert", header: "Geom2dConvert.hxx", bycopy.} = object


proc `new`*(this: var Geom2dConvert; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert::operator new", header: "Geom2dConvert.hxx".}
proc `delete`*(this: var Geom2dConvert; theAddress: pointer) {.
    importcpp: "Geom2dConvert::operator delete", header: "Geom2dConvert.hxx".}
proc `new[]`*(this: var Geom2dConvert; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert::operator new[]", header: "Geom2dConvert.hxx".}
proc `delete[]`*(this: var Geom2dConvert; theAddress: pointer) {.
    importcpp: "Geom2dConvert::operator delete[]", header: "Geom2dConvert.hxx".}
proc `new`*(this: var Geom2dConvert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dConvert::operator new", header: "Geom2dConvert.hxx".}
proc `delete`*(this: var Geom2dConvert; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dConvert::operator delete", header: "Geom2dConvert.hxx".}
proc splitBSplineCurve*(c: Handle[Geom2dBSplineCurve]; fromK1: int; toK2: int;
                       sameOrientation: StandardBoolean = true): Handle[
    Geom2dBSplineCurve] {.importcpp: "Geom2dConvert::SplitBSplineCurve(@)",
                         header: "Geom2dConvert.hxx".}
proc splitBSplineCurve*(c: Handle[Geom2dBSplineCurve]; fromU1: StandardReal;
                       toU2: StandardReal; parametricTolerance: StandardReal;
                       sameOrientation: StandardBoolean = true): Handle[
    Geom2dBSplineCurve] {.importcpp: "Geom2dConvert::SplitBSplineCurve(@)",
                         header: "Geom2dConvert.hxx".}
proc curveToBSplineCurve*(c: Handle[Geom2dCurve]; parameterisation: ConvertParameterisationType = convertTgtThetaOver2): Handle[
    Geom2dBSplineCurve] {.importcpp: "Geom2dConvert::CurveToBSplineCurve(@)",
                         header: "Geom2dConvert.hxx".}
proc concatG1*(arrayOfCurves: var TColGeom2dArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfConcatenated: var Handle[TColGeom2dHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal) {.
    importcpp: "Geom2dConvert::ConcatG1(@)", header: "Geom2dConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeom2dArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeom2dHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal) {.
    importcpp: "Geom2dConvert::ConcatC1(@)", header: "Geom2dConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeom2dArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeom2dHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal;
              angularTolerance: StandardReal) {.
    importcpp: "Geom2dConvert::ConcatC1(@)", header: "Geom2dConvert.hxx".}
proc c0BSplineToC1BSplineCurve*(bs: var Handle[Geom2dBSplineCurve];
                               tolerance: StandardReal) {.
    importcpp: "Geom2dConvert::C0BSplineToC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[Geom2dBSplineCurve]; tabBS: var Handle[
    TColGeom2dHArray1OfBSplineCurve]; tolerance: StandardReal) {.
    importcpp: "Geom2dConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[Geom2dBSplineCurve]; tabBS: var Handle[
    TColGeom2dHArray1OfBSplineCurve]; angularTolerance: StandardReal;
                                      tolerance: StandardReal) {.
    importcpp: "Geom2dConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}