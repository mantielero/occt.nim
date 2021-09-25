##  Created on: 1994-02-17
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom_Curve"
type
  GeomFillProfiler* {.importcpp: "GeomFill_Profiler",
                     header: "GeomFill_Profiler.hxx", bycopy.} = object


proc constructGeomFillProfiler*(): GeomFillProfiler {.constructor,
    importcpp: "GeomFill_Profiler(@)", header: "GeomFill_Profiler.hxx".}
proc destroyGeomFillProfiler*(this: var GeomFillProfiler) {.
    importcpp: "#.~GeomFill_Profiler()", header: "GeomFill_Profiler.hxx".}
proc addCurve*(this: var GeomFillProfiler; curve: Handle[GeomCurve]) {.
    importcpp: "AddCurve", header: "GeomFill_Profiler.hxx".}
proc perform*(this: var GeomFillProfiler; pTol: float) {.importcpp: "Perform",
    header: "GeomFill_Profiler.hxx".}
proc degree*(this: GeomFillProfiler): int {.noSideEffect, importcpp: "Degree",
                                        header: "GeomFill_Profiler.hxx".}
proc isPeriodic*(this: GeomFillProfiler): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomFill_Profiler.hxx".}
proc nbPoles*(this: GeomFillProfiler): int {.noSideEffect, importcpp: "NbPoles",
    header: "GeomFill_Profiler.hxx".}
proc poles*(this: GeomFillProfiler; index: int; poles: var TColgpArray1OfPnt) {.
    noSideEffect, importcpp: "Poles", header: "GeomFill_Profiler.hxx".}
proc weights*(this: GeomFillProfiler; index: int; weights: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Weights", header: "GeomFill_Profiler.hxx".}
proc nbKnots*(this: GeomFillProfiler): int {.noSideEffect, importcpp: "NbKnots",
    header: "GeomFill_Profiler.hxx".}
proc knotsAndMults*(this: GeomFillProfiler; knots: var TColStdArray1OfReal;
                   mults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "KnotsAndMults", header: "GeomFill_Profiler.hxx".}
proc curve*(this: GeomFillProfiler; index: int): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomFill_Profiler.hxx".}
