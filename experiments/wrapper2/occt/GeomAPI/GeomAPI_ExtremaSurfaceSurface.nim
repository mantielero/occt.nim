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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtSS

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
proc constructGeomAPI_ExtremaSurfaceSurface*(S1: handle[Geom_Surface];
    S2: handle[Geom_Surface]): GeomAPI_ExtremaSurfaceSurface {.constructor,
    importcpp: "GeomAPI_ExtremaSurfaceSurface(@)",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc constructGeomAPI_ExtremaSurfaceSurface*(S1: handle[Geom_Surface];
    S2: handle[Geom_Surface]; U1min: Standard_Real; U1max: Standard_Real;
    V1min: Standard_Real; V1max: Standard_Real; U2min: Standard_Real;
    U2max: Standard_Real; V2min: Standard_Real; V2max: Standard_Real): GeomAPI_ExtremaSurfaceSurface {.
    constructor, importcpp: "GeomAPI_ExtremaSurfaceSurface(@)",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Init*(this: var GeomAPI_ExtremaSurfaceSurface; S1: handle[Geom_Surface];
          S2: handle[Geom_Surface]) {.importcpp: "Init",
                                    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Init*(this: var GeomAPI_ExtremaSurfaceSurface; S1: handle[Geom_Surface];
          S2: handle[Geom_Surface]; U1min: Standard_Real; U1max: Standard_Real;
          V1min: Standard_Real; V1max: Standard_Real; U2min: Standard_Real;
          U2max: Standard_Real; V2min: Standard_Real; V2max: Standard_Real) {.
    importcpp: "Init", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc NbExtrema*(this: GeomAPI_ExtremaSurfaceSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbExtrema",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
converter `Standard_Integer`*(this: GeomAPI_ExtremaSurfaceSurface): Standard_Integer {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaSurfaceSurface::operator Standard_Integer",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Points*(this: GeomAPI_ExtremaSurfaceSurface; Index: Standard_Integer;
            P1: var gp_Pnt; P2: var gp_Pnt) {.noSideEffect, importcpp: "Points", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Parameters*(this: GeomAPI_ExtremaSurfaceSurface; Index: Standard_Integer;
                U1: var Standard_Real; V1: var Standard_Real; U2: var Standard_Real;
                V2: var Standard_Real) {.noSideEffect, importcpp: "Parameters", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Distance*(this: GeomAPI_ExtremaSurfaceSurface; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc NearestPoints*(this: GeomAPI_ExtremaSurfaceSurface; P1: var gp_Pnt;
                   P2: var gp_Pnt) {.noSideEffect, importcpp: "NearestPoints",
                                  header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc LowerDistanceParameters*(this: GeomAPI_ExtremaSurfaceSurface;
                             U1: var Standard_Real; V1: var Standard_Real;
                             U2: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc LowerDistance*(this: GeomAPI_ExtremaSurfaceSurface): Standard_Real {.
    noSideEffect, importcpp: "LowerDistance",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
converter `Standard_Real`*(this: GeomAPI_ExtremaSurfaceSurface): Standard_Real {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaSurfaceSurface::operator Standard_Real",
    header: "GeomAPI_ExtremaSurfaceSurface.hxx".}
proc Extrema*(this: GeomAPI_ExtremaSurfaceSurface): Extrema_ExtSS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaSurfaceSurface.hxx".}