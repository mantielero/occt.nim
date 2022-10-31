import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types
import ../../tkg2d/geom2d/geom2d_types
import geomfill_types





##  Created on: 1997-11-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newGeomFillSweep*(location: Handle[GeomFillLocationLaw];
                      withKpart: bool = true): GeomFillSweep {.cdecl, constructor,
    importcpp: "GeomFill_Sweep(@)", header: "GeomFill_Sweep.hxx".}
proc setDomain*(this: var GeomFillSweep; first: cfloat; last: cfloat;
               sectionFirst: cfloat; sectionLast: cfloat) {.cdecl,
    importcpp: "SetDomain", header: "GeomFill_Sweep.hxx".}
proc setTolerance*(this: var GeomFillSweep; tol3d: cfloat; boundTol: cfloat = 1.0;
                  tol2d: cfloat = 1.0e-5; tolAngular: cfloat = 1.0) {.cdecl,
    importcpp: "SetTolerance", header: "GeomFill_Sweep.hxx".}
proc setForceApproxC1*(this: var GeomFillSweep; forceApproxC1: bool) {.cdecl,
    importcpp: "SetForceApproxC1", header: "GeomFill_Sweep.hxx".}
proc exchangeUV*(this: GeomFillSweep): bool {.noSideEffect, cdecl,
    importcpp: "ExchangeUV", header: "GeomFill_Sweep.hxx".}
proc uReversed*(this: GeomFillSweep): bool {.noSideEffect, cdecl,
    importcpp: "UReversed", header: "GeomFill_Sweep.hxx".}
proc vReversed*(this: GeomFillSweep): bool {.noSideEffect, cdecl,
    importcpp: "VReversed", header: "GeomFill_Sweep.hxx".}
proc build*(this: var GeomFillSweep; section: Handle[GeomFillSectionLaw];
           methode: GeomFillApproxStyle = geomFillLocation;
           continuity: GeomAbsShape = geomAbsC2; degmax: cint = 10; segmax: cint = 30) {.
    cdecl, importcpp: "Build", header: "GeomFill_Sweep.hxx".}
proc isDone*(this: GeomFillSweep): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "GeomFill_Sweep.hxx".}
proc errorOnSurface*(this: GeomFillSweep): cfloat {.noSideEffect, cdecl,
    importcpp: "ErrorOnSurface", header: "GeomFill_Sweep.hxx".}
proc errorOnRestriction*(this: GeomFillSweep; isFirst: bool; uError: var cfloat;
                        vError: var cfloat) {.noSideEffect, cdecl,
    importcpp: "ErrorOnRestriction", header: "GeomFill_Sweep.hxx".}
proc errorOnTrace*(this: GeomFillSweep; indexOfTrace: cint; uError: var cfloat;
                  vError: var cfloat) {.noSideEffect, cdecl,
                                     importcpp: "ErrorOnTrace", header: "GeomFill_Sweep.hxx".}
proc surface*(this: GeomFillSweep): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "GeomFill_Sweep.hxx".}
proc restriction*(this: GeomFillSweep; isFirst: bool): Handle[Geom2dCurve] {.
    noSideEffect, cdecl, importcpp: "Restriction", header: "GeomFill_Sweep.hxx".}
proc numberOfTrace*(this: GeomFillSweep): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfTrace", header: "GeomFill_Sweep.hxx".}
proc trace*(this: GeomFillSweep; indexOfTrace: cint): Handle[Geom2dCurve] {.
    noSideEffect, cdecl, importcpp: "Trace", header: "GeomFill_Sweep.hxx".}


