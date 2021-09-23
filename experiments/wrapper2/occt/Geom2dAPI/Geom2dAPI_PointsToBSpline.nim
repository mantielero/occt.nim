##  Created on: 1994-03-23
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
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../Approx/Approx_ParametrizationType

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  Geom2dAPI_PointsToBSpline* {.importcpp: "Geom2dAPI_PointsToBSpline",
                              header: "Geom2dAPI_PointsToBSpline.hxx", bycopy.} = object ##
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


proc constructGeom2dAPI_PointsToBSpline*(): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt2d;
                                        DegMin: Standard_Integer = 3;
                                        DegMax: Standard_Integer = 8;
                                        Continuity: GeomAbs_Shape = GeomAbs_C2;
                                        Tol2D: Standard_Real = 1.0e-6): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(YValues: TColStd_Array1OfReal;
                                        X0: Standard_Real; DX: Standard_Real;
                                        DegMin: Standard_Integer = 3;
                                        DegMax: Standard_Integer = 8;
                                        Continuity: GeomAbs_Shape = GeomAbs_C2;
                                        Tol2D: Standard_Real = 1.0e-6): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt2d;
                                        ParType: Approx_ParametrizationType;
                                        DegMin: Standard_Integer = 3;
                                        DegMax: Standard_Integer = 8;
                                        Continuity: GeomAbs_Shape = GeomAbs_C2;
                                        Tol2D: Standard_Real = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt2d;
                                        Parameters: TColStd_Array1OfReal;
                                        DegMin: Standard_Integer = 3;
                                        DegMax: Standard_Integer = 8;
                                        Continuity: GeomAbs_Shape = GeomAbs_C2;
                                        Tol2D: Standard_Real = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(Points: TColgp_Array1OfPnt2d;
                                        Weight1: Standard_Real;
                                        Weight2: Standard_Real;
                                        Weight3: Standard_Real;
                                        DegMax: Standard_Integer = 8;
                                        Continuity: GeomAbs_Shape = GeomAbs_C2;
                                        Tol3D: Standard_Real = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Init*(this: var Geom2dAPI_PointsToBSpline; Points: TColgp_Array1OfPnt2d;
          DegMin: Standard_Integer = 3; DegMax: Standard_Integer = 8;
          Continuity: GeomAbs_Shape = GeomAbs_C2; Tol2D: Standard_Real = 1.0e-6) {.
    importcpp: "Init", header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Init*(this: var Geom2dAPI_PointsToBSpline; YValues: TColStd_Array1OfReal;
          X0: Standard_Real; DX: Standard_Real; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol2D: Standard_Real = 1.0e-6) {.importcpp: "Init",
                                       header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Init*(this: var Geom2dAPI_PointsToBSpline; Points: TColgp_Array1OfPnt2d;
          ParType: Approx_ParametrizationType; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol2D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Init*(this: var Geom2dAPI_PointsToBSpline; Points: TColgp_Array1OfPnt2d;
          Parameters: TColStd_Array1OfReal; DegMin: Standard_Integer = 3;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol2D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Init*(this: var Geom2dAPI_PointsToBSpline; Points: TColgp_Array1OfPnt2d;
          Weight1: Standard_Real; Weight2: Standard_Real; Weight3: Standard_Real;
          DegMax: Standard_Integer = 8; Continuity: GeomAbs_Shape = GeomAbs_C2;
          Tol2D: Standard_Real = 1.0e-3) {.importcpp: "Init",
                                       header: "Geom2dAPI_PointsToBSpline.hxx".}
proc Curve*(this: Geom2dAPI_PointsToBSpline): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "Geom2dAPI_PointsToBSpline.hxx".}
converter `opencascade`*(this: Geom2dAPI_PointsToBSpline): handle[
    Geom2d_BSplineCurve] {.noSideEffect, importcpp: "Geom2dAPI_PointsToBSpline::operator opencascade",
                          header: "Geom2dAPI_PointsToBSpline.hxx".}
proc IsDone*(this: Geom2dAPI_PointsToBSpline): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dAPI_PointsToBSpline.hxx".}