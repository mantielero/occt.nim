##  Created on: 1997-03-21
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../Adaptor3d/Adaptor3d_Curve, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
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
  BiTgte_CurveOnVertex* {.importcpp: "BiTgte_CurveOnVertex",
                         header: "BiTgte_CurveOnVertex.hxx", bycopy.} = object of Adaptor3d_Curve


proc constructBiTgte_CurveOnVertex*(): BiTgte_CurveOnVertex {.constructor,
    importcpp: "BiTgte_CurveOnVertex(@)", header: "BiTgte_CurveOnVertex.hxx".}
proc constructBiTgte_CurveOnVertex*(EonF: TopoDS_Edge; V: TopoDS_Vertex): BiTgte_CurveOnVertex {.
    constructor, importcpp: "BiTgte_CurveOnVertex(@)",
    header: "BiTgte_CurveOnVertex.hxx".}
proc Init*(this: var BiTgte_CurveOnVertex; EonF: TopoDS_Edge; V: TopoDS_Vertex) {.
    importcpp: "Init", header: "BiTgte_CurveOnVertex.hxx".}
proc FirstParameter*(this: BiTgte_CurveOnVertex): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc LastParameter*(this: BiTgte_CurveOnVertex): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "BiTgte_CurveOnVertex.hxx".}
proc Continuity*(this: BiTgte_CurveOnVertex): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BiTgte_CurveOnVertex.hxx".}
proc NbIntervals*(this: BiTgte_CurveOnVertex; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BiTgte_CurveOnVertex.hxx".}
proc Intervals*(this: BiTgte_CurveOnVertex; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BiTgte_CurveOnVertex.hxx".}
proc Trim*(this: BiTgte_CurveOnVertex; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "BiTgte_CurveOnVertex.hxx".}
proc IsClosed*(this: BiTgte_CurveOnVertex): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "BiTgte_CurveOnVertex.hxx".}
proc IsPeriodic*(this: BiTgte_CurveOnVertex): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BiTgte_CurveOnVertex.hxx".}
proc Period*(this: BiTgte_CurveOnVertex): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "BiTgte_CurveOnVertex.hxx".}
proc Value*(this: BiTgte_CurveOnVertex; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "BiTgte_CurveOnVertex.hxx".}
proc D0*(this: BiTgte_CurveOnVertex; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BiTgte_CurveOnVertex.hxx".}
proc D1*(this: BiTgte_CurveOnVertex; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "BiTgte_CurveOnVertex.hxx".}
proc D2*(this: BiTgte_CurveOnVertex; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "BiTgte_CurveOnVertex.hxx".}
proc D3*(this: BiTgte_CurveOnVertex; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "BiTgte_CurveOnVertex.hxx".}
proc DN*(this: BiTgte_CurveOnVertex; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "BiTgte_CurveOnVertex.hxx".}
proc Resolution*(this: BiTgte_CurveOnVertex; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "BiTgte_CurveOnVertex.hxx".}
proc GetType*(this: BiTgte_CurveOnVertex): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "BiTgte_CurveOnVertex.hxx".}
proc Line*(this: BiTgte_CurveOnVertex): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "BiTgte_CurveOnVertex.hxx".}
proc Circle*(this: BiTgte_CurveOnVertex): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "BiTgte_CurveOnVertex.hxx".}
proc Ellipse*(this: BiTgte_CurveOnVertex): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "BiTgte_CurveOnVertex.hxx".}
proc Hyperbola*(this: BiTgte_CurveOnVertex): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BiTgte_CurveOnVertex.hxx".}
proc Parabola*(this: BiTgte_CurveOnVertex): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "BiTgte_CurveOnVertex.hxx".}
proc Degree*(this: BiTgte_CurveOnVertex): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "BiTgte_CurveOnVertex.hxx".}
proc IsRational*(this: BiTgte_CurveOnVertex): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BiTgte_CurveOnVertex.hxx".}
proc NbPoles*(this: BiTgte_CurveOnVertex): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "BiTgte_CurveOnVertex.hxx".}
proc NbKnots*(this: BiTgte_CurveOnVertex): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "BiTgte_CurveOnVertex.hxx".}
proc Bezier*(this: BiTgte_CurveOnVertex): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BiTgte_CurveOnVertex.hxx".}
proc BSpline*(this: BiTgte_CurveOnVertex): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "BiTgte_CurveOnVertex.hxx".}