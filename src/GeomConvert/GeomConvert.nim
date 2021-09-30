##  Created on: 1991-10-03
##  Created by: JeanClaude VAUTHIER
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomConvert_BSplineCurveKnotSplitting"
discard "forward decl of GeomConvert_BSplineSurfaceKnotSplitting"
discard "forward decl of GeomConvert_BSplineCurveToBezierCurve"
discard "forward decl of GeomConvert_CompCurveToBSplineCurve"
discard "forward decl of GeomConvert_BSplineSurfaceToBezierSurface"
discard "forward decl of GeomConvert_CompBezierSurfacesToBSplineSurface"
discard "forward decl of GeomConvert_ApproxSurface"
discard "forward decl of GeomConvert_ApproxCurve"
type
  GeomConvert* {.importcpp: "GeomConvert", header: "GeomConvert.hxx", bycopy.} = object


proc `new`*(this: var GeomConvert; theSize: csize_t): pointer {.
    importcpp: "GeomConvert::operator new", header: "GeomConvert.hxx".}
proc `delete`*(this: var GeomConvert; theAddress: pointer) {.
    importcpp: "GeomConvert::operator delete", header: "GeomConvert.hxx".}
proc `new[]`*(this: var GeomConvert; theSize: csize_t): pointer {.
    importcpp: "GeomConvert::operator new[]", header: "GeomConvert.hxx".}
proc `delete[]`*(this: var GeomConvert; theAddress: pointer) {.
    importcpp: "GeomConvert::operator delete[]", header: "GeomConvert.hxx".}
proc `new`*(this: var GeomConvert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomConvert::operator new", header: "GeomConvert.hxx".}
proc `delete`*(this: var GeomConvert; a2: pointer; a3: pointer) {.
    importcpp: "GeomConvert::operator delete", header: "GeomConvert.hxx".}
proc splitBSplineCurve*(c: Handle[GeomBSplineCurve]; fromK1: int; toK2: int;
                       sameOrientation: StandardBoolean = true): Handle[
    GeomBSplineCurve] {.importcpp: "GeomConvert::SplitBSplineCurve(@)",
                       header: "GeomConvert.hxx".}
proc splitBSplineCurve*(c: Handle[GeomBSplineCurve]; fromU1: StandardReal;
                       toU2: StandardReal; parametricTolerance: StandardReal;
                       sameOrientation: StandardBoolean = true): Handle[
    GeomBSplineCurve] {.importcpp: "GeomConvert::SplitBSplineCurve(@)",
                       header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromUK1: int; toUK2: int;
                         fromVK1: int; toVK2: int;
                         sameUOrientation: StandardBoolean = true;
                         sameVOrientation: StandardBoolean = true): Handle[
    GeomBSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                         header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromK1: int; toK2: int;
                         uSplit: StandardBoolean;
                         sameOrientation: StandardBoolean = true): Handle[
    GeomBSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                         header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromU1: StandardReal;
                         toU2: StandardReal; fromV1: StandardReal;
                         toV2: StandardReal; parametricTolerance: StandardReal;
                         sameUOrientation: StandardBoolean = true;
                         sameVOrientation: StandardBoolean = true): Handle[
    GeomBSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                         header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromParam1: StandardReal;
                         toParam2: StandardReal; uSplit: StandardBoolean;
                         parametricTolerance: StandardReal;
                         sameOrientation: StandardBoolean = true): Handle[
    GeomBSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                         header: "GeomConvert.hxx".}
proc curveToBSplineCurve*(c: Handle[GeomCurve]; parameterisation: ConvertParameterisationType = convertTgtThetaOver2): Handle[
    GeomBSplineCurve] {.importcpp: "GeomConvert::CurveToBSplineCurve(@)",
                       header: "GeomConvert.hxx".}
proc surfaceToBSplineSurface*(s: Handle[GeomSurface]): Handle[GeomBSplineSurface] {.
    importcpp: "GeomConvert::SurfaceToBSplineSurface(@)",
    header: "GeomConvert.hxx".}
proc concatG1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal) {.
    importcpp: "GeomConvert::ConcatG1(@)", header: "GeomConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var StandardBoolean; closedTolerance: StandardReal;
              angularTolerance: StandardReal) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc c0BSplineToC1BSplineCurve*(bs: var Handle[GeomBSplineCurve];
                               tolerance: StandardReal;
                               angularTolerance: StandardReal = 1.0e-7) {.
    importcpp: "GeomConvert::C0BSplineToC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[GeomBSplineCurve]; tabBS: var Handle[
    TColGeomHArray1OfBSplineCurve]; tolerance: StandardReal) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[GeomBSplineCurve]; tabBS: var Handle[
    TColGeomHArray1OfBSplineCurve]; angularTolerance: StandardReal;
                                      tolerance: StandardReal) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}