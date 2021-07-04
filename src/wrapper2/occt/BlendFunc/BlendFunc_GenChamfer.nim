##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, BlendFunc_Corde, ../Blend/Blend_Function,
  ../Standard/Standard_Boolean, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin"
discard "forward decl of Blend_Point"
type
  BlendFunc_GenChamfer* {.importcpp: "BlendFunc_GenChamfer",
                         header: "BlendFunc_GenChamfer.hxx", bycopy.} = object of Blend_Function


proc constructBlendFunc_GenChamfer*(S1: handle[Adaptor3d_HSurface];
                                   S2: handle[Adaptor3d_HSurface];
                                   CG: handle[Adaptor3d_HCurve]): BlendFunc_GenChamfer {.
    constructor, importcpp: "BlendFunc_GenChamfer(@)",
    header: "BlendFunc_GenChamfer.hxx".}
proc NbEquations*(this: BlendFunc_GenChamfer): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfer.hxx".}
proc Values*(this: var BlendFunc_GenChamfer; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_GenChamfer.hxx".}
proc Set*(this: var BlendFunc_GenChamfer; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_GenChamfer.hxx".}
proc Set*(this: var BlendFunc_GenChamfer; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BlendFunc_GenChamfer.hxx".}
proc GetTolerance*(this: BlendFunc_GenChamfer; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_GenChamfer.hxx".}
proc GetBounds*(this: BlendFunc_GenChamfer; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_GenChamfer.hxx".}
proc GetMinimalDistance*(this: BlendFunc_GenChamfer): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_GenChamfer.hxx".}
proc Set*(this: var BlendFunc_GenChamfer; Dist1: Standard_Real; Dist2: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_GenChamfer.hxx".}
proc IsRational*(this: BlendFunc_GenChamfer): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_GenChamfer.hxx".}
proc GetMinimalWeight*(this: BlendFunc_GenChamfer;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BlendFunc_GenChamfer.hxx".}
proc NbIntervals*(this: BlendFunc_GenChamfer; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_GenChamfer.hxx".}
proc Intervals*(this: BlendFunc_GenChamfer; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BlendFunc_GenChamfer.hxx".}
proc GetShape*(this: var BlendFunc_GenChamfer; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BlendFunc_GenChamfer.hxx".}
proc GetTolerance*(this: BlendFunc_GenChamfer; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc Knots*(this: var BlendFunc_GenChamfer; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_GenChamfer.hxx".}
proc Mults*(this: var BlendFunc_GenChamfer; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_GenChamfer.hxx".}
proc Section*(this: var BlendFunc_GenChamfer; Param: Standard_Real; U1: Standard_Real;
             V1: Standard_Real; U2: Standard_Real; V2: Standard_Real;
             Pdeb: var Standard_Real; Pfin: var Standard_Real; C: var gp_Lin) {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc Section*(this: var BlendFunc_GenChamfer; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc Section*(this: var BlendFunc_GenChamfer; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc Section*(this: var BlendFunc_GenChamfer; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc Resolution*(this: BlendFunc_GenChamfer; IC2d: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BlendFunc_GenChamfer.hxx".}