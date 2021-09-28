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

## !!!Ignored construct:  # _ShapePersistent_Geom_Surface_HeaderFile [NewLine] # _ShapePersistent_Geom_Surface_HeaderFile [NewLine] # < StdObjMgt_TransientPersistentMap . hxx > [NewLine] # < ShapePersistent_Geom . hxx > [NewLine] # < ShapePersistent_HArray2 . hxx > [NewLine] # < StdLPersistent_HArray1 . hxx > [NewLine] # < StdLPersistent_HArray2 . hxx > [NewLine] # < Geom_Plane . hxx > [NewLine] # < Geom_ConicalSurface . hxx > [NewLine] # < Geom_CylindricalSurface . hxx > [NewLine] # < Geom_SphericalSurface . hxx > [NewLine] # < Geom_ToroidalSurface . hxx > [NewLine] # < Geom_SurfaceOfLinearExtrusion . hxx > [NewLine] # < Geom_SurfaceOfRevolution . hxx > [NewLine] # < Geom_BezierSurface . hxx > [NewLine] # < Geom_BSplineSurface . hxx > [NewLine] # < Geom_RectangularTrimmedSurface . hxx > [NewLine] # < Geom_OffsetSurface . hxx > [NewLine] # < gp_Ax3 . hxx > [NewLine] # < gp_Cone . hxx > [NewLine] # < gp_Cylinder . hxx > [NewLine] # < gp_Sphere . hxx > [NewLine] # < gp_Torus . hxx > [NewLine] class gp_Dir ;
## Error: token expected: ( but got: <!!!

discard "forward decl of gp_Pnt"
type
  ShapePersistentGeomSurface* {.importcpp: "ShapePersistent_Geom_Surface",
                               header: "ShapePersistent_Geom_Surface.hxx", bycopy.} = object of ShapePersistentGeom ##
                                                                                                             ## !
                                                                                                             ## Create
                                                                                                             ## a
                                                                                                             ## persistent
                                                                                                             ## object
                                                                                                             ## for
                                                                                                             ## a
                                                                                                             ## plane

  ShapePersistentGeomSurfaceElementary* = SubBaseGp[Surface, Ax3]
  ShapePersistentGeomSurfacePlane* = Instance[
      ShapePersistentGeomSurfaceElementary, GeomPlane, Ax3]
  ShapePersistentGeomSurfaceConical* = Instance[
      ShapePersistentGeomSurfaceElementary, GeomConicalSurface, Cone]
  ShapePersistentGeomSurfaceCylindrical* = Instance[
      ShapePersistentGeomSurfaceElementary, GeomCylindricalSurface, Cylinder]
  ShapePersistentGeomSurfaceSpherical* = Instance[
      ShapePersistentGeomSurfaceElementary, GeomSphericalSurface, Sphere]
  ShapePersistentGeomSurfaceToroidal* = Instance[
      ShapePersistentGeomSurfaceElementary, GeomToroidalSurface, Torus]
  ShapePersistentGeomSurfaceSwept* = SubBase[Surface,
      ShapePersistentGeomSurfacepSweptData]
  ShapePersistentGeomSurfaceLinearExtrusion* = Delayed[
      ShapePersistentGeomSurfaceSwept, ShapePersistentGeomSurfacepLinearExtrusion]
  ShapePersistentGeomSurfaceRevolution* = Delayed[ShapePersistentGeomSurfaceSwept,
      ShapePersistentGeomSurfacepRevolution]
  ShapePersistentGeomSurfaceBounded* = SubBaseEmpty[Surface]
  ShapePersistentGeomSurfaceBezier* = Delayed[ShapePersistentGeomSurfaceBounded,
      ShapePersistentGeomSurfacepBezier]
  ShapePersistentGeomSurfaceBSpline* = Delayed[ShapePersistentGeomSurfaceBounded,
      ShapePersistentGeomSurfacepBSpline]
  ShapePersistentGeomSurfaceRectangularTrimmed* = Delayed[
      ShapePersistentGeomSurfaceBounded,
      ShapePersistentGeomSurfacepRectangularTrimmed]
  ShapePersistentGeomSurfaceOffset* = Delayed[Surface,
      ShapePersistentGeomSurfacepOffset]

## !!!Ignored construct:  Translate ( const Handle ( Geom_Plane ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_CylindricalSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_ConicalSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_SphericalSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_ToroidalSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_SurfaceOfLinearExtrusion ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_SurfaceOfRevolution ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_BezierSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_BSplineSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_RectangularTrimmedSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Translate ( const Handle ( Geom_OffsetSurface ) & theSurf , StdObjMgt_TransientPersistentMap & theMap ) ;
## Error: token expected: ) but got: [identifier]!!!

## =======================================================================
##  Elementary
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Plane
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_Plane , gp_Ax3 > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_Plane , gp_Ax3 > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Conical
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_ConicalSurface , gp_Cone > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_ConicalSurface , gp_Cone > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Cylindrical
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_CylindricalSurface , gp_Cylinder > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_CylindricalSurface , gp_Cylinder > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Spherical
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_SphericalSurface , gp_Sphere > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_SphericalSurface , gp_Sphere > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Toroidal
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_ToroidalSurface , gp_Torus > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] void ShapePersistent_Geom :: instance < ShapePersistent_Geom :: subBase_gp < ShapePersistent_Geom :: Surface , gp_Ax3 > , Geom_ToroidalSurface , gp_Torus > :: Write ( StdObjMgt_WriteData & theWriteData ) const ;
## Error: token expected: ( but got: <!!!














































