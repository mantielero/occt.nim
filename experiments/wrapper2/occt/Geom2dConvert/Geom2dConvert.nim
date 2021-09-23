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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Convert/Convert_ParameterisationType,
  ../TColGeom2d/TColGeom2d_Array1OfBSplineCurve, ../TColStd/TColStd_Array1OfReal,
  ../TColGeom2d/TColGeom2d_HArray1OfBSplineCurve,
  ../TColStd/TColStd_HArray1OfInteger

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2dConvert_BSplineCurveKnotSplitting"
discard "forward decl of Geom2dConvert_BSplineCurveToBezierCurve"
discard "forward decl of Geom2dConvert_CompCurveToBSplineCurve"
discard "forward decl of Geom2dConvert_ApproxCurve"
type
  Geom2dConvert* {.importcpp: "Geom2dConvert", header: "Geom2dConvert.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## --
                                                                                      ## Convert
                                                                                      ## a
                                                                                      ## curve
                                                                                      ## to
                                                                                      ## BSpline
                                                                                      ## by
                                                                                      ## Approximation
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
                                                                                      ##
                                                                                      ## !
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
                                                                                      ##
                                                                                      ## !
                                                                                      ## Raised
                                                                                      ## if
                                                                                      ## FromK1
                                                                                      ## =
                                                                                      ## ToK2


proc SplitBSplineCurve*(C: handle[Geom2d_BSplineCurve]; FromK1: Standard_Integer;
                       ToK2: Standard_Integer;
                       SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom2d_BSplineCurve] {.importcpp: "Geom2dConvert::SplitBSplineCurve(@)",
                          header: "Geom2dConvert.hxx".}
proc SplitBSplineCurve*(C: handle[Geom2d_BSplineCurve]; FromU1: Standard_Real;
                       ToU2: Standard_Real; ParametricTolerance: Standard_Real;
                       SameOrientation: Standard_Boolean = Standard_True): handle[
    Geom2d_BSplineCurve] {.importcpp: "Geom2dConvert::SplitBSplineCurve(@)",
                          header: "Geom2dConvert.hxx".}
proc CurveToBSplineCurve*(C: handle[Geom2d_Curve]; Parameterisation: Convert_ParameterisationType = Convert_TgtThetaOver2): handle[
    Geom2d_BSplineCurve] {.importcpp: "Geom2dConvert::CurveToBSplineCurve(@)",
                          header: "Geom2dConvert.hxx".}
proc ConcatG1*(ArrayOfCurves: var TColGeom2d_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal; ArrayOfConcatenated: var handle[
    TColGeom2d_HArray1OfBSplineCurve]; ClosedFlag: var Standard_Boolean;
              ClosedTolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::ConcatG1(@)", header: "Geom2dConvert.hxx".}
proc ConcatC1*(ArrayOfCurves: var TColGeom2d_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal;
              ArrayOfIndices: var handle[TColStd_HArray1OfInteger];
    ArrayOfConcatenated: var handle[TColGeom2d_HArray1OfBSplineCurve];
              ClosedFlag: var Standard_Boolean; ClosedTolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::ConcatC1(@)", header: "Geom2dConvert.hxx".}
proc ConcatC1*(ArrayOfCurves: var TColGeom2d_Array1OfBSplineCurve;
              ArrayOfToler: TColStd_Array1OfReal;
              ArrayOfIndices: var handle[TColStd_HArray1OfInteger];
    ArrayOfConcatenated: var handle[TColGeom2d_HArray1OfBSplineCurve];
              ClosedFlag: var Standard_Boolean; ClosedTolerance: Standard_Real;
              AngularTolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::ConcatC1(@)", header: "Geom2dConvert.hxx".}
proc C0BSplineToC1BSplineCurve*(BS: var handle[Geom2d_BSplineCurve];
                               Tolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::C0BSplineToC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}
proc C0BSplineToArrayOfC1BSplineCurve*(BS: handle[Geom2d_BSplineCurve]; tabBS: var handle[
    TColGeom2d_HArray1OfBSplineCurve]; Tolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}
proc C0BSplineToArrayOfC1BSplineCurve*(BS: handle[Geom2d_BSplineCurve]; tabBS: var handle[
    TColGeom2d_HArray1OfBSplineCurve]; AngularTolerance: Standard_Real;
                                      Tolerance: Standard_Real) {.
    importcpp: "Geom2dConvert::C0BSplineToArrayOfC1BSplineCurve(@)",
    header: "Geom2dConvert.hxx".}