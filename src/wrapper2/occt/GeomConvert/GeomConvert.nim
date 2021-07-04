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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Convert/Convert_ParameterisationType,
  ../TColGeom/TColGeom_Array1OfBSplineCurve, ../TColStd/TColStd_Array1OfReal,
  ../TColGeom/TColGeom_HArray1OfBSplineCurve, ../TColStd/TColStd_HArray1OfInteger

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


proc SplitBSplineCurve*(C: handle[Geom_BSplineCurve]; FromK1: Standard_Integer;
                       ToK2: Standard_Integer;
                       SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineCurve] {.importcpp: "GeomConvert::SplitBSplineCurve(@)",
                        header: "GeomConvert.hxx".}
proc SplitBSplineCurve*(C: handle[Geom_BSplineCurve]; FromU1: Standard_Real;
                       ToU2: Standard_Real; ParametricTolerance: Standard_Real;
                       SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineCurve] {.importcpp: "GeomConvert::SplitBSplineCurve(@)",
                        header: "GeomConvert.hxx".}
proc SplitBSplineSurface*(S: handle[Geom_BSplineSurface];
                         FromUK1: Standard_Integer; ToUK2: Standard_Integer;
                         FromVK1: Standard_Integer; ToVK2: Standard_Integer;
                         SameUOrientation: Standard_Boolean = Standard_True;
                         SameVOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                          header: "GeomConvert.hxx".}
proc SplitBSplineSurface*(S: handle[Geom_BSplineSurface]; FromK1: Standard_Integer;
                         ToK2: Standard_Integer; USplit: Standard_Boolean;
                         SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                          header: "GeomConvert.hxx".}
proc SplitBSplineSurface*(S: handle[Geom_BSplineSurface]; FromU1: Standard_Real;
                         ToU2: Standard_Real; FromV1: Standard_Real;
                         ToV2: Standard_Real; ParametricTolerance: Standard_Real;
                         SameUOrientation: Standard_Boolean = Standard_True;
                         SameVOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                          header: "GeomConvert.hxx".}
proc SplitBSplineSurface*(S: handle[Geom_BSplineSurface];
                         FromParam1: Standard_Real; ToParam2: Standard_Real;
                         USplit: Standard_Boolean;
                         ParametricTolerance: Standard_Real;
                         SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom_BSplineSurface] {.importcpp: "GeomConvert::SplitBSplineSurface(@)",
                          header: "GeomConvert.hxx".}
proc CurveToBSplineCurve*(C: handle[Geom_Curve]; Parameterisation: Convert_ParameterisationType = Convert_TgtThetaOver2): handle[
    Geom_BSplineCurve] {.importcpp: "GeomConvert::CurveToBSplineCurve(@)",
                        header: "GeomConvert.hxx".}
proc SurfaceToBSplineSurface*(S: handle[Geom_Surface]): handle[Geom_BSplineSurface] {.
    importcpp: "GeomConvert::SurfaceToBSplineSurface(@)",
    header: "GeomConvert.hxx".}
proc ConcatG1*(ArrayOfCurves: var TColGeom_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal;
              ArrayOfConcatenated: var handle[TColGeom_HArray1OfBSplineCurve];
              ClosedFlag: var Standard_Boolean; ClosedTolerance: Standard_Real) {.
    importcpp: "GeomConvert::ConcatG1(@)", header: "GeomConvert.hxx".}
proc ConcatC1*(ArrayOfCurves: var TColGeom_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal;
              ArrayOfIndices: var handle[TColStd_HArray1OfInteger];
              ArrayOfConcatenated: var handle[TColGeom_HArray1OfBSplineCurve];
              ClosedFlag: var Standard_Boolean; ClosedTolerance: Standard_Real) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc ConcatC1*(ArrayOfCurves: var TColGeom_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal;
              ArrayOfIndices: var handle[TColStd_HArray1OfInteger];
              ArrayOfConcatenated: var handle[TColGeom_HArray1OfBSplineCurve];
              ClosedFlag: var Standard_Boolean; ClosedTolerance: Standard_Real;
              AngularTolerance: Standard_Real) {.
    importcpp: "GeomConvert::ConcatC1(@)", header: "GeomConvert.hxx".}
proc C0BSplineToC1BSplineCurve*(BS: var handle[Geom_BSplineCurve];
                               tolerance: Standard_Real;
                               AngularTolerance: Standard_Real = 1.0e-7) {.
    importcpp: "GeomConvert::C0BSplineToC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc C0BSplineToArrayOfC1BSplineCurve*(BS: handle[Geom_BSplineCurve]; tabBS: var handle[
    TColGeom_HArray1OfBSplineCurve]; tolerance: Standard_Real) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}
proc C0BSplineToArrayOfC1BSplineCurve*(BS: handle[Geom_BSplineCurve]; tabBS: var handle[
    TColGeom_HArray1OfBSplineCurve]; AngularTolerance: Standard_Real;
                                      tolerance: Standard_Real) {.
    importcpp: "GeomConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "GeomConvert.hxx".}