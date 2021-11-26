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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_BezierCurve"
type
  Geom2dConvertBSplineCurveToBezierCurve* {.
      importcpp: "Geom2dConvert_BSplineCurveToBezierCurve",
      header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx", bycopy.} = object


proc `new`*(this: var Geom2dConvertBSplineCurveToBezierCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator new",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete`*(this: var Geom2dConvertBSplineCurveToBezierCurve; theAddress: pointer) {.
    importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator delete",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc `new[]`*(this: var Geom2dConvertBSplineCurveToBezierCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator new[]",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete[]`*(this: var Geom2dConvertBSplineCurveToBezierCurve;
                theAddress: pointer) {.importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator delete[]", header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc `new`*(this: var Geom2dConvertBSplineCurveToBezierCurve; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator new", header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete`*(this: var Geom2dConvertBSplineCurveToBezierCurve; a2: pointer;
              a3: pointer) {.importcpp: "Geom2dConvert_BSplineCurveToBezierCurve::operator delete", header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeom2dConvertBSplineCurveToBezierCurve*(
    basisCurve: Handle[Geom2dBSplineCurve]): Geom2dConvertBSplineCurveToBezierCurve {.
    constructor, importcpp: "Geom2dConvert_BSplineCurveToBezierCurve(@)",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeom2dConvertBSplineCurveToBezierCurve*(
    basisCurve: Handle[Geom2dBSplineCurve]; u1: StandardReal; u2: StandardReal;
    parametricTolerance: StandardReal): Geom2dConvertBSplineCurveToBezierCurve {.
    constructor, importcpp: "Geom2dConvert_BSplineCurveToBezierCurve(@)",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc arc*(this: var Geom2dConvertBSplineCurveToBezierCurve; index: int): Handle[
    Geom2dBezierCurve] {.importcpp: "Arc",
                        header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc arcs*(this: var Geom2dConvertBSplineCurveToBezierCurve;
          curves: var TColGeom2dArray1OfBezierCurve) {.importcpp: "Arcs",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc knots*(this: Geom2dConvertBSplineCurveToBezierCurve;
           tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "Knots",
    header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}
proc nbArcs*(this: Geom2dConvertBSplineCurveToBezierCurve): int {.noSideEffect,
    importcpp: "NbArcs", header: "Geom2dConvert_BSplineCurveToBezierCurve.hxx".}