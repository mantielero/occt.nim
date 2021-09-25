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
proc constructGeom2dAPI_PointsToBSpline*(points: TColgpArray1OfPnt2d;
                                        degMin: int = 3; degMax: int = 8;
                                        continuity: GeomAbsShape = geomAbsC2;
                                        tol2D: float = 1.0e-6): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(yValues: TColStdArray1OfReal; x0: float;
                                        dx: float; degMin: int = 3; degMax: int = 8;
                                        continuity: GeomAbsShape = geomAbsC2;
                                        tol2D: float = 1.0e-6): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(points: TColgpArray1OfPnt2d;
                                        parType: ApproxParametrizationType;
                                        degMin: int = 3; degMax: int = 8;
                                        continuity: GeomAbsShape = geomAbsC2;
                                        tol2D: float = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(points: TColgpArray1OfPnt2d;
                                        parameters: TColStdArray1OfReal;
                                        degMin: int = 3; degMax: int = 8;
                                        continuity: GeomAbsShape = geomAbsC2;
                                        tol2D: float = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc constructGeom2dAPI_PointsToBSpline*(points: TColgpArray1OfPnt2d;
                                        weight1: float; weight2: float;
                                        weight3: float; degMax: int = 8;
                                        continuity: GeomAbsShape = geomAbsC2;
                                        tol3D: float = 1.0e-3): Geom2dAPI_PointsToBSpline {.
    constructor, importcpp: "Geom2dAPI_PointsToBSpline(@)",
    header: "Geom2dAPI_PointsToBSpline.hxx".}
proc init*(this: var Geom2dAPI_PointsToBSpline; points: TColgpArray1OfPnt2d;
          degMin: int = 3; degMax: int = 8; continuity: GeomAbsShape = geomAbsC2;
          tol2D: float = 1.0e-6) {.importcpp: "Init",
                               header: "Geom2dAPI_PointsToBSpline.hxx".}
proc init*(this: var Geom2dAPI_PointsToBSpline; yValues: TColStdArray1OfReal;
          x0: float; dx: float; degMin: int = 3; degMax: int = 8;
          continuity: GeomAbsShape = geomAbsC2; tol2D: float = 1.0e-6) {.
    importcpp: "Init", header: "Geom2dAPI_PointsToBSpline.hxx".}
proc init*(this: var Geom2dAPI_PointsToBSpline; points: TColgpArray1OfPnt2d;
          parType: ApproxParametrizationType; degMin: int = 3; degMax: int = 8;
          continuity: GeomAbsShape = geomAbsC2; tol2D: float = 1.0e-3) {.
    importcpp: "Init", header: "Geom2dAPI_PointsToBSpline.hxx".}
proc init*(this: var Geom2dAPI_PointsToBSpline; points: TColgpArray1OfPnt2d;
          parameters: TColStdArray1OfReal; degMin: int = 3; degMax: int = 8;
          continuity: GeomAbsShape = geomAbsC2; tol2D: float = 1.0e-3) {.
    importcpp: "Init", header: "Geom2dAPI_PointsToBSpline.hxx".}
proc init*(this: var Geom2dAPI_PointsToBSpline; points: TColgpArray1OfPnt2d;
          weight1: float; weight2: float; weight3: float; degMax: int = 8;
          continuity: GeomAbsShape = geomAbsC2; tol2D: float = 1.0e-3) {.
    importcpp: "Init", header: "Geom2dAPI_PointsToBSpline.hxx".}
proc curve*(this: Geom2dAPI_PointsToBSpline): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "Geom2dAPI_PointsToBSpline.hxx".}
converter `opencascade`*(this: Geom2dAPI_PointsToBSpline): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "Geom2dAPI_PointsToBSpline::operator opencascade",
                         header: "Geom2dAPI_PointsToBSpline.hxx".}
proc isDone*(this: Geom2dAPI_PointsToBSpline): bool {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dAPI_PointsToBSpline.hxx".}
