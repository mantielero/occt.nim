##  Created on: 1998-08-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
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
type
  BRepAdaptorCompCurve* {.importcpp: "BRepAdaptor_CompCurve",
                         header: "BRepAdaptor_CompCurve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## undefined
                                                                                           ## Curve
                                                                                           ## with
                                                                                           ## no
                                                                                           ## Wire
                                                                                           ## loaded.


proc newBRepAdaptorCompCurve*(): BRepAdaptorCompCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_CompCurve(@)", header: "BRepAdaptor_CompCurve.hxx".}
proc newBRepAdaptorCompCurve*(w: TopoDS_Wire;
                             knotByCurvilinearAbcissa: bool = false): BRepAdaptorCompCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_CompCurve(@)", header: "BRepAdaptor_CompCurve.hxx".}
proc newBRepAdaptorCompCurve*(w: TopoDS_Wire; knotByCurvilinearAbcissa: bool;
                             first: cfloat; last: cfloat; tol: cfloat): BRepAdaptorCompCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_CompCurve(@)", header: "BRepAdaptor_CompCurve.hxx".}
proc initialize*(this: var BRepAdaptorCompCurve; w: TopoDS_Wire;
                knotByCurvilinearAbcissa: bool) {.cdecl, importcpp: "Initialize",
    header: "BRepAdaptor_CompCurve.hxx".}
proc initialize*(this: var BRepAdaptorCompCurve; w: TopoDS_Wire;
                knotByCurvilinearAbcissa: bool; first: cfloat; last: cfloat;
                tol: cfloat) {.cdecl, importcpp: "Initialize", header: "BRepAdaptor_CompCurve.hxx".}
proc wire*(this: BRepAdaptorCompCurve): TopoDS_Wire {.noSideEffect, cdecl,
    importcpp: "Wire", header: "BRepAdaptor_CompCurve.hxx".}
proc edge*(this: BRepAdaptorCompCurve; u: cfloat; e: var TopoDS_Edge; uonE: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Edge", header: "BRepAdaptor_CompCurve.hxx".}
proc firstParameter*(this: BRepAdaptorCompCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "BRepAdaptor_CompCurve.hxx".}
proc lastParameter*(this: BRepAdaptorCompCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "BRepAdaptor_CompCurve.hxx".}
proc continuity*(this: BRepAdaptorCompCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "BRepAdaptor_CompCurve.hxx".}
proc nbIntervals*(this: BRepAdaptorCompCurve; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BRepAdaptor_CompCurve.hxx".}
proc intervals*(this: BRepAdaptorCompCurve; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "BRepAdaptor_CompCurve.hxx".}
proc trim*(this: BRepAdaptorCompCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "BRepAdaptor_CompCurve.hxx".}
proc isClosed*(this: BRepAdaptorCompCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "BRepAdaptor_CompCurve.hxx".}
proc isPeriodic*(this: BRepAdaptorCompCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "BRepAdaptor_CompCurve.hxx".}
proc period*(this: BRepAdaptorCompCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "BRepAdaptor_CompCurve.hxx".}
proc value*(this: BRepAdaptorCompCurve; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "BRepAdaptor_CompCurve.hxx".}
proc d0*(this: BRepAdaptorCompCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "BRepAdaptor_CompCurve.hxx".}
proc d1*(this: BRepAdaptorCompCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect,
    cdecl, importcpp: "D1", header: "BRepAdaptor_CompCurve.hxx".}
proc d2*(this: BRepAdaptorCompCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", header: "BRepAdaptor_CompCurve.hxx".}
proc d3*(this: BRepAdaptorCompCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, cdecl, importcpp: "D3", header: "BRepAdaptor_CompCurve.hxx".}
proc dn*(this: BRepAdaptorCompCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "BRepAdaptor_CompCurve.hxx".}
proc resolution*(this: BRepAdaptorCompCurve; r3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Resolution", header: "BRepAdaptor_CompCurve.hxx".}
proc getType*(this: BRepAdaptorCompCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "BRepAdaptor_CompCurve.hxx".}
proc line*(this: BRepAdaptorCompCurve): Lin {.noSideEffect, cdecl, importcpp: "Line",
    header: "BRepAdaptor_CompCurve.hxx".}
proc circle*(this: BRepAdaptorCompCurve): Circ {.noSideEffect, cdecl,
    importcpp: "Circle", header: "BRepAdaptor_CompCurve.hxx".}
proc ellipse*(this: BRepAdaptorCompCurve): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "BRepAdaptor_CompCurve.hxx".}
proc hyperbola*(this: BRepAdaptorCompCurve): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "BRepAdaptor_CompCurve.hxx".}
proc parabola*(this: BRepAdaptorCompCurve): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "BRepAdaptor_CompCurve.hxx".}
proc degree*(this: BRepAdaptorCompCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "BRepAdaptor_CompCurve.hxx".}
proc isRational*(this: BRepAdaptorCompCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepAdaptor_CompCurve.hxx".}
proc nbPoles*(this: BRepAdaptorCompCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "BRepAdaptor_CompCurve.hxx".}
proc nbKnots*(this: BRepAdaptorCompCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "BRepAdaptor_CompCurve.hxx".}
proc bezier*(this: BRepAdaptorCompCurve): Handle[GeomBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "BRepAdaptor_CompCurve.hxx".}
proc bSpline*(this: BRepAdaptorCompCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "BRepAdaptor_CompCurve.hxx".}