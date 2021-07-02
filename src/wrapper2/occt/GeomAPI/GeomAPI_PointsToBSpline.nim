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
proc constructGeomAPI_PointsToBSpline*(points: TColgpArray1OfPnt;
                                      degMin: StandardInteger = 3;
                                      degMax: StandardInteger = 8;
                                      continuity: GeomAbsShape = geomAbsC2;
                                      tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(points: TColgpArray1OfPnt;
                                      parType: ApproxParametrizationType;
                                      degMin: StandardInteger = 3;
                                      degMax: StandardInteger = 8;
                                      continuity: GeomAbsShape = geomAbsC2;
                                      tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(points: TColgpArray1OfPnt;
                                      parameters: TColStdArray1OfReal;
                                      degMin: StandardInteger = 3;
                                      degMax: StandardInteger = 8;
                                      continuity: GeomAbsShape = geomAbsC2;
                                      tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc constructGeomAPI_PointsToBSpline*(points: TColgpArray1OfPnt;
                                      weight1: StandardReal;
                                      weight2: StandardReal;
                                      weight3: StandardReal;
                                      degMax: StandardInteger = 8;
                                      continuity: GeomAbsShape = geomAbsC2;
                                      tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSpline {.
    constructor, importcpp: "GeomAPI_PointsToBSpline(@)",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc init*(this: var GeomAPI_PointsToBSpline; points: TColgpArray1OfPnt;
          degMin: StandardInteger = 3; degMax: StandardInteger = 8;
          continuity: GeomAbsShape = geomAbsC2; tol3D: StandardReal = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSpline.hxx".}
proc init*(this: var GeomAPI_PointsToBSpline; points: TColgpArray1OfPnt;
          parType: ApproxParametrizationType; degMin: StandardInteger = 3;
          degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
          tol3D: StandardReal = 1.0e-3) {.importcpp: "Init",
                                      header: "GeomAPI_PointsToBSpline.hxx".}
proc init*(this: var GeomAPI_PointsToBSpline; points: TColgpArray1OfPnt;
          parameters: TColStdArray1OfReal; degMin: StandardInteger = 3;
          degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
          tol3D: StandardReal = 1.0e-3) {.importcpp: "Init",
                                      header: "GeomAPI_PointsToBSpline.hxx".}
proc init*(this: var GeomAPI_PointsToBSpline; points: TColgpArray1OfPnt;
          weight1: StandardReal; weight2: StandardReal; weight3: StandardReal;
          degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
          tol3D: StandardReal = 1.0e-3) {.importcpp: "Init",
                                      header: "GeomAPI_PointsToBSpline.hxx".}
proc curve*(this: GeomAPI_PointsToBSpline): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomAPI_PointsToBSpline.hxx".}
converter `opencascade`*(this: GeomAPI_PointsToBSpline): Handle[GeomBSplineCurve] {.
    noSideEffect, importcpp: "GeomAPI_PointsToBSpline::operator opencascade",
    header: "GeomAPI_PointsToBSpline.hxx".}
proc isDone*(this: GeomAPI_PointsToBSpline): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_PointsToBSpline.hxx".}

