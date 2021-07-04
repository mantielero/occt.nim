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

## !!!Ignored construct:  # _ShapePersistent_Geom_Surface_HeaderFile [NewLine] # _ShapePersistent_Geom_Surface_HeaderFile [NewLine] # ../StdObjMgt/StdObjMgt_TransientPersistentMap.hxx [NewLine] # ShapePersistent_Geom.hxx [NewLine] # ShapePersistent_HArray2.hxx [NewLine] # ../StdLPersistent/StdLPersistent_HArray1.hxx [NewLine] # ../StdLPersistent/StdLPersistent_HArray2.hxx [NewLine] # ../Geom/Geom_Plane.hxx [NewLine] # ../Geom/Geom_ConicalSurface.hxx [NewLine] # ../Geom/Geom_CylindricalSurface.hxx [NewLine] # ../Geom/Geom_SphericalSurface.hxx [NewLine] # ../Geom/Geom_ToroidalSurface.hxx [NewLine] # ../Geom/Geom_SurfaceOfLinearExtrusion.hxx [NewLine] # ../Geom/Geom_SurfaceOfRevolution.hxx [NewLine] # ../Geom/Geom_BezierSurface.hxx [NewLine] # ../Geom/Geom_BSplineSurface.hxx [NewLine] # ../Geom/Geom_RectangularTrimmedSurface.hxx [NewLine] # ../Geom/Geom_OffsetSurface.hxx [NewLine] # ../gp/gp_Ax3.hxx [NewLine] # ../gp/gp_Cone.hxx [NewLine] # ../gp/gp_Cylinder.hxx [NewLine] # ../gp/gp_Sphere.hxx [NewLine] # ../gp/gp_Torus.hxx [NewLine] class gp_Dir ;
## Error: token expected: ( but got: <!!!

discard "forward decl of gp_Pnt"
type
  ShapePersistent_Geom_Surface* {.importcpp: "ShapePersistent_Geom_Surface",
                                 header: "ShapePersistent_Geom_Surface.hxx",
                                 bycopy.} = object of ShapePersistent_Geom ## ! Create a persistent object for a plane

  ShapePersistent_Geom_SurfaceElementary* = subBase_gp[Surface, gp_Ax3]
  ShapePersistent_Geom_SurfacePlane* = instance[
      ShapePersistent_Geom_SurfaceElementary, Geom_Plane, gp_Ax3]
  ShapePersistent_Geom_SurfaceConical* = instance[
      ShapePersistent_Geom_SurfaceElementary, Geom_ConicalSurface, gp_Cone]
  ShapePersistent_Geom_SurfaceCylindrical* = instance[
      ShapePersistent_Geom_SurfaceElementary, Geom_CylindricalSurface, gp_Cylinder]
  ShapePersistent_Geom_SurfaceSpherical* = instance[
      ShapePersistent_Geom_SurfaceElementary, Geom_SphericalSurface, gp_Sphere]
  ShapePersistent_Geom_SurfaceToroidal* = instance[
      ShapePersistent_Geom_SurfaceElementary, Geom_ToroidalSurface, gp_Torus]
  ShapePersistent_Geom_SurfaceSwept* = subBase[Surface,
      ShapePersistent_Geom_SurfacepSweptData]
  ShapePersistent_Geom_SurfaceLinearExtrusion* = Delayed[
      ShapePersistent_Geom_SurfaceSwept,
      ShapePersistent_Geom_SurfacepLinearExtrusion]
  ShapePersistent_Geom_SurfaceRevolution* = Delayed[
      ShapePersistent_Geom_SurfaceSwept, ShapePersistent_Geom_SurfacepRevolution]
  ShapePersistent_Geom_SurfaceBounded* = subBase_empty[Surface]
  ShapePersistent_Geom_SurfaceBezier* = Delayed[
      ShapePersistent_Geom_SurfaceBounded, ShapePersistent_Geom_SurfacepBezier]
  ShapePersistent_Geom_SurfaceBSpline* = Delayed[
      ShapePersistent_Geom_SurfaceBounded, ShapePersistent_Geom_SurfacepBSpline]
  ShapePersistent_Geom_SurfaceRectangularTrimmed* = Delayed[
      ShapePersistent_Geom_SurfaceBounded,
      ShapePersistent_Geom_SurfacepRectangularTrimmed]
  ShapePersistent_Geom_SurfaceOffset* = Delayed[Surface,
      ShapePersistent_Geom_SurfacepOffset]

proc Translate*(theSurf: handle[Geom_Plane];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_CylindricalSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_ConicalSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_SphericalSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_ToroidalSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_SurfaceOfLinearExtrusion];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_SurfaceOfRevolution];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_BezierSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_BSplineSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_RectangularTrimmedSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
proc Translate*(theSurf: handle[Geom_OffsetSurface];
               theMap: var StdObjMgt_TransientPersistentMap): handle[Surface] {.
    importcpp: "ShapePersistent_Geom_Surface::Translate(@)",
    header: "ShapePersistent_Geom_Surface.hxx".}
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
