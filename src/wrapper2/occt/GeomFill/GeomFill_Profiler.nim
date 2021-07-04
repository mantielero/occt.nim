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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColGeom/TColGeom_SequenceOfCurve,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom_Curve"
type
  GeomFill_Profiler* {.importcpp: "GeomFill_Profiler",
                      header: "GeomFill_Profiler.hxx", bycopy.} = object


proc constructGeomFill_Profiler*(): GeomFill_Profiler {.constructor,
    importcpp: "GeomFill_Profiler(@)", header: "GeomFill_Profiler.hxx".}
proc destroyGeomFill_Profiler*(this: var GeomFill_Profiler) {.
    importcpp: "#.~GeomFill_Profiler()", header: "GeomFill_Profiler.hxx".}
proc AddCurve*(this: var GeomFill_Profiler; Curve: handle[Geom_Curve]) {.
    importcpp: "AddCurve", header: "GeomFill_Profiler.hxx".}
proc Perform*(this: var GeomFill_Profiler; PTol: Standard_Real) {.
    importcpp: "Perform", header: "GeomFill_Profiler.hxx".}
proc Degree*(this: GeomFill_Profiler): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "GeomFill_Profiler.hxx".}
proc IsPeriodic*(this: GeomFill_Profiler): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomFill_Profiler.hxx".}
proc NbPoles*(this: GeomFill_Profiler): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "GeomFill_Profiler.hxx".}
proc Poles*(this: GeomFill_Profiler; Index: Standard_Integer;
           Poles: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Poles",
    header: "GeomFill_Profiler.hxx".}
proc Weights*(this: GeomFill_Profiler; Index: Standard_Integer;
             Weights: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "GeomFill_Profiler.hxx".}
proc NbKnots*(this: GeomFill_Profiler): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "GeomFill_Profiler.hxx".}
proc KnotsAndMults*(this: GeomFill_Profiler; Knots: var TColStd_Array1OfReal;
                   Mults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "KnotsAndMults", header: "GeomFill_Profiler.hxx".}
proc Curve*(this: GeomFill_Profiler; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Curve", header: "GeomFill_Profiler.hxx".}