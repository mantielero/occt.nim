##  Created on: 1995-01-04
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../gp/gp_Vec,
  ../gp/gp_Vec2d, ../Standard/Standard_Integer, BlendFunc_SectionShape,
  ../Convert/Convert_ParameterisationType, ../Blend/Blend_CSFunction,
  ../math/math_Vector, ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFunc_CSCircular* {.importcpp: "BlendFunc_CSCircular",
                         header: "BlendFunc_CSCircular.hxx", bycopy.} = object of Blend_CSFunction ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## function
                                                                                            ## for
                                                                                            ## a
                                                                                            ## circular
                                                                                            ## blending
                                                                                            ## between
                                                                                            ##
                                                                                            ## !
                                                                                            ## a
                                                                                            ## curve
                                                                                            ## <C>
                                                                                            ## and
                                                                                            ## a
                                                                                            ## surface
                                                                                            ## <S>.
                                                                                            ## The
                                                                                            ## direction
                                                                                            ## of
                                                                                            ##
                                                                                            ## !
                                                                                            ## the
                                                                                            ## planes
                                                                                            ## are
                                                                                            ## given
                                                                                            ## by
                                                                                            ## <CGuide>.
                                                                                            ## The
                                                                                            ## position
                                                                                            ## of
                                                                                            ##
                                                                                            ## !
                                                                                            ## the
                                                                                            ## plane
                                                                                            ## is
                                                                                            ## determined
                                                                                            ## on
                                                                                            ## the
                                                                                            ## curve
                                                                                            ## <C>.
                                                                                            ## <L>
                                                                                            ##
                                                                                            ## !
                                                                                            ## defines
                                                                                            ## the
                                                                                            ## change
                                                                                            ## of
                                                                                            ## parameter
                                                                                            ## between
                                                                                            ## <C>
                                                                                            ## and
                                                                                            ##
                                                                                            ## !
                                                                                            ## <CGuide>.
                                                                                            ## So,
                                                                                            ## the
                                                                                            ## planes
                                                                                            ## are
                                                                                            ## defined
                                                                                            ## as
                                                                                            ## described
                                                                                            ##
                                                                                            ## !
                                                                                            ## below
                                                                                            ## :
                                                                                            ##
                                                                                            ## !
                                                                                            ## t
                                                                                            ## is
                                                                                            ## the
                                                                                            ## current
                                                                                            ## parameter
                                                                                            ## on
                                                                                            ## the
                                                                                            ## guide
                                                                                            ## line.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Pguide
                                                                                            ## =
                                                                                            ## C(L(t));
                                                                                            ## Nguide
                                                                                            ## =
                                                                                            ## CGuide'(t)/||CGuide'(t)||


proc constructBlendFunc_CSCircular*(S: handle[Adaptor3d_HSurface];
                                   C: handle[Adaptor3d_HCurve];
                                   CGuide: handle[Adaptor3d_HCurve];
                                   L: handle[Law_Function]): BlendFunc_CSCircular {.
    constructor, importcpp: "BlendFunc_CSCircular(@)",
    header: "BlendFunc_CSCircular.hxx".}
proc NbVariables*(this: BlendFunc_CSCircular): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "BlendFunc_CSCircular.hxx".}
proc NbEquations*(this: BlendFunc_CSCircular): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_CSCircular.hxx".}
proc Value*(this: var BlendFunc_CSCircular; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_CSCircular.hxx".}
proc Derivatives*(this: var BlendFunc_CSCircular; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_CSCircular.hxx".}
proc Values*(this: var BlendFunc_CSCircular; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_CSCircular.hxx".}
proc Set*(this: var BlendFunc_CSCircular; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_CSCircular.hxx".}
proc Set*(this: var BlendFunc_CSCircular; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc GetTolerance*(this: BlendFunc_CSCircular; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_CSCircular.hxx".}
proc GetBounds*(this: BlendFunc_CSCircular; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_CSCircular.hxx".}
proc IsSolution*(this: var BlendFunc_CSCircular; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_CSCircular.hxx".}
proc PointOnS*(this: BlendFunc_CSCircular): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "BlendFunc_CSCircular.hxx".}
proc PointOnC*(this: BlendFunc_CSCircular): gp_Pnt {.noSideEffect,
    importcpp: "PointOnC", header: "BlendFunc_CSCircular.hxx".}
proc Pnt2d*(this: BlendFunc_CSCircular): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "BlendFunc_CSCircular.hxx".}
proc ParameterOnC*(this: BlendFunc_CSCircular): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC", header: "BlendFunc_CSCircular.hxx".}
proc IsTangencyPoint*(this: BlendFunc_CSCircular): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSCircular.hxx".}
proc TangentOnS*(this: BlendFunc_CSCircular): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BlendFunc_CSCircular.hxx".}
proc Tangent2d*(this: BlendFunc_CSCircular): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2d", header: "BlendFunc_CSCircular.hxx".}
proc TangentOnC*(this: BlendFunc_CSCircular): gp_Vec {.noSideEffect,
    importcpp: "TangentOnC", header: "BlendFunc_CSCircular.hxx".}
proc Tangent*(this: BlendFunc_CSCircular; U: Standard_Real; V: Standard_Real;
             TgS: var gp_Vec; NormS: var gp_Vec) {.noSideEffect, importcpp: "Tangent",
    header: "BlendFunc_CSCircular.hxx".}
proc Set*(this: var BlendFunc_CSCircular; Radius: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_CSCircular.hxx".}
proc Set*(this: var BlendFunc_CSCircular; TypeSection: BlendFunc_SectionShape) {.
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc Section*(this: var BlendFunc_CSCircular; Param: Standard_Real; U: Standard_Real;
             V: Standard_Real; W: Standard_Real; Pdeb: var Standard_Real;
             Pfin: var Standard_Real; C: var gp_Circ) {.importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc Section*(this: var BlendFunc_CSCircular; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_CSCircular.hxx".}
proc GetSection*(this: var BlendFunc_CSCircular; Param: Standard_Real;
                U: Standard_Real; V: Standard_Real; W: Standard_Real;
                tabP: var TColgp_Array1OfPnt; tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "GetSection", header: "BlendFunc_CSCircular.hxx".}
proc IsRational*(this: BlendFunc_CSCircular): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_CSCircular.hxx".}
proc GetSectionSize*(this: BlendFunc_CSCircular): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_CSCircular.hxx".}
proc GetMinimalWeight*(this: BlendFunc_CSCircular;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BlendFunc_CSCircular.hxx".}
proc NbIntervals*(this: BlendFunc_CSCircular; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_CSCircular.hxx".}
proc Intervals*(this: BlendFunc_CSCircular; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BlendFunc_CSCircular.hxx".}
proc GetShape*(this: var BlendFunc_CSCircular; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BlendFunc_CSCircular.hxx".}
proc GetTolerance*(this: BlendFunc_CSCircular; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_CSCircular.hxx".}
proc Knots*(this: var BlendFunc_CSCircular; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_CSCircular.hxx".}
proc Mults*(this: var BlendFunc_CSCircular; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_CSCircular.hxx".}
proc Section*(this: var BlendFunc_CSCircular; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_CSCircular.hxx".}
proc Section*(this: var BlendFunc_CSCircular; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc Resolution*(this: BlendFunc_CSCircular; IC2d: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BlendFunc_CSCircular.hxx".}