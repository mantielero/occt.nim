##  Created on: 1996-03-12
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Integer, ../TColGeom/TColGeom_Array1OfBezierCurve,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BezierCurve"
type
  GeomConvert_BSplineCurveToBezierCurve* {.
      importcpp: "GeomConvert_BSplineCurveToBezierCurve",
      header: "GeomConvert_BSplineCurveToBezierCurve.hxx", bycopy.} = object ## ! Computes all the data needed to convert the
                                                                        ## ! BSpline curve
                                                                        ## BasisCurve into a series of adjacent Bezier arcs.


proc constructGeomConvert_BSplineCurveToBezierCurve*(
    BasisCurve: handle[Geom_BSplineCurve]): GeomConvert_BSplineCurveToBezierCurve {.
    constructor, importcpp: "GeomConvert_BSplineCurveToBezierCurve(@)",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeomConvert_BSplineCurveToBezierCurve*(
    BasisCurve: handle[Geom_BSplineCurve]; U1: Standard_Real; U2: Standard_Real;
    ParametricTolerance: Standard_Real): GeomConvert_BSplineCurveToBezierCurve {.
    constructor, importcpp: "GeomConvert_BSplineCurveToBezierCurve(@)",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc Arc*(this: var GeomConvert_BSplineCurveToBezierCurve; Index: Standard_Integer): handle[
    Geom_BezierCurve] {.importcpp: "Arc",
                       header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc Arcs*(this: var GeomConvert_BSplineCurveToBezierCurve;
          Curves: var TColGeom_Array1OfBezierCurve) {.importcpp: "Arcs",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc Knots*(this: GeomConvert_BSplineCurveToBezierCurve;
           TKnots: var TColStd_Array1OfReal) {.noSideEffect, importcpp: "Knots",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc NbArcs*(this: GeomConvert_BSplineCurveToBezierCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbArcs",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}