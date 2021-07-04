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

## !!!Ignored construct:  # _ShapePersistent_Geom2d_HeaderFile [NewLine] # _ShapePersistent_Geom2d_HeaderFile [NewLine] # ../StdObjMgt/StdObjMgt_TransientPersistentMap.hxx [NewLine] # ShapePersistent_Geom.hxx [NewLine] # ../Geom2d/Geom2d_CartesianPoint.hxx [NewLine] # ../Geom2d/Geom2d_Direction.hxx [NewLine] # ../Geom2d/Geom2d_VectorWithMagnitude.hxx [NewLine] # ../Geom2d/Geom2d_AxisPlacement.hxx [NewLine] # ../Geom2d/Geom2d_Transformation.hxx [NewLine] # ../Geom2d/Geom2d_Curve.hxx [NewLine] class ShapePersistent_Geom2d : public ShapePersistent_Geom { typedef geometryBase < Geom2d_Geometry > [end of template] basic ; public : typedef ShapePersistent_Geom :: Geometry Geometry ; typedef subBase_empty < basic > [end of template] Point ; typedef instance < Point , Geom2d_CartesianPoint , gp_Pnt2d > [end of template] CartesianPoint ; typedef subBase_gp < basic , gp_Vec2d > [end of template] Vector ; typedef instance < Vector , Geom2d_Direction , gp_Dir2d > [end of template] Direction ; typedef instance < Vector , Geom2d_VectorWithMagnitude , gp_Vec2d > [end of template] VectorWithMagnitude ; typedef instance < basic , Geom2d_AxisPlacement , gp_Ax2d > [end of template] AxisPlacement ; typedef instance < SharedBase < Geom2d_Transformation > [end of template] , Geom2d_Transformation , gp_Trsf2d > [end of template] Transformation ; typedef geometryBase < Geom2d_Curve > [end of template] Curve ; public : ! Create a persistent object for a curve static opencascade :: handle < Curve > [end of template] Translate ( const opencascade :: handle < Geom2d_Curve > [end of template] & theCurve , StdObjMgt_TransientPersistentMap & theMap ) ; } ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Geometry
## =======================================================================

## !!!Ignored construct:  template < > [end of template] inline Standard_CString ShapePersistent_Geom :: geometryBase < Geom2d_Geometry > :: PName ( ) const { return PGeom2d_Geometry ; } =======================================================================
##  Point
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: subBase_empty < ShapePersistent_Geom2d :: geometryBase < Geom2d_Geometry > > :: PName ( ) const { return PGeom2d_Point ; } =======================================================================
##  CartesianPoint
## ======================================================================= template < > inline Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Point , Geom2d_CartesianPoint , gp_Pnt2d > :: PName ( ) const { return PGeom2d_CartesianPoint ; } template < > inline void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Point , Geom2d_CartesianPoint , gp_Pnt2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Geom2d_CartesianPoint > [end of template] aMyGeom = opencascade :: handle < Geom2d_CartesianPoint > [end of template] :: DownCast ( myTransient ) ; theWriteData << aMyGeom -> Pnt2d ( ) ; } =======================================================================
##  Direction
## ======================================================================= template < > Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Direction , Geom2d_Direction , gp_Dir2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Direction , Geom2d_Direction , gp_Dir2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  VectorWithMagnitude
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: VectorWithMagnitude , Geom2d_VectorWithMagnitude , gp_Vec2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: VectorWithMagnitude , Geom2d_VectorWithMagnitude , gp_Vec2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  AxisPlacement
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: AxisPlacement , Geom2d_AxisPlacement , gp_Ax2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: AxisPlacement , Geom2d_AxisPlacement , gp_Ax2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Transformation
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Transformation , Geom2d_Transformation , gp_Trsf2d > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Transformation , Geom2d_Transformation , gp_Trsf2d > :: PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom2d :: Transformation , Geom2d_Transformation , gp_Trsf2d > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Curve
## =======================================================================

## !!!Ignored construct:  template < > [end of template] inline Standard_CString ShapePersistent_Geom :: geometryBase < Geom2d_Curve > :: PName ( ) const { return PGeom2d_Curve ; } # [NewLine]
## Error: token expected: ( but got: <!!!
