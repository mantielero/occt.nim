##  Created on: 1995-01-16
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array2OfPnt, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Real,
  ../Approx/Approx_ParametrizationType, ../TColStd/TColStd_Array2OfReal

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of StdFail_NotDone"
type
  GeomAPI_PointsToBSplineSurface* {.importcpp: "GeomAPI_PointsToBSplineSurface", header: "GeomAPI_PointsToBSplineSurface.hxx",
                                   bycopy.} = object ## ! Constructs an empty algorithm for
                                                  ## ! approximation or interpolation of a surface.
                                                  ## ! Use:
                                                  ## ! -   an Init function to define and build the
                                                  ## ! BSpline surface by approximation, or
                                                  ## ! -   an Interpolate function to define and build
                                                  ## ! the BSpline surface by interpolation.


proc constructGeomAPI_PointsToBSplineSurface*(): GeomAPI_PointsToBSplineSurface {.
    constructor, importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(Points: TColgp_Array2OfPnt;
    DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
    Continuity: GeomAbs_Shape = GeomAbs_C2; Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSplineSurface {.
    constructor, importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(Points: TColgp_Array2OfPnt;
    ParType: Approx_ParametrizationType; DegMin: Standard_Integer = 3;
    DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
    Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSplineSurface {.constructor,
    importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(Points: TColgp_Array2OfPnt;
    Weight1: Standard_Real; Weight2: Standard_Real; Weight3: Standard_Real;
    DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
    Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSplineSurface {.constructor,
    importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(ZPoints: TColStd_Array2OfReal;
    X0: Standard_Real; dX: Standard_Real; Y0: Standard_Real; dY: Standard_Real;
    DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
    Continuity: GeomAbs_Shape = GeomAbs_C2; Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSplineSurface {.
    constructor, importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Init*(this: var GeomAPI_PointsToBSplineSurface; Points: TColgp_Array2OfPnt;
          DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
          Continuity: GeomAbs_Shape = GeomAbs_C2; Tol3D: Standard_Real = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 Points: TColgp_Array2OfPnt;
                 thePeriodic: Standard_Boolean = Standard_False) {.
    importcpp: "Interpolate", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 Points: TColgp_Array2OfPnt; ParType: Approx_ParametrizationType;
                 thePeriodic: Standard_Boolean = Standard_False) {.
    importcpp: "Interpolate", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Init*(this: var GeomAPI_PointsToBSplineSurface; ZPoints: TColStd_Array2OfReal;
          X0: Standard_Real; dX: Standard_Real; Y0: Standard_Real; dY: Standard_Real;
          DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
          Continuity: GeomAbs_Shape = GeomAbs_C2; Tol3D: Standard_Real = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 ZPoints: TColStd_Array2OfReal; X0: Standard_Real;
                 dX: Standard_Real; Y0: Standard_Real; dY: Standard_Real) {.
    importcpp: "Interpolate", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Init*(this: var GeomAPI_PointsToBSplineSurface; Points: TColgp_Array2OfPnt;
          ParType: Approx_ParametrizationType; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol3D: Standard_Real = 1.0e-3;
          thePeriodic: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Init*(this: var GeomAPI_PointsToBSplineSurface; Points: TColgp_Array2OfPnt;
          Weight1: Standard_Real; Weight2: Standard_Real; Weight3: Standard_Real;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol3D: Standard_Real = 1.0e-3) {.importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc Surface*(this: GeomAPI_PointsToBSplineSurface): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "Surface",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
converter `opencascade`*(this: GeomAPI_PointsToBSplineSurface): handle[
    Geom_BSplineSurface] {.noSideEffect, importcpp: "GeomAPI_PointsToBSplineSurface::operator opencascade",
                          header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc IsDone*(this: GeomAPI_PointsToBSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_PointsToBSplineSurface.hxx".}