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


proc newGeomFillProfiler*(): GeomFillProfiler {.cdecl, constructor,
    importcpp: "GeomFill_Profiler(@)", dynlib: tkgeomalgo.}
proc destroyGeomFillProfiler*(this: var GeomFillProfiler) {.cdecl,
    importcpp: "#.~GeomFill_Profiler()", dynlib: tkgeomalgo.}
proc addCurve*(this: var GeomFillProfiler; curve: Handle[GeomCurve]) {.cdecl,
    importcpp: "AddCurve", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillProfiler; pTol: cfloat) {.cdecl, importcpp: "Perform",
    dynlib: tkgeomalgo.}
proc degree*(this: GeomFillProfiler): cint {.noSideEffect, cdecl, importcpp: "Degree",
    dynlib: tkgeomalgo.}
proc isPeriodic*(this: GeomFillProfiler): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkgeomalgo.}
proc nbPoles*(this: GeomFillProfiler): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkgeomalgo.}
proc poles*(this: GeomFillProfiler; index: cint; poles: var TColgpArray1OfPnt) {.
    noSideEffect, cdecl, importcpp: "Poles", dynlib: tkgeomalgo.}
proc weights*(this: GeomFillProfiler; index: cint; weights: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Weights", dynlib: tkgeomalgo.}
proc nbKnots*(this: GeomFillProfiler): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkgeomalgo.}
proc knotsAndMults*(this: GeomFillProfiler; knots: var TColStdArray1OfReal;
                   mults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "KnotsAndMults", dynlib: tkgeomalgo.}
proc curve*(this: GeomFillProfiler; index: cint): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "Curve", dynlib: tkgeomalgo.}