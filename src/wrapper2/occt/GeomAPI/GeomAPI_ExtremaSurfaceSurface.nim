##  Created on: 1994-03-18
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtSS"
type
  GeomAPI_ExtremaSurfaceSurface* {.importcpp: "GeomAPI_ExtremaSurfaceSurface",
                                  header: "GeomAPI_ExtremaSurfaceSurface.hxx",
                                  bycopy.} = object ## ! Constructs an empty algorithm for computing
                                                 ## ! extrema between two surfaces. Use an Init function
                                                 ## ! to define the surfaces on which it is going to work.


proc constructGeomAPI_ExtremaSurfaceSurface*(): GeomAPI_ExtremaSurfaceSurface {.
    constructor, importcpp: "GeomAPI_ExtremaSurfaceSurface(@)",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc constructGeomAPI_ExtremaSurfaceSurface*(s1: Handle[GeomSurface];
    s2: Handle[GeomSurface]): GeomAPI_ExtremaSurfaceSurface {.constructor,
    importcpp: "GeomAPI_ExtremaSurfaceSurface(@)",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc constructGeomAPI_ExtremaSurfaceSurface*(s1: Handle[GeomSurface];
    s2: Handle[GeomSurface]; u1min: StandardReal; u1max: StandardReal;
    v1min: StandardReal; v1max: StandardReal; u2min: StandardReal;
    u2max: StandardReal; v2min: StandardReal; v2max: StandardReal): GeomAPI_ExtremaSurfaceSurface {.
    constructor, importcpp: "GeomAPI_ExtremaSurfaceSurface(@)",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc init*(this: var GeomAPI_ExtremaSurfaceSurface; s1: Handle[GeomSurface];
          s2: Handle[GeomSurface]) {.importcpp: "Init",
                                   header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc init*(this: var GeomAPI_ExtremaSurfaceSurface; s1: Handle[GeomSurface];
          s2: Handle[GeomSurface]; u1min: StandardReal; u1max: StandardReal;
          v1min: StandardReal; v1max: StandardReal; u2min: StandardReal;
          u2max: StandardReal; v2min: StandardReal; v2max: StandardReal) {.
    importcpp: "Init", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc nbExtrema*(this: GeomAPI_ExtremaSurfaceSurface): StandardInteger {.
    noSideEffect, importcpp: "NbExtrema",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
converter `standardInteger`*(this: GeomAPI_ExtremaSurfaceSurface): StandardInteger {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaSurfaceSurface::operator Standard_Integer",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc points*(this: GeomAPI_ExtremaSurfaceSurface; index: StandardInteger;
            p1: var GpPnt; p2: var GpPnt) {.noSideEffect, importcpp: "Points", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc parameters*(this: GeomAPI_ExtremaSurfaceSurface; index: StandardInteger;
                u1: var StandardReal; v1: var StandardReal; u2: var StandardReal;
                v2: var StandardReal) {.noSideEffect, importcpp: "Parameters", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc distance*(this: GeomAPI_ExtremaSurfaceSurface; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Distance",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc nearestPoints*(this: GeomAPI_ExtremaSurfaceSurface; p1: var GpPnt; p2: var GpPnt) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc lowerDistanceParameters*(this: GeomAPI_ExtremaSurfaceSurface;
                             u1: var StandardReal; v1: var StandardReal;
                             u2: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc lowerDistance*(this: GeomAPI_ExtremaSurfaceSurface): StandardReal {.
    noSideEffect, importcpp: "LowerDistance",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
converter `standardReal`*(this: GeomAPI_ExtremaSurfaceSurface): StandardReal {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaSurfaceSurface::operator Standard_Real",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc extrema*(this: GeomAPI_ExtremaSurfaceSurface): ExtremaExtSS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}

