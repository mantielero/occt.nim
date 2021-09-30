##  Created on: 1993-11-09
##  Created by: Modelistation
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
type
  ConvertCompBezierCurves2dToBSplineCurve2d* {.
      importcpp: "Convert_CompBezierCurves2dToBSplineCurve2d",
      header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx", bycopy.} = object ## !
                                                                             ## Constructs a
                                                                             ## framework for
                                                                             ## converting a
                                                                             ## sequence of
                                                                             ## !
                                                                             ## adjacent
                                                                             ## non-rational
                                                                             ## Bezier
                                                                             ## curves
                                                                             ## into a
                                                                             ## BSpline
                                                                             ## curve.
                                                                             ## !
                                                                             ## Knots
                                                                             ## will be
                                                                             ## created on the
                                                                             ## computed
                                                                             ## BSpline
                                                                             ## curve at
                                                                             ## !
                                                                             ## each
                                                                             ## junction
                                                                             ## point of two
                                                                             ## consecutive
                                                                             ## Bezier
                                                                             ## curves. The
                                                                             ## !
                                                                             ## degree of
                                                                             ## continuity of the
                                                                             ## BSpline
                                                                             ## curve
                                                                             ## will be
                                                                             ## increased at
                                                                             ## ! the
                                                                             ## junction
                                                                             ## point of two
                                                                             ## consecutive
                                                                             ## Bezier
                                                                             ## curves if
                                                                             ## their
                                                                             ## !
                                                                             ## tangent
                                                                             ## vectors at
                                                                             ## this
                                                                             ## point are
                                                                             ## parallel.
                                                                             ## AngularTolerance
                                                                             ## !
                                                                             ## (given in
                                                                             ## radians, and
                                                                             ## defaulted to 1.0
                                                                             ## e-4)
                                                                             ## will be
                                                                             ## used
                                                                             ## ! to
                                                                             ## check the
                                                                             ## parallelism of the two
                                                                             ## tangent
                                                                             ## vectors.
                                                                             ## ! Use the
                                                                             ## following
                                                                             ## functions:
                                                                             ## ! -
                                                                             ## AddCurve to
                                                                             ## define in
                                                                             ## sequence the
                                                                             ## adjacent
                                                                             ## Bezier
                                                                             ## !
                                                                             ## curves to be
                                                                             ## converted,
                                                                             ## ! -
                                                                             ## Perform to
                                                                             ## compute the
                                                                             ## data
                                                                             ## needed to
                                                                             ## build the
                                                                             ## BSpline
                                                                             ## curve,
                                                                             ## ! -   and the
                                                                             ## available
                                                                             ## consultation
                                                                             ## functions to
                                                                             ## access the
                                                                             ## !
                                                                             ## computed
                                                                             ## data.
                                                                             ## This
                                                                             ## data may be
                                                                             ## used to
                                                                             ## construct the
                                                                             ## BSpline
                                                                             ## curve.


proc constructConvertCompBezierCurves2dToBSplineCurve2d*(
    angularTolerance: cfloat = 1.0e-4): ConvertCompBezierCurves2dToBSplineCurve2d {.
    constructor, importcpp: "Convert_CompBezierCurves2dToBSplineCurve2d(@)",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc addCurve*(this: var ConvertCompBezierCurves2dToBSplineCurve2d;
              poles: TColgpArray1OfPnt2d) {.importcpp: "AddCurve",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc perform*(this: var ConvertCompBezierCurves2dToBSplineCurve2d) {.
    importcpp: "Perform", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc degree*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    importcpp: "Degree", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc nbPoles*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    importcpp: "NbPoles", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc poles*(this: ConvertCompBezierCurves2dToBSplineCurve2d;
           poles: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Poles",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc nbKnots*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    importcpp: "NbKnots", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc knotsAndMults*(this: ConvertCompBezierCurves2dToBSplineCurve2d;
                   knots: var TColStdArray1OfReal;
                   mults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "KnotsAndMults",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}

























