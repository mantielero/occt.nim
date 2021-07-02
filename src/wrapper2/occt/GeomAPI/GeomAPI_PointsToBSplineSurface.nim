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
proc constructGeomAPI_PointsToBSplineSurface*(points: TColgpArray2OfPnt;
    degMin: StandardInteger = 3; degMax: StandardInteger = 8;
    continuity: GeomAbsShape = geomAbsC2; tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSplineSurface {.
    constructor, importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(points: TColgpArray2OfPnt;
    parType: ApproxParametrizationType; degMin: StandardInteger = 3;
    degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
    tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSplineSurface {.constructor,
    importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(points: TColgpArray2OfPnt;
    weight1: StandardReal; weight2: StandardReal; weight3: StandardReal;
    degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
    tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSplineSurface {.constructor,
    importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc constructGeomAPI_PointsToBSplineSurface*(zPoints: TColStdArray2OfReal;
    x0: StandardReal; dX: StandardReal; y0: StandardReal; dY: StandardReal;
    degMin: StandardInteger = 3; degMax: StandardInteger = 8;
    continuity: GeomAbsShape = geomAbsC2; tol3D: StandardReal = 1.0e-3): GeomAPI_PointsToBSplineSurface {.
    constructor, importcpp: "GeomAPI_PointsToBSplineSurface(@)",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc init*(this: var GeomAPI_PointsToBSplineSurface; points: TColgpArray2OfPnt;
          degMin: StandardInteger = 3; degMax: StandardInteger = 8;
          continuity: GeomAbsShape = geomAbsC2; tol3D: StandardReal = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 points: TColgpArray2OfPnt;
                 thePeriodic: StandardBoolean = standardFalse) {.
    importcpp: "Interpolate", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 points: TColgpArray2OfPnt; parType: ApproxParametrizationType;
                 thePeriodic: StandardBoolean = standardFalse) {.
    importcpp: "Interpolate", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc init*(this: var GeomAPI_PointsToBSplineSurface; zPoints: TColStdArray2OfReal;
          x0: StandardReal; dX: StandardReal; y0: StandardReal; dY: StandardReal;
          degMin: StandardInteger = 3; degMax: StandardInteger = 8;
          continuity: GeomAbsShape = geomAbsC2; tol3D: StandardReal = 1.0e-3) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc interpolate*(this: var GeomAPI_PointsToBSplineSurface;
                 zPoints: TColStdArray2OfReal; x0: StandardReal; dX: StandardReal;
                 y0: StandardReal; dY: StandardReal) {.importcpp: "Interpolate",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc init*(this: var GeomAPI_PointsToBSplineSurface; points: TColgpArray2OfPnt;
          parType: ApproxParametrizationType; degMin: StandardInteger = 3;
          degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
          tol3D: StandardReal = 1.0e-3; thePeriodic: StandardBoolean = standardFalse) {.
    importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc init*(this: var GeomAPI_PointsToBSplineSurface; points: TColgpArray2OfPnt;
          weight1: StandardReal; weight2: StandardReal; weight3: StandardReal;
          degMax: StandardInteger = 8; continuity: GeomAbsShape = geomAbsC2;
          tol3D: StandardReal = 1.0e-3) {.importcpp: "Init", header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc surface*(this: GeomAPI_PointsToBSplineSurface): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "Surface",
    header: "GeomAPI_PointsToBSplineSurface.hxx".}
converter `opencascade`*(this: GeomAPI_PointsToBSplineSurface): Handle[
    GeomBSplineSurface] {.noSideEffect, importcpp: "GeomAPI_PointsToBSplineSurface::operator opencascade",
                         header: "GeomAPI_PointsToBSplineSurface.hxx".}
proc isDone*(this: GeomAPI_PointsToBSplineSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_PointsToBSplineSurface.hxx".}

