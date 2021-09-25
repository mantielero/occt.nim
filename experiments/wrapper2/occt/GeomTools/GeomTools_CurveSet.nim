##  Created on: 1993-07-19
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of Geom_Curve"
type
  GeomToolsCurveSet* {.importcpp: "GeomTools_CurveSet",
                      header: "GeomTools_CurveSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructGeomToolsCurveSet*(): GeomToolsCurveSet {.constructor,
    importcpp: "GeomTools_CurveSet(@)", header: "GeomTools_CurveSet.hxx".}
proc clear*(this: var GeomToolsCurveSet) {.importcpp: "Clear",
                                       header: "GeomTools_CurveSet.hxx".}
proc add*(this: var GeomToolsCurveSet; c: Handle[GeomCurve]): int {.importcpp: "Add",
    header: "GeomTools_CurveSet.hxx".}
proc curve*(this: GeomToolsCurveSet; i: int): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomTools_CurveSet.hxx".}
proc index*(this: GeomToolsCurveSet; c: Handle[GeomCurve]): int {.noSideEffect,
    importcpp: "Index", header: "GeomTools_CurveSet.hxx".}
proc dump*(this: GeomToolsCurveSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_CurveSet.hxx".}
proc write*(this: GeomToolsCurveSet; os: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_CurveSet.hxx".}
proc read*(this: var GeomToolsCurveSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "GeomTools_CurveSet.hxx".}
proc printCurve*(c: Handle[GeomCurve]; os: var StandardOStream; compact: bool = false) {.
    importcpp: "GeomTools_CurveSet::PrintCurve(@)",
    header: "GeomTools_CurveSet.hxx".}
proc readCurve*(`is`: var StandardIStream): Handle[GeomCurve] {.
    importcpp: "GeomTools_CurveSet::ReadCurve(@)",
    header: "GeomTools_CurveSet.hxx".}
