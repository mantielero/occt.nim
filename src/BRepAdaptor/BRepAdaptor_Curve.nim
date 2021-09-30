##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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

discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_CurveOnSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
type
  BRepAdaptorCurve* {.importcpp: "BRepAdaptor_Curve",
                     header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve


proc `new`*(this: var BRepAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "BRepAdaptor_Curve::operator new", header: "BRepAdaptor_Curve.hxx".}
proc `delete`*(this: var BRepAdaptorCurve; theAddress: pointer) {.
    importcpp: "BRepAdaptor_Curve::operator delete",
    header: "BRepAdaptor_Curve.hxx".}
proc `new[]`*(this: var BRepAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "BRepAdaptor_Curve::operator new[]",
    header: "BRepAdaptor_Curve.hxx".}
proc `delete[]`*(this: var BRepAdaptorCurve; theAddress: pointer) {.
    importcpp: "BRepAdaptor_Curve::operator delete[]",
    header: "BRepAdaptor_Curve.hxx".}
proc `new`*(this: var BRepAdaptorCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAdaptor_Curve::operator new", header: "BRepAdaptor_Curve.hxx".}
proc `delete`*(this: var BRepAdaptorCurve; a2: pointer; a3: pointer) {.
    importcpp: "BRepAdaptor_Curve::operator delete",
    header: "BRepAdaptor_Curve.hxx".}
proc constructBRepAdaptorCurve*(): BRepAdaptorCurve {.constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc constructBRepAdaptorCurve*(e: TopoDS_Edge): BRepAdaptorCurve {.constructor,
    importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc constructBRepAdaptorCurve*(e: TopoDS_Edge; f: TopoDS_Face): BRepAdaptorCurve {.
    constructor, importcpp: "BRepAdaptor_Curve(@)", header: "BRepAdaptor_Curve.hxx".}
proc reset*(this: var BRepAdaptorCurve) {.importcpp: "Reset",
                                      header: "BRepAdaptor_Curve.hxx".}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc initialize*(this: var BRepAdaptorCurve; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve.hxx".}
proc trsf*(this: BRepAdaptorCurve): Trsf {.noSideEffect, importcpp: "Trsf",
                                       header: "BRepAdaptor_Curve.hxx".}
proc is3DCurve*(this: BRepAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "Is3DCurve", header: "BRepAdaptor_Curve.hxx".}
proc isCurveOnSurface*(this: BRepAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc curve*(this: BRepAdaptorCurve): GeomAdaptorCurve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_Curve.hxx".}
proc curveOnSurface*(this: BRepAdaptorCurve): Adaptor3dCurveOnSurface {.
    noSideEffect, importcpp: "CurveOnSurface", header: "BRepAdaptor_Curve.hxx".}
proc edge*(this: BRepAdaptorCurve): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepAdaptor_Curve.hxx".}
proc tolerance*(this: BRepAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "BRepAdaptor_Curve.hxx".}
proc firstParameter*(this: BRepAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepAdaptor_Curve.hxx".}
proc lastParameter*(this: BRepAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "BRepAdaptor_Curve.hxx".}
proc continuity*(this: BRepAdaptorCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRepAdaptor_Curve.hxx".}
proc nbIntervals*(this: BRepAdaptorCurve; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BRepAdaptor_Curve.hxx".}
proc intervals*(this: BRepAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BRepAdaptor_Curve.hxx".}
proc trim*(this: BRepAdaptorCurve; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Trim", header: "BRepAdaptor_Curve.hxx".}
proc isClosed*(this: BRepAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "BRepAdaptor_Curve.hxx".}
proc isPeriodic*(this: BRepAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BRepAdaptor_Curve.hxx".}
proc period*(this: BRepAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "BRepAdaptor_Curve.hxx".}
proc value*(this: BRepAdaptorCurve; u: StandardReal): Pnt {.noSideEffect,
    importcpp: "Value", header: "BRepAdaptor_Curve.hxx".}
proc d0*(this: BRepAdaptorCurve; u: StandardReal; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRepAdaptor_Curve.hxx".}
proc d1*(this: BRepAdaptorCurve; u: StandardReal; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "BRepAdaptor_Curve.hxx".}
proc d2*(this: BRepAdaptorCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "BRepAdaptor_Curve.hxx".}
proc d3*(this: BRepAdaptorCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3", header: "BRepAdaptor_Curve.hxx".}
proc dn*(this: BRepAdaptorCurve; u: StandardReal; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "BRepAdaptor_Curve.hxx".}
proc resolution*(this: BRepAdaptorCurve; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "BRepAdaptor_Curve.hxx".}
proc getType*(this: BRepAdaptorCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "BRepAdaptor_Curve.hxx".}
proc line*(this: BRepAdaptorCurve): Lin {.noSideEffect, importcpp: "Line",
                                      header: "BRepAdaptor_Curve.hxx".}
proc circle*(this: BRepAdaptorCurve): Circ {.noSideEffect, importcpp: "Circle",
    header: "BRepAdaptor_Curve.hxx".}
proc ellipse*(this: BRepAdaptorCurve): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "BRepAdaptor_Curve.hxx".}
proc hyperbola*(this: BRepAdaptorCurve): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "BRepAdaptor_Curve.hxx".}
proc parabola*(this: BRepAdaptorCurve): Parab {.noSideEffect, importcpp: "Parabola",
    header: "BRepAdaptor_Curve.hxx".}
proc degree*(this: BRepAdaptorCurve): int {.noSideEffect, importcpp: "Degree",
                                        header: "BRepAdaptor_Curve.hxx".}
proc isRational*(this: BRepAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepAdaptor_Curve.hxx".}
proc nbPoles*(this: BRepAdaptorCurve): int {.noSideEffect, importcpp: "NbPoles",
    header: "BRepAdaptor_Curve.hxx".}
proc nbKnots*(this: BRepAdaptorCurve): int {.noSideEffect, importcpp: "NbKnots",
    header: "BRepAdaptor_Curve.hxx".}
proc bezier*(this: BRepAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BRepAdaptor_Curve.hxx".}
proc bSpline*(this: BRepAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BRepAdaptor_Curve.hxx".}
proc offsetCurve*(this: BRepAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "BRepAdaptor_Curve.hxx".}