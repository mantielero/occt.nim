##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
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

## !!!Ignored construct:  # _IntCurveSurface_TheHCurveTool_HeaderFile [NewLine] # _IntCurveSurface_TheHCurveTool_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < GeomAbs_Shape . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < GeomAbs_CurveType . hxx > [NewLine] # < gp_Lin . hxx > [NewLine] # < gp_Circ . hxx > [NewLine] # < gp_Elips . hxx > [NewLine] # < gp_Hypr . hxx > [NewLine] # < gp_Parab . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  IntCurveSurfaceTheHCurveTool* {.importcpp: "IntCurveSurface_TheHCurveTool",
                                 header: "IntCurveSurface_TheHCurveTool.hxx",
                                 bycopy.} = object


proc firstParameter*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "IntCurveSurface_TheHCurveTool::FirstParameter(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc lastParameter*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "IntCurveSurface_TheHCurveTool::LastParameter(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc continuity*(c: Handle[Adaptor3dHCurve]): GeomAbsShape {.
    importcpp: "IntCurveSurface_TheHCurveTool::Continuity(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc nbIntervals*(c: Handle[Adaptor3dHCurve]; s: GeomAbsShape): StandardInteger {.
    importcpp: "IntCurveSurface_TheHCurveTool::NbIntervals(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc intervals*(c: Handle[Adaptor3dHCurve]; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.importcpp: "IntCurveSurface_TheHCurveTool::Intervals(@)",
                                header: "IntCurveSurface_TheHCurveTool.hxx".}
proc isClosed*(c: Handle[Adaptor3dHCurve]): StandardBoolean {.
    importcpp: "IntCurveSurface_TheHCurveTool::IsClosed(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc isPeriodic*(c: Handle[Adaptor3dHCurve]): StandardBoolean {.
    importcpp: "IntCurveSurface_TheHCurveTool::IsPeriodic(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc period*(c: Handle[Adaptor3dHCurve]): StandardReal {.
    importcpp: "IntCurveSurface_TheHCurveTool::Period(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc value*(c: Handle[Adaptor3dHCurve]; u: StandardReal): GpPnt {.
    importcpp: "IntCurveSurface_TheHCurveTool::Value(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc d0*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt) {.
    importcpp: "IntCurveSurface_TheHCurveTool::D0(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc d1*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    importcpp: "IntCurveSurface_TheHCurveTool::D1(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc d2*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.importcpp: "IntCurveSurface_TheHCurveTool::D2(@)",
                      header: "IntCurveSurface_TheHCurveTool.hxx".}
proc d3*(c: Handle[Adaptor3dHCurve]; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.importcpp: "IntCurveSurface_TheHCurveTool::D3(@)",
                                  header: "IntCurveSurface_TheHCurveTool.hxx".}
proc dn*(c: Handle[Adaptor3dHCurve]; u: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "IntCurveSurface_TheHCurveTool::DN(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc resolution*(c: Handle[Adaptor3dHCurve]; r3d: StandardReal): StandardReal {.
    importcpp: "IntCurveSurface_TheHCurveTool::Resolution(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc getType*(c: Handle[Adaptor3dHCurve]): GeomAbsCurveType {.
    importcpp: "IntCurveSurface_TheHCurveTool::GetType(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc line*(c: Handle[Adaptor3dHCurve]): GpLin {.
    importcpp: "IntCurveSurface_TheHCurveTool::Line(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc circle*(c: Handle[Adaptor3dHCurve]): GpCirc {.
    importcpp: "IntCurveSurface_TheHCurveTool::Circle(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc ellipse*(c: Handle[Adaptor3dHCurve]): GpElips {.
    importcpp: "IntCurveSurface_TheHCurveTool::Ellipse(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc hyperbola*(c: Handle[Adaptor3dHCurve]): GpHypr {.
    importcpp: "IntCurveSurface_TheHCurveTool::Hyperbola(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc parabola*(c: Handle[Adaptor3dHCurve]): GpParab {.
    importcpp: "IntCurveSurface_TheHCurveTool::Parabola(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc bezier*(c: Handle[Adaptor3dHCurve]): Handle[GeomBezierCurve] {.
    importcpp: "IntCurveSurface_TheHCurveTool::Bezier(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc bSpline*(c: Handle[Adaptor3dHCurve]): Handle[GeomBSplineCurve] {.
    importcpp: "IntCurveSurface_TheHCurveTool::BSpline(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc nbSamples*(c: Handle[Adaptor3dHCurve]; u0: StandardReal; u1: StandardReal): StandardInteger {.
    importcpp: "IntCurveSurface_TheHCurveTool::NbSamples(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
proc samplePars*(c: Handle[Adaptor3dHCurve]; u0: StandardReal; u1: StandardReal;
                defl: StandardReal; nbMin: StandardInteger;
                pars: var Handle[TColStdHArray1OfReal]) {.
    importcpp: "IntCurveSurface_TheHCurveTool::SamplePars(@)",
    header: "IntCurveSurface_TheHCurveTool.hxx".}
## !!!Ignored construct:  # CurveGen opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # CurveGen_hxx < Adaptor3d_HCurve . hxx > [NewLine] # IntCurveSurface_HCurveTool IntCurveSurface_TheHCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx < IntCurveSurface_TheHCurveTool . hxx > [NewLine] # < IntCurveSurface_HCurveTool . lxx > [NewLine] # CurveGen [NewLine] # CurveGen_hxx [NewLine] # IntCurveSurface_HCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx [NewLine] #  _IntCurveSurface_TheHCurveTool_HeaderFile
## Error: did not expect <!!!


