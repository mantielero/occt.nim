##  Created on: 1993-03-24
##  Created by: DUB
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TColGeom2d/TColGeom2d_Array1OfBezierCurve,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_BezierCurve"
type
  Geom2dConvert_BSplineCurveToBezierCurve* {.
      importcpp: "Geom2dConvert_BSplineCurveToBezierCurve",
      header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx", bycopy.} = object ## !
                                                                          ## Computes all the data needed to
                                                                          ## convert
                                                                          ## ! -   the
                                                                          ## BSpline curve
                                                                          ## BasisCurve, into a series of
                                                                          ## adjacent Bezier arcs.
                                                                          ## ! The result
                                                                          ## consists of a series of
                                                                          ## BasisCurve arcs
                                                                          ## !
                                                                          ## limited by points
                                                                          ## corresponding to knot values of the curve.
                                                                          ## ! Use the
                                                                          ## available
                                                                          ## interrogation
                                                                          ## functions to
                                                                          ## ascertain
                                                                          ## ! the number of
                                                                          ## computed Bezier arcs, and then to
                                                                          ## !
                                                                          ## construct each
                                                                          ## individual Bezier curve (or all Bezier
                                                                          ## curves).
                                                                          ## ! Note:
                                                                          ## ParametricTolerance is not used.


proc constructGeom2dConvert_BSplineCurveToBezierCurve*(
    BasisCurve: handle[Geom2d_BSplineCurve]): Geom2dConvert_BSplineCurveToBezierCurve {.
    constructor, importcpp: "Geom2dConvert_BSplineCurveToBezierCurve(@)",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeom2dConvert_BSplineCurveToBezierCurve*(
    BasisCurve: handle[Geom2d_BSplineCurve]; U1: Standard_Real; U2: Standard_Real;
    ParametricTolerance: Standard_Real): Geom2dConvert_BSplineCurveToBezierCurve {.
    constructor, importcpp: "Geom2dConvert_BSplineCurveToBezierCurve(@)",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc Arc*(this: var Geom2dConvert_BSplineCurveToBezierCurve; Index: Standard_Integer): handle[
    Geom2d_BezierCurve] {.importcpp: "Arc",
                         header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc Arcs*(this: var Geom2dConvert_BSplineCurveToBezierCurve;
          Curves: var TColGeom2d_Array1OfBezierCurve) {.importcpp: "Arcs",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc Knots*(this: Geom2dConvert_BSplineCurveToBezierCurve;
           TKnots: var TColStd_Array1OfReal) {.noSideEffect, importcpp: "Knots",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc NbArcs*(this: Geom2dConvert_BSplineCurveToBezierCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbArcs",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}