##  Created on: 1994-03-17
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
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtPS,
  ../GeomAdaptor/GeomAdaptor_Surface, ../Extrema/Extrema_ExtAlgo,
  ../Extrema/Extrema_ExtFlag, ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Surface"
discard "forward decl of Extrema_ExtPS"
type
  GeomAPI_ProjectPointOnSurf* {.importcpp: "GeomAPI_ProjectPointOnSurf",
                               header: "GeomAPI_ProjectPointOnSurf.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## object.
                                                                                      ## Use
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## Init
                                                                                      ## function
                                                                                      ## for
                                                                                      ## further
                                                                                      ## initialization.


proc constructGeomAPI_ProjectPointOnSurf*(): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(P: gp_Pnt; Surface: handle[Geom_Surface];
    Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(P: gp_Pnt; Surface: handle[Geom_Surface];
    Tolerance: Standard_Real; Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(P: gp_Pnt; Surface: handle[Geom_Surface];
    Umin: Standard_Real; Usup: Standard_Real; Vmin: Standard_Real;
    Vsup: Standard_Real; Tolerance: Standard_Real;
    Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc constructGeomAPI_ProjectPointOnSurf*(P: gp_Pnt; Surface: handle[Geom_Surface];
    Umin: Standard_Real; Usup: Standard_Real; Vmin: Standard_Real;
    Vsup: Standard_Real; Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): GeomAPI_ProjectPointOnSurf {.
    constructor, importcpp: "GeomAPI_ProjectPointOnSurf(@)",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; P: gp_Pnt;
          Surface: handle[Geom_Surface]; Tolerance: Standard_Real;
          Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; P: gp_Pnt;
          Surface: handle[Geom_Surface];
          Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; P: gp_Pnt;
          Surface: handle[Geom_Surface]; Umin: Standard_Real; Usup: Standard_Real;
          Vmin: Standard_Real; Vsup: Standard_Real; Tolerance: Standard_Real;
          Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; P: gp_Pnt;
          Surface: handle[Geom_Surface]; Umin: Standard_Real; Usup: Standard_Real;
          Vmin: Standard_Real; Vsup: Standard_Real;
          Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; Surface: handle[Geom_Surface];
          Umin: Standard_Real; Usup: Standard_Real; Vmin: Standard_Real;
          Vsup: Standard_Real; Tolerance: Standard_Real;
          Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnSurf; Surface: handle[Geom_Surface];
          Umin: Standard_Real; Usup: Standard_Real; Vmin: Standard_Real;
          Vsup: Standard_Real; Algo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.
    importcpp: "Init", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc SetExtremaAlgo*(this: var GeomAPI_ProjectPointOnSurf; theAlgo: Extrema_ExtAlgo) {.
    importcpp: "SetExtremaAlgo", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc SetExtremaFlag*(this: var GeomAPI_ProjectPointOnSurf;
                    theExtFlag: Extrema_ExtFlag) {.importcpp: "SetExtremaFlag",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Perform*(this: var GeomAPI_ProjectPointOnSurf; P: gp_Pnt) {.importcpp: "Perform",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc IsDone*(this: GeomAPI_ProjectPointOnSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc NbPoints*(this: GeomAPI_ProjectPointOnSurf): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `Standard_Integer`*(this: GeomAPI_ProjectPointOnSurf): Standard_Integer {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator Standard_Integer",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Point*(this: GeomAPI_ProjectPointOnSurf; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Parameters*(this: GeomAPI_ProjectPointOnSurf; Index: Standard_Integer;
                U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Distance*(this: GeomAPI_ProjectPointOnSurf; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc NearestPoint*(this: GeomAPI_ProjectPointOnSurf): gp_Pnt {.noSideEffect,
    importcpp: "NearestPoint", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `gp_Pnt`*(this: GeomAPI_ProjectPointOnSurf): gp_Pnt {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator gp_Pnt",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc LowerDistanceParameters*(this: GeomAPI_ProjectPointOnSurf;
                             U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc LowerDistance*(this: GeomAPI_ProjectPointOnSurf): Standard_Real {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ProjectPointOnSurf.hxx".}
converter `Standard_Real`*(this: GeomAPI_ProjectPointOnSurf): Standard_Real {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnSurf::operator Standard_Real",
    header: "GeomAPI_ProjectPointOnSurf.hxx".}
proc Extrema*(this: GeomAPI_ProjectPointOnSurf): Extrema_ExtPS {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ProjectPointOnSurf.hxx".}