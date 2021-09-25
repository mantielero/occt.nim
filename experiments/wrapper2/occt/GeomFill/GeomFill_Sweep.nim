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

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Geom_Surface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2d_Curve"
type
  GeomFillSweep* {.importcpp: "GeomFill_Sweep", header: "GeomFill_Sweep.hxx", bycopy.} = object


proc constructGeomFillSweep*(location: Handle[GeomFillLocationLaw];
                            withKpart: bool = true): GeomFillSweep {.constructor,
    importcpp: "GeomFill_Sweep(@)", header: "GeomFill_Sweep.hxx".}
proc setDomain*(this: var GeomFillSweep; first: float; last: float; sectionFirst: float;
               sectionLast: float) {.importcpp: "SetDomain",
                                   header: "GeomFill_Sweep.hxx".}
proc setTolerance*(this: var GeomFillSweep; tol3d: float; boundTol: float = 1.0;
                  tol2d: float = 1.0e-5; tolAngular: float = 1.0) {.
    importcpp: "SetTolerance", header: "GeomFill_Sweep.hxx".}
proc setForceApproxC1*(this: var GeomFillSweep; forceApproxC1: bool) {.
    importcpp: "SetForceApproxC1", header: "GeomFill_Sweep.hxx".}
proc exchangeUV*(this: GeomFillSweep): bool {.noSideEffect, importcpp: "ExchangeUV",
    header: "GeomFill_Sweep.hxx".}
proc uReversed*(this: GeomFillSweep): bool {.noSideEffect, importcpp: "UReversed",
    header: "GeomFill_Sweep.hxx".}
proc vReversed*(this: GeomFillSweep): bool {.noSideEffect, importcpp: "VReversed",
    header: "GeomFill_Sweep.hxx".}
proc build*(this: var GeomFillSweep; section: Handle[GeomFillSectionLaw];
           methode: GeomFillApproxStyle = geomFillLocation;
           continuity: GeomAbsShape = geomAbsC2; degmax: int = 10; segmax: int = 30) {.
    importcpp: "Build", header: "GeomFill_Sweep.hxx".}
proc isDone*(this: GeomFillSweep): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "GeomFill_Sweep.hxx".}
proc errorOnSurface*(this: GeomFillSweep): float {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "GeomFill_Sweep.hxx".}
proc errorOnRestriction*(this: GeomFillSweep; isFirst: bool; uError: var float;
                        vError: var float) {.noSideEffect,
    importcpp: "ErrorOnRestriction", header: "GeomFill_Sweep.hxx".}
proc errorOnTrace*(this: GeomFillSweep; indexOfTrace: int; uError: var float;
                  vError: var float) {.noSideEffect, importcpp: "ErrorOnTrace",
                                    header: "GeomFill_Sweep.hxx".}
proc surface*(this: GeomFillSweep): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_Sweep.hxx".}
proc restriction*(this: GeomFillSweep; isFirst: bool): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Restriction", header: "GeomFill_Sweep.hxx".}
proc numberOfTrace*(this: GeomFillSweep): int {.noSideEffect,
    importcpp: "NumberOfTrace", header: "GeomFill_Sweep.hxx".}
proc trace*(this: GeomFillSweep; indexOfTrace: int): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Trace", header: "GeomFill_Sweep.hxx".}
