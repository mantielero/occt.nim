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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BezierCurve"
type
  GeomConvertBSplineCurveToBezierCurve* {.
      importcpp: "GeomConvert_BSplineCurveToBezierCurve",
      header: "GeomConvert_BSplineCurveToBezierCurve.hxx", bycopy.} = object


proc `new`*(this: var GeomConvertBSplineCurveToBezierCurve; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator new",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete`*(this: var GeomConvertBSplineCurveToBezierCurve; theAddress: pointer) {.
    importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator delete",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc `new[]`*(this: var GeomConvertBSplineCurveToBezierCurve; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator new[]",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete[]`*(this: var GeomConvertBSplineCurveToBezierCurve; theAddress: pointer) {.
    importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator delete[]",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc `new`*(this: var GeomConvertBSplineCurveToBezierCurve; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator new", header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc `delete`*(this: var GeomConvertBSplineCurveToBezierCurve; a2: pointer;
              a3: pointer) {.importcpp: "GeomConvert_BSplineCurveToBezierCurve::operator delete",
                           header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeomConvertBSplineCurveToBezierCurve*(
    basisCurve: Handle[GeomBSplineCurve]): GeomConvertBSplineCurveToBezierCurve {.
    constructor, importcpp: "GeomConvert_BSplineCurveToBezierCurve(@)",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc constructGeomConvertBSplineCurveToBezierCurve*(
    basisCurve: Handle[GeomBSplineCurve]; u1: StandardReal; u2: StandardReal;
    parametricTolerance: StandardReal): GeomConvertBSplineCurveToBezierCurve {.
    constructor, importcpp: "GeomConvert_BSplineCurveToBezierCurve(@)",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc arc*(this: var GeomConvertBSplineCurveToBezierCurve; index: int): Handle[
    GeomBezierCurve] {.importcpp: "Arc",
                      header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc arcs*(this: var GeomConvertBSplineCurveToBezierCurve;
          curves: var TColGeomArray1OfBezierCurve) {.importcpp: "Arcs",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc knots*(this: GeomConvertBSplineCurveToBezierCurve;
           tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "Knots",
    header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}
proc nbArcs*(this: GeomConvertBSplineCurveToBezierCurve): int {.noSideEffect,
    importcpp: "NbArcs", header: "GeomConvert_BSplineCurveToBezierCurve.hxx".}