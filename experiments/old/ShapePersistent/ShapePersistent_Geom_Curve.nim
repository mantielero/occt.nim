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

## !!!Ignored construct:  # _ShapePersistent_Geom_Curve_HeaderFile [NewLine] # _ShapePersistent_Geom_Curve_HeaderFile [NewLine] # < StdObjMgt_TransientPersistentMap . hxx > [NewLine] # < ShapePersistent_Geom . hxx > [NewLine] # < ShapePersistent_HArray1 . hxx > [NewLine] # < StdLPersistent_HArray1 . hxx > [NewLine] # < Geom_Line . hxx > [NewLine] # < Geom_Circle . hxx > [NewLine] # < Geom_Ellipse . hxx > [NewLine] # < Geom_Hyperbola . hxx > [NewLine] # < Geom_Parabola . hxx > [NewLine] # < Geom_BezierCurve . hxx > [NewLine] # < Geom_BSplineCurve . hxx > [NewLine] # < Geom_TrimmedCurve . hxx > [NewLine] # < Geom_OffsetCurve . hxx > [NewLine] # < gp_Circ . hxx > [NewLine] # < gp_Elips . hxx > [NewLine] # < gp_Hypr . hxx > [NewLine] # < gp_Parab . hxx > [NewLine] class gp_Dir ;
## Error: token expected: ( but got: <!!!

type
  ShapePersistentGeomCurve* {.importcpp: "ShapePersistent_Geom_Curve",
                             header: "ShapePersistent_Geom_Curve.hxx", bycopy.} = object of ShapePersistentGeom ##
                                                                                                         ## !
                                                                                                         ## Create
                                                                                                         ## a
                                                                                                         ## persistent
                                                                                                         ## object
                                                                                                         ## for
                                                                                                         ## a
                                                                                                         ## line

  ShapePersistentGeomCurveLine* = Instance[Curve, GeomLine, Ax1]
  ShapePersistentGeomCurveConic* = SubBaseGp[Curve, Ax2]
  ShapePersistentGeomCurveCircle* = Instance[ShapePersistentGeomCurveConic,
      GeomCircle, Circ]
  ShapePersistentGeomCurveEllipse* = Instance[ShapePersistentGeomCurveConic,
      GeomEllipse, Elips]
  ShapePersistentGeomCurveHyperbola* = Instance[ShapePersistentGeomCurveConic,
      GeomHyperbola, Hypr]
  ShapePersistentGeomCurveParabola* = Instance[ShapePersistentGeomCurveConic,
      GeomParabola, Parab]
  ShapePersistentGeomCurveBounded* = SubBaseEmpty[Curve]
  ShapePersistentGeomCurveBezier* = Delayed[ShapePersistentGeomCurveBounded,
      ShapePersistentGeomCurvepBezier]
  ShapePersistentGeomCurveBSpline* = Delayed[ShapePersistentGeomCurveBounded,
      ShapePersistentGeomCurvepBSpline]
  ShapePersistentGeomCurveTrimmed* = Delayed[ShapePersistentGeomCurveBounded,
      ShapePersistentGeomCurvepTrimmed]
  ShapePersistentGeomCurveOffset* = Delayed[Curve, ShapePersistentGeomCurvepOffset]

## !!!Ignored construct:  Translate ( const Handle ( Geom_Line ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_Circle ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_Ellipse ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_Hyperbola ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_Parabola ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_BezierCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_BSplineCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_TrimmedCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_OffsetCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

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














































