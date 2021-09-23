##  Created on: 1994-03-21
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../TColgp/TColgp_Array1OfPnt, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Real,
  ../Approx/Approx_ParametrizationType, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomAPI_PointsToBSpline* {.importcpp: "GeomAPI_PointsToBSpline",
                            header: "GeomAPI_PointsToBSpline.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## an
                                                                                ## empty
                                                                                ## approximation
                                                                                ## algorithm.
                                                                                ##
                                                                                ## !
                                                                                ## Use
                                                                                ## an
                                                                                ## Init
                                                                                ## function
                                                                                ## to
                                                                                ## define
                                                                                ## and
                                                                                ## build
                                                                                ## the
                                                                                ## BSpline
                                                                                ## curve.


proc constructGeomAPI_PointsToBSpline*(): GeomAPI_PointsToBSpline {.constructor,
    importcpp: "GeomAPI_PointsToBSpline(@)", header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt;
                                      DegMin: Standard_Integer = 3;
                                      DegMax: Standard_Integer = 8;
                                      Continuity: GeomAbs_Shape = GeomAbs_C2;
                                      Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt;
                                      ParType: Approx_ParametrizationType;
                                      DegMin: Standard_Integer = 3;
                                      DegMax: Standard_Integer = 8;
                                      Continuity: GeomAbs_Shape = GeomAbs_C2;
                                      Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt;
                                      Parameters: TColStd_Array1OfReal;
                                      DegMin: Standard_Integer = 3;
                                      DegMax: Standard_Integer = 8;
                                      Continuity: GeomAbs_Shape = GeomAbs_C2;
                                      Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt;
                                      Weight1: Standard_Real;
                                      Weight2: Standard_Real;
                                      Weight3: Standard_Real;
                                      DegMax: Standard_Integer = 8;
                                      Continuity: GeomAbs_Shape = GeomAbs_C2;
                                      Tol3D: Standard_Real = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc Init*(this: var GeomAPI_PointsToBSpline; Points: TColgp_Array1OfPnt;
          DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
          Continuity: GeomAbs_Shape = GeomAbs_C2; Tol3D: Standard_Real = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSpline.hxx".}
proc Init*(this: var GeomAPI_PointsToBSpline; Points: TColgp_Array1OfPnt;
          ParType: Approx_ParametrizationType; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol3D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "GeomAPI_PointsToBSpline.hxx".}
proc Init*(this: var GeomAPI_PointsToBSpline; Points: TColgp_Array1OfPnt;
          Parameters: TColStd_Array1OfReal; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol3D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "GeomAPI_PointsToBSpline.hxx".}
proc Init*(this: var GeomAPI_PointsToBSpline; Points: TColgp_Array1OfPnt;
          Weight1: Standard_Real; Weight2: Standard_Real; Weight3: Standard_Real;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol3D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "GeomAPI_PointsToBSpline.hxx".}
proc Curve*(this: GeomAPI_PointsToBSpline): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "GeomAPI_PointsToBSpline.hxx".}
converter `opencascade`*(this: GeomAPI_PointsToBSpline): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "GeomAPI_PointsToBSpline::operator opencascade",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc IsDone*(this: GeomAPI_PointsToBSpline): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_PointsToBSpline.hxx".}