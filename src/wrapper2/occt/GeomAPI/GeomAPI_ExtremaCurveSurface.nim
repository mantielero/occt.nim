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
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtCS

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtCS"
type
  GeomAPI_ExtremaCurveSurface* {.importcpp: "GeomAPI_ExtremaCurveSurface",
                                header: "GeomAPI_ExtremaCurveSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructs
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## algorithm
                                                                                        ## for
                                                                                        ## computing
                                                                                        ##
                                                                                        ## !
                                                                                        ## extrema
                                                                                        ## between
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## and
                                                                                        ## a
                                                                                        ## surface.
                                                                                        ## Use
                                                                                        ## an
                                                                                        ##
                                                                                        ## !
                                                                                        ## Init
                                                                                        ## function
                                                                                        ## to
                                                                                        ## define
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## and
                                                                                        ## the
                                                                                        ## surface
                                                                                        ## on
                                                                                        ##
                                                                                        ## !
                                                                                        ## which
                                                                                        ## it
                                                                                        ## is
                                                                                        ## going
                                                                                        ## to
                                                                                        ## work.


proc constructGeomAPI_ExtremaCurveSurface*(): GeomAPI_ExtremaCurveSurface {.
    constructor, importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc constructGeomAPI_ExtremaCurveSurface*(Curve: handle[Geom_Curve];
    Surface: handle[Geom_Surface]): GeomAPI_ExtremaCurveSurface {.constructor,
    importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc constructGeomAPI_ExtremaCurveSurface*(Curve: handle[Geom_Curve];
    Surface: handle[Geom_Surface]; Wmin: Standard_Real; Wmax: Standard_Real;
    Umin: Standard_Real; Umax: Standard_Real; Vmin: Standard_Real; Vmax: Standard_Real): GeomAPI_ExtremaCurveSurface {.
    constructor, importcpp: "GeomAPI_ExtremaCurveSurface(@)",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Init*(this: var GeomAPI_ExtremaCurveSurface; Curve: handle[Geom_Curve];
          Surface: handle[Geom_Surface]) {.importcpp: "Init",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Init*(this: var GeomAPI_ExtremaCurveSurface; Curve: handle[Geom_Curve];
          Surface: handle[Geom_Surface]; Wmin: Standard_Real; Wmax: Standard_Real;
          Umin: Standard_Real; Umax: Standard_Real; Vmin: Standard_Real;
          Vmax: Standard_Real) {.importcpp: "Init",
                               header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc NbExtrema*(this: GeomAPI_ExtremaCurveSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbExtrema", header: "GeomAPI_ExtremaCurveSurface.hxx".}
converter `Standard_Integer`*(this: GeomAPI_ExtremaCurveSurface): Standard_Integer {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveSurface::operator Standard_Integer",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Points*(this: GeomAPI_ExtremaCurveSurface; Index: Standard_Integer;
            P1: var gp_Pnt; P2: var gp_Pnt) {.noSideEffect, importcpp: "Points", header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Parameters*(this: GeomAPI_ExtremaCurveSurface; Index: Standard_Integer;
                W: var Standard_Real; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Distance*(this: GeomAPI_ExtremaCurveSurface; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc NearestPoints*(this: GeomAPI_ExtremaCurveSurface; PC: var gp_Pnt; PS: var gp_Pnt) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc LowerDistanceParameters*(this: GeomAPI_ExtremaCurveSurface;
                             W: var Standard_Real; U: var Standard_Real;
                             V: var Standard_Real) {.noSideEffect,
    importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc LowerDistance*(this: GeomAPI_ExtremaCurveSurface): Standard_Real {.
    noSideEffect, importcpp: "LowerDistance",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
converter `Standard_Real`*(this: GeomAPI_ExtremaCurveSurface): Standard_Real {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveSurface::operator Standard_Real",
    header: "GeomAPI_ExtremaCurveSurface.hxx".}
proc Extrema*(this: GeomAPI_ExtremaCurveSurface): Extrema_ExtCS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaCurveSurface.hxx".}