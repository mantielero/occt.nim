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
  GeomConvert* {.importcpp: "GeomConvert", header: "GeomConvert.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Convert
                                                                                ## a
                                                                                ## curve
                                                                                ## from
                                                                                ## Geom
                                                                                ## by
                                                                                ## an
                                                                                ## approximation
                                                                                ## method
                                                                                ##
                                                                                ## !
                                                                                ##
                                                                                ## !
                                                                                ## This
                                                                                ## method
                                                                                ## computes
                                                                                ## the
                                                                                ## arc
                                                                                ## of
                                                                                ## B-spline
                                                                                ## curve
                                                                                ## between
                                                                                ## the
                                                                                ## two
                                                                                ##
                                                                                ## !
                                                                                ## knots
                                                                                ## FromK1
                                                                                ## and
                                                                                ## ToK2.
                                                                                ## If
                                                                                ## C
                                                                                ## is
                                                                                ## periodic
                                                                                ## the
                                                                                ## arc
                                                                                ## has
                                                                                ## the
                                                                                ## same
                                                                                ##
                                                                                ## !
                                                                                ## orientation
                                                                                ## as
                                                                                ## C
                                                                                ## if
                                                                                ## SameOrientation
                                                                                ## =
                                                                                ## Standard_True.
                                                                                ##
                                                                                ## !
                                                                                ## If
                                                                                ## C
                                                                                ## is
                                                                                ## not
                                                                                ## periodic
                                                                                ## SameOrientation
                                                                                ## is
                                                                                ## not
                                                                                ## used
                                                                                ## for
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## computation
                                                                                ## and
                                                                                ## C
                                                                                ## is
                                                                                ## oriented
                                                                                ## from
                                                                                ## the
                                                                                ## knot
                                                                                ## fromK1
                                                                                ## to
                                                                                ## the
                                                                                ## knot
                                                                                ## toK2.
                                                                                ##
                                                                                ## !
                                                                                ## We
                                                                                ## just
                                                                                ## keep
                                                                                ## the
                                                                                ## local
                                                                                ## definition
                                                                                ## of
                                                                                ## C
                                                                                ## between
                                                                                ## the
                                                                                ## knots
                                                                                ##
                                                                                ## !
                                                                                ## FromK1
                                                                                ## and
                                                                                ## ToK2.
                                                                                ## The
                                                                                ## returned
                                                                                ## B-spline
                                                                                ## curve
                                                                                ## has
                                                                                ## its
                                                                                ## first
                                                                                ##
                                                                                ## !
                                                                                ## and
                                                                                ## last
                                                                                ## knots
                                                                                ## with
                                                                                ## a
                                                                                ## multiplicity
                                                                                ## equal
                                                                                ## to
                                                                                ## degree
                                                                                ## +
                                                                                ## 1,
                                                                                ## where
                                                                                ##
                                                                                ## !
                                                                                ## degree
                                                                                ## is
                                                                                ## the
                                                                                ## polynomial
                                                                                ## degree
                                                                                ## of
                                                                                ## C.
                                                                                ##
                                                                                ## !
                                                                                ## The
                                                                                ## indexes
                                                                                ## of
                                                                                ## the
                                                                                ## knots
                                                                                ## FromK1
                                                                                ## and
                                                                                ## ToK2
                                                                                ## doesn't
                                                                                ## include
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## repetition
                                                                                ## of
                                                                                ## multiple
                                                                                ## knots
                                                                                ## in
                                                                                ## their
                                                                                ## definition.
                                                                                ##
                                                                                ## !
                                                                                ## Raised
                                                                                ## if
                                                                                ## FromK1
                                                                                ## =
                                                                                ## ToK2
                                                                                ##
                                                                                ## !
                                                                                ## Raised
                                                                                ## if
                                                                                ## FromK1
                                                                                ## or
                                                                                ## ToK2
                                                                                ## are
                                                                                ## out
                                                                                ## of
                                                                                ## the
                                                                                ## bounds
                                                                                ##
                                                                                ## !
                                                                                ## [FirstUKnotIndex,
                                                                                ## LastUKnotIndex]


proc splitBSplineCurve*(c: Handle[GeomBSplineCurve]; fromK1: int; toK2: int;
                       sameOrientation: bool = true): Handle[GeomBSplineCurve] {.
    importcpp: "GeomConvert::SplitBSplineCurve(@)", header: "GeomConvert.hxx".}
proc splitBSplineCurve*(c: Handle[GeomBSplineCurve]; fromU1: float; toU2: float;
                       parametricTolerance: float; sameOrientation: bool = true): Handle[
    GeomBSplineCurve] {.importcpp: "GeomConvert::SplitBSplineCurve(@)",
                       header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromUK1: int; toUK2: int;
                         fromVK1: int; toVK2: int; sameUOrientation: bool = true;
                         sameVOrientation: bool = true): Handle[GeomBSplineSurface] {.
    importcpp: "GeomConvert::SplitBSplineSurface(@)", header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromK1: int; toK2: int;
                         uSplit: bool; sameOrientation: bool = true): Handle[
    GeomBSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                         header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromU1: float; toU2: float;
                         fromV1: float; toV2: float; parametricTolerance: float;
                         sameUOrientation: bool = true;
                         sameVOrientation: bool = true): Handle[GeomBSplineSurface] {.
    importcpp: "GeomConvert::SplitBSplineSurface(@)", header: "GeomConvert.hxx".}
proc splitBSplineSurface*(s: Handle[GeomBSplineSurface]; fromParam1: float;
                         toParam2: float; uSplit: bool; parametricTolerance: float;
                         sameOrientation: bool = true): Handle[GeomBSplineSurface] {.
    importcpp: "GeomConvert::SplitBSplineSurface(@)", header: "GeomConvert.hxx".}
proc curveToBSplineCurve*(c: Handle[GeomCurve]; parameterisation: ConvertParameterisationType = convertTgtThetaOver2): Handle[
    GeomBSplineCurve] {.importcpp: "GeomConvert::CurveToBSplineCurve(@)",
                       header: "GeomConvert.hxx".}
proc surfaceToBSplineSurface*(s: Handle[GeomSurface]): Handle[GeomBSplineSurface] {.
    importcpp: "GeomConvert::SurfaceToBSplineSurface(@)",
    header: "GeomConvert.hxx".}
proc concatG1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var bool; closedTolerance: float) {.
    importcpp: "GeomConvert::ConcatG1(@)", header: "GeomConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var bool; closedTolerance: float) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc concatC1*(arrayOfCurves: var TColGeomArray1OfBSplineCurve;
              arrayOfToler: TColStdArray1OfReal;
              arrayOfIndices: var Handle[TColStdHArray1OfInteger];
              arrayOfConcatenated: var Handle[TColGeomHArray1OfBSplineCurve];
              closedFlag: var bool; closedTolerance: float; angularTolerance: float) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc c0BSplineToC1BSplineCurve*(bs: var Handle[GeomBSplineCurve]; tolerance: float;
                               angularTolerance: float = 1.0e-7) {.
    importcpp: "GeomConvert::C0BSplineToC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[GeomBSplineCurve]; tabBS: var Handle[
    TColGeomHArray1OfBSplineCurve]; tolerance: float) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc c0BSplineToArrayOfC1BSplineCurve*(bs: Handle[GeomBSplineCurve]; tabBS: var Handle[
    TColGeomHArray1OfBSplineCurve]; angularTolerance: float; tolerance: float) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
