##  Created on: 1993-04-01
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepAdaptor/BRepAdaptor_Curve,
  ../GeomAbs/GeomAbs_CurveType, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal, ../gp/gp_Pnt2d,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of HLRAlgo_Projector"
type
  HLRBRep_Curve* {.importcpp: "HLRBRep_Curve", header: "HLRBRep_Curve.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## undefined
                                                                                      ## Curve.


proc constructHLRBRep_Curve*(): HLRBRep_Curve {.constructor,
    importcpp: "HLRBRep_Curve(@)", header: "HLRBRep_Curve.hxx".}
proc Projector*(this: var HLRBRep_Curve; Proj: ptr HLRAlgo_Projector) {.
    importcpp: "Projector", header: "HLRBRep_Curve.hxx".}
proc Curve*(this: var HLRBRep_Curve): var BRepAdaptor_Curve {.importcpp: "Curve",
    header: "HLRBRep_Curve.hxx".}
proc Curve*(this: var HLRBRep_Curve; E: TopoDS_Edge) {.importcpp: "Curve",
    header: "HLRBRep_Curve.hxx".}
proc GetCurve*(this: HLRBRep_Curve): BRepAdaptor_Curve {.noSideEffect,
    importcpp: "GetCurve", header: "HLRBRep_Curve.hxx".}
proc Parameter2d*(this: HLRBRep_Curve; P3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Parameter2d", header: "HLRBRep_Curve.hxx".}
proc Parameter3d*(this: HLRBRep_Curve; P2d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Parameter3d", header: "HLRBRep_Curve.hxx".}
proc Update*(this: var HLRBRep_Curve; TotMin: array[16, Standard_Real];
            TotMax: array[16, Standard_Real]): Standard_Real {.importcpp: "Update",
    header: "HLRBRep_Curve.hxx".}
proc UpdateMinMax*(this: var HLRBRep_Curve; TotMin: array[16, Standard_Real];
                  TotMax: array[16, Standard_Real]): Standard_Real {.
    importcpp: "UpdateMinMax", header: "HLRBRep_Curve.hxx".}
proc Z*(this: HLRBRep_Curve; U: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "Z", header: "HLRBRep_Curve.hxx".}
proc Value3D*(this: HLRBRep_Curve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value3D", header: "HLRBRep_Curve.hxx".}
proc D0*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "HLRBRep_Curve.hxx".}
proc D1*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "HLRBRep_Curve.hxx".}
proc Tangent*(this: HLRBRep_Curve; AtStart: Standard_Boolean; P: var gp_Pnt2d;
             D: var gp_Dir2d) {.noSideEffect, importcpp: "Tangent",
                             header: "HLRBRep_Curve.hxx".}
proc FirstParameter*(this: HLRBRep_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "HLRBRep_Curve.hxx".}
proc LastParameter*(this: HLRBRep_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "HLRBRep_Curve.hxx".}
proc Continuity*(this: HLRBRep_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "HLRBRep_Curve.hxx".}
proc NbIntervals*(this: HLRBRep_Curve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "HLRBRep_Curve.hxx".}
proc Intervals*(this: HLRBRep_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "HLRBRep_Curve.hxx".}
proc IsClosed*(this: HLRBRep_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "HLRBRep_Curve.hxx".}
proc IsPeriodic*(this: HLRBRep_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "HLRBRep_Curve.hxx".}
proc Period*(this: HLRBRep_Curve): Standard_Real {.noSideEffect, importcpp: "Period",
    header: "HLRBRep_Curve.hxx".}
proc Value*(this: HLRBRep_Curve; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "HLRBRep_Curve.hxx".}
proc D0*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "HLRBRep_Curve.hxx".}
proc D1*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "HLRBRep_Curve.hxx".}
proc D2*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2", header: "HLRBRep_Curve.hxx".}
proc D3*(this: HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "HLRBRep_Curve.hxx".}
proc DN*(this: HLRBRep_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "HLRBRep_Curve.hxx".}
proc Resolution*(this: HLRBRep_Curve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "HLRBRep_Curve.hxx".}
proc GetType*(this: HLRBRep_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "HLRBRep_Curve.hxx".}
proc Line*(this: HLRBRep_Curve): gp_Lin2d {.noSideEffect, importcpp: "Line",
                                        header: "HLRBRep_Curve.hxx".}
proc Circle*(this: HLRBRep_Curve): gp_Circ2d {.noSideEffect, importcpp: "Circle",
    header: "HLRBRep_Curve.hxx".}
proc Ellipse*(this: HLRBRep_Curve): gp_Elips2d {.noSideEffect, importcpp: "Ellipse",
    header: "HLRBRep_Curve.hxx".}
proc Hyperbola*(this: HLRBRep_Curve): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "HLRBRep_Curve.hxx".}
proc Parabola*(this: HLRBRep_Curve): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "HLRBRep_Curve.hxx".}
proc IsRational*(this: HLRBRep_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "HLRBRep_Curve.hxx".}
proc Degree*(this: HLRBRep_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "HLRBRep_Curve.hxx".}
proc NbPoles*(this: HLRBRep_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "HLRBRep_Curve.hxx".}
proc Poles*(this: HLRBRep_Curve; TP: var TColgp_Array1OfPnt2d) {.noSideEffect,
    importcpp: "Poles", header: "HLRBRep_Curve.hxx".}
proc Poles*(this: HLRBRep_Curve; aCurve: handle[Geom_BSplineCurve];
           TP: var TColgp_Array1OfPnt2d) {.noSideEffect, importcpp: "Poles",
                                        header: "HLRBRep_Curve.hxx".}
proc PolesAndWeights*(this: HLRBRep_Curve; TP: var TColgp_Array1OfPnt2d;
                     TW: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "PolesAndWeights", header: "HLRBRep_Curve.hxx".}
proc PolesAndWeights*(this: HLRBRep_Curve; aCurve: handle[Geom_BSplineCurve];
                     TP: var TColgp_Array1OfPnt2d; TW: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "PolesAndWeights", header: "HLRBRep_Curve.hxx".}
proc NbKnots*(this: HLRBRep_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "HLRBRep_Curve.hxx".}
proc Knots*(this: HLRBRep_Curve; kn: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "HLRBRep_Curve.hxx".}
proc Multiplicities*(this: HLRBRep_Curve; mu: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "HLRBRep_Curve.hxx".}