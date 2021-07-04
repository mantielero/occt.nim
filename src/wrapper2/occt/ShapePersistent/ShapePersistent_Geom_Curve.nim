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

## !!!Ignored construct:  # _ShapePersistent_Geom_Curve_HeaderFile [NewLine] # _ShapePersistent_Geom_Curve_HeaderFile [NewLine] # ../StdObjMgt/StdObjMgt_TransientPersistentMap.hxx [NewLine] # ShapePersistent_Geom.hxx [NewLine] # ShapePersistent_HArray1.hxx [NewLine] # ../StdLPersistent/StdLPersistent_HArray1.hxx [NewLine] # ../Geom/Geom_Line.hxx [NewLine] # ../Geom/Geom_Circle.hxx [NewLine] # ../Geom/Geom_Ellipse.hxx [NewLine] # ../Geom/Geom_Hyperbola.hxx [NewLine] # ../Geom/Geom_Parabola.hxx [NewLine] # ../Geom/Geom_BezierCurve.hxx [NewLine] # ../Geom/Geom_BSplineCurve.hxx [NewLine] # ../Geom/Geom_TrimmedCurve.hxx [NewLine] # ../Geom/Geom_OffsetCurve.hxx [NewLine] # ../gp/gp_Circ.hxx [NewLine] # ../gp/gp_Elips.hxx [NewLine] # ../gp/gp_Hypr.hxx [NewLine] # ../gp/gp_Parab.hxx [NewLine] class gp_Dir ;
## Error: token expected: ( but got: <!!!

type
  ShapePersistent_Geom_Curve* {.importcpp: "ShapePersistent_Geom_Curve",
                               header: "ShapePersistent_Geom_Curve.hxx", bycopy.} = object of ShapePersistent_Geom ##
                                                                                                            ## !
                                                                                                            ## Create
                                                                                                            ## a
                                                                                                            ## persistent
                                                                                                            ## object
                                                                                                            ## for
                                                                                                            ## a
                                                                                                            ## line

  ShapePersistent_Geom_CurveLine* = instance[Curve, Geom_Line, gp_Ax1]
  ShapePersistent_Geom_CurveConic* = subBase_gp[Curve, gp_Ax2]
  ShapePersistent_Geom_CurveCircle* = instance[ShapePersistent_Geom_CurveConic,
      Geom_Circle, gp_Circ]
  ShapePersistent_Geom_CurveEllipse* = instance[ShapePersistent_Geom_CurveConic,
      Geom_Ellipse, gp_Elips]
  ShapePersistent_Geom_CurveHyperbola* = instance[ShapePersistent_Geom_CurveConic,
      Geom_Hyperbola, gp_Hypr]
  ShapePersistent_Geom_CurveParabola* = instance[ShapePersistent_Geom_CurveConic,
      Geom_Parabola, gp_Parab]
  ShapePersistent_Geom_CurveBounded* = subBase_empty[Curve]
  ShapePersistent_Geom_CurveBezier* = Delayed[ShapePersistent_Geom_CurveBounded,
      ShapePersistent_Geom_CurvepBezier]
  ShapePersistent_Geom_CurveBSpline* = Delayed[ShapePersistent_Geom_CurveBounded,
      ShapePersistent_Geom_CurvepBSpline]
  ShapePersistent_Geom_CurveTrimmed* = Delayed[ShapePersistent_Geom_CurveBounded,
      ShapePersistent_Geom_CurvepTrimmed]
  ShapePersistent_Geom_CurveOffset* = Delayed[Curve,
      ShapePersistent_Geom_CurvepOffset]

proc Translate*(theCurve: handle[Geom_Line];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_Circle];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_Ellipse];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_Hyperbola];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_Parabola];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_BezierCurve];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_BSplineCurve];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_TrimmedCurve];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
proc Translate*(theCurve: handle[Geom_OffsetCurve];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Curve] {.
    importcpp: "ShapePersistent_Geom_Curve::Translate(@)",
    header: "ShapePersistent_Geom_Curve.hxx".}
## =======================================================================
##  Line
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Curve , Geom_Line , gp_Ax1 > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: Curve , Geom_Line , gp_Ax1 > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Conic
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Curve , gp_Ax2 > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Circle
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Circle , gp_Circ > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Circle , gp_Circ > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Ellipse
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Ellipse , gp_Elips > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Ellipse , gp_Elips > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Hyperbola
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Hyperbola , gp_Hypr > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Hyperbola , gp_Hypr > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Parabola
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Parabola , gp_Parab > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom_Curve :: Conic , Geom_Parabola , gp_Parab > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!
