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


## !!!Ignored construct:  public : static Standard_Real FirstParameter ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static Standard_Real LastParameter ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static GeomAbs_Shape Continuity ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns  the number  of  intervals for  continuity
## ! <S>. May be one if Continuity(myclass) >= <S> static Standard_Integer NbIntervals ( const Handle ( Adaptor3d_HCurve ) & C , const GeomAbs_Shape S ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Stores in <T> the  parameters bounding the intervals
## ! of continuity <S>.
## !
## ! The array must provide  enough room to  accomodate
## ! for the parameters. i.e. T.Length() > NbIntervals() static void Intervals ( const Handle ( Adaptor3d_HCurve ) & C , TColStd_Array1OfReal & T , const GeomAbs_Shape S ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static Standard_Boolean IsClosed ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static Standard_Boolean IsPeriodic ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static Standard_Real Period ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Computes the point of parameter U on the curve. static gp_Pnt Value ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Computes the point of parameter U on the curve. static void D0 ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U , gp_Pnt & P ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Computes the point of parameter U on the curve with its
## ! first derivative.
## ! Raised if the continuity of the current interval
## ! is not C1. static void D1 ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U , gp_Pnt & P , gp_Vec & V ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the point P of parameter U, the first and second
## ! derivatives V1 and V2.
## ! Raised if the continuity of the current interval
## ! is not C2. static void D2 ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U , gp_Pnt & P , gp_Vec & V1 , gp_Vec & V2 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the point P of parameter U, the first, the second
## ! and the third derivative.
## ! Raised if the continuity of the current interval
## ! is not C3. static void D3 ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U , gp_Pnt & P , gp_Vec & V1 , gp_Vec & V2 , gp_Vec & V3 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! The returned vector gives the value of the derivative for the
## ! order of derivation N.
## ! Raised if the continuity of the current interval
## ! is not CN.
## ! Raised if N < 1. static gp_Vec DN ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U , const Standard_Integer N ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the parametric  resolution corresponding
## ! to the real space resolution <R3d>. static Standard_Real Resolution ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real R3d ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns  the  type of the   curve  in the  current
## ! interval :   Line,   Circle,   Ellipse, Hyperbola,
## ! Parabola, BezierCurve, BSplineCurve, OtherCurve. static GeomAbs_CurveType GetType ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static gp_Lin Line ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static gp_Circ Circle ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static gp_Elips Ellipse ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static gp_Hypr Hyperbola ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static gp_Parab Parabola ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Bezier ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  BSpline ( const Handle ( Adaptor3d_HCurve ) & C ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  static Standard_Integer NbSamples ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U0 , const Standard_Real U1 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static void SamplePars ( const Handle ( Adaptor3d_HCurve ) & C , const Standard_Real U0 , const Standard_Real U1 , const Standard_Real Defl , const Standard_Integer NbMin , Handle ( TColStd_HArray1OfReal ) & Pars ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  # CurveGen Handle ( Adaptor3d_HCurve ) [NewLine] # CurveGen_hxx < Adaptor3d_HCurve . hxx > [NewLine] # IntCurveSurface_HCurveTool IntCurveSurface_TheHCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx < IntCurveSurface_TheHCurveTool . hxx > [NewLine] # < IntCurveSurface_HCurveTool . lxx > [NewLine] # CurveGen [NewLine] # CurveGen_hxx [NewLine] # IntCurveSurface_HCurveTool [NewLine] # IntCurveSurface_HCurveTool_hxx [NewLine] #  _IntCurveSurface_TheHCurveTool_HeaderFile
## Error: did not expect <!!!














































