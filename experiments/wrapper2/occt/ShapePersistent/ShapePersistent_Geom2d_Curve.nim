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

## !!!Ignored construct:  # _ShapePersistent_Geom2d_Curve_HeaderFile [NewLine] # _ShapePersistent_Geom2d_Curve_HeaderFile [NewLine] # < StdObjMgt_TransientPersistentMap . hxx > [NewLine] # < ShapePersistent_Geom2d . hxx > [NewLine] # < ShapePersistent_HArray1 . hxx > [NewLine] # < StdLPersistent_HArray1 . hxx > [NewLine] # < Geom2d_Line . hxx > [NewLine] # < Geom2d_Circle . hxx > [NewLine] # < Geom2d_Ellipse . hxx > [NewLine] # < Geom2d_Hyperbola . hxx > [NewLine] # < Geom2d_Parabola . hxx > [NewLine] # < Geom2d_BezierCurve . hxx > [NewLine] # < Geom2d_BSplineCurve . hxx > [NewLine] # < Geom2d_TrimmedCurve . hxx > [NewLine] # < Geom2d_OffsetCurve . hxx > [NewLine] # < gp_Circ2d . hxx > [NewLine] # < gp_Elips2d . hxx > [NewLine] # < gp_Hypr2d . hxx > [NewLine] # < gp_Parab2d . hxx > [NewLine] class ShapePersistent_Geom2d_Curve : public ShapePersistent_Geom2d { typedef Curve :: PersistentBase pBase ; typedef pBase pBounded ; class pBezier : public pBounded { friend class ShapePersistent_Geom2d_Curve ; public : pBezier ( ) : myRational ( Standard_False ) { } inline void Read ( StdObjMgt_ReadData & theReadData ) { theReadData >> myRational >> myPoles >> myWeights ; } inline void Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myRational << myPoles << myWeights ; } inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { theChildren . Append ( myPoles ) ; theChildren . Append ( myWeights ) ; } inline Standard_CString PName ( ) const { return PGeom2d_BezierCurve ; } virtual Handle ( Geom2d_Curve ) Import ( ) const ; private : Standard_Boolean myRational ; Handle ( ShapePersistent_HArray1 :: Pnt2d ) myPoles ; Handle ( StdLPersistent_HArray1 :: Real ) myWeights ; } ; class pBSpline : public pBounded { friend class ShapePersistent_Geom2d_Curve ; public : pBSpline ( ) : myRational ( Standard_False ) , myPeriodic ( Standard_False ) , mySpineDegree ( 0 ) { } inline void Read ( StdObjMgt_ReadData & theReadData ) { theReadData >> myRational >> myPeriodic >> mySpineDegree ; theReadData >> myPoles >> myWeights >> myKnots >> myMultiplicities ; } inline void Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myRational << myPeriodic << mySpineDegree ; theWriteData << myPoles << myWeights << myKnots << myMultiplicities ; } inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { theChildren . Append ( myPoles ) ; theChildren . Append ( myWeights ) ; theChildren . Append ( myKnots ) ; theChildren . Append ( myMultiplicities ) ; } inline Standard_CString PName ( ) const { return PGeom2d_BSplineCurve ; } virtual Handle ( Geom2d_Curve ) Import ( ) const ; private : Standard_Boolean myRational ; Standard_Boolean myPeriodic ; Standard_Integer mySpineDegree ; Handle ( ShapePersistent_HArray1 :: Pnt2d ) myPoles ; Handle ( StdLPersistent_HArray1 :: Real ) myWeights ; Handle ( StdLPersistent_HArray1 :: Real ) myKnots ; Handle ( StdLPersistent_HArray1 :: Integer ) myMultiplicities ; } ; class pTrimmed : public pBounded { friend class ShapePersistent_Geom2d_Curve ; public : pTrimmed ( ) : myFirstU ( 0.0 ) , myLastU ( 0.0 ) { } inline void Read ( StdObjMgt_ReadData & theReadData ) { theReadData >> myBasisCurve >> myFirstU >> myLastU ; } inline void Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myBasisCurve << myFirstU << myLastU ; } inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { theChildren . Append ( myBasisCurve ) ; } inline Standard_CString PName ( ) const { return PGeom2d_TrimmedCurve ; } virtual Handle ( Geom2d_Curve ) Import ( ) const ; private : Handle ( Curve ) myBasisCurve ; Standard_Real myFirstU ; Standard_Real myLastU ; } ; class pOffset : public pBase { friend class ShapePersistent_Geom2d_Curve ; public : pOffset ( ) : myOffsetValue ( 0.0 ) { } inline void Read ( StdObjMgt_ReadData & theReadData ) { theReadData >> myBasisCurve >> myOffsetValue ; } inline void Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myBasisCurve << myOffsetValue ; } inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { theChildren . Append ( myBasisCurve ) ; } inline Standard_CString PName ( ) const { return PGeom2d_OffsetCurve ; } virtual Handle ( Geom2d_Curve ) Import ( ) const ; private : Handle ( Curve ) myBasisCurve ; Standard_Real myOffsetValue ; } ; public : typedef instance < Curve , Geom2d_Line , gp_Ax2d > [end of template] Line ; typedef subBase_gp < Curve , gp_Ax22d > [end of template] Conic ; typedef instance < Conic , Geom2d_Circle , gp_Circ2d > [end of template] Circle ; typedef instance < Conic , Geom2d_Ellipse , gp_Elips2d > [end of template] Ellipse ; typedef instance < Conic , Geom2d_Hyperbola , gp_Hypr2d > [end of template] Hyperbola ; typedef instance < Conic , Geom2d_Parabola , gp_Parab2d > [end of template] Parabola ; typedef subBase_empty < Curve > [end of template] Bounded ; typedef Delayed < Bounded , pBezier > [end of template] Bezier ; typedef Delayed < Bounded , pBSpline > [end of template] BSpline ; typedef Delayed < Bounded , pTrimmed > [end of template] Trimmed ; typedef Delayed < Curve , pOffset > [end of template] Offset ; public : ! Create a persistent object for a line static Handle ( Curve ) Translate ( const Handle ( Geom2d_Line ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a circle static Handle ( Curve ) Translate ( const Handle ( Geom2d_Circle ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a ellipse static Handle ( Curve ) Translate ( const Handle ( Geom2d_Ellipse ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a hyperbola static Handle ( Curve ) Translate ( const Handle ( Geom2d_Hyperbola ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a parabola static Handle ( Curve ) Translate ( const Handle ( Geom2d_Parabola ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a Bezier curve static Handle ( Curve ) Translate ( const Handle ( Geom2d_BezierCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a BSpline curve static Handle ( Curve ) Translate ( const Handle ( Geom2d_BSplineCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for a trimmed curve static Handle ( Curve ) Translate ( const Handle ( Geom2d_TrimmedCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; ! Create a persistent object for an offset curve static Handle ( Curve ) Translate ( const Handle ( Geom2d_OffsetCurve ) & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; } ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Line
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d :: Curve , Geom2d_Line , gp_Ax2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d :: Curve , Geom2d_Line , gp_Ax2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Conic
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: subBase_gp < ShapePersistent_Geom2d :: Curve , gp_Ax22d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Circle
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Circle , gp_Circ2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Circle , gp_Circ2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Ellipse
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Ellipse , gp_Elips2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Ellipse , gp_Elips2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Hyperbola
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Hyperbola , gp_Hypr2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Hyperbola , gp_Hypr2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Parabola
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Parabola , gp_Parab2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom2d_Curve :: instance < ShapePersistent_Geom2d_Curve :: Conic , Geom2d_Parabola , gp_Parab2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!














































