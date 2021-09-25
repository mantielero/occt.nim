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
discard "forward decl of Geom2d_Curve"
type
  GeomToolsCurve2dSet* {.importcpp: "GeomTools_Curve2dSet",
                        header: "GeomTools_Curve2dSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructGeomToolsCurve2dSet*(): GeomToolsCurve2dSet {.constructor,
    importcpp: "GeomTools_Curve2dSet(@)", header: "GeomTools_Curve2dSet.hxx".}
proc clear*(this: var GeomToolsCurve2dSet) {.importcpp: "Clear",
    header: "GeomTools_Curve2dSet.hxx".}
proc add*(this: var GeomToolsCurve2dSet; c: Handle[Geom2dCurve]): int {.
    importcpp: "Add", header: "GeomTools_Curve2dSet.hxx".}
proc curve2d*(this: GeomToolsCurve2dSet; i: int): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Curve2d", header: "GeomTools_Curve2dSet.hxx".}
proc index*(this: GeomToolsCurve2dSet; c: Handle[Geom2dCurve]): int {.noSideEffect,
    importcpp: "Index", header: "GeomTools_Curve2dSet.hxx".}
proc dump*(this: GeomToolsCurve2dSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_Curve2dSet.hxx".}
proc write*(this: GeomToolsCurve2dSet; os: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_Curve2dSet.hxx".}
proc read*(this: var GeomToolsCurve2dSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "GeomTools_Curve2dSet.hxx".}
proc printCurve2d*(c: Handle[Geom2dCurve]; os: var StandardOStream;
                  compact: bool = false) {.importcpp: "GeomTools_Curve2dSet::PrintCurve2d(@)",
                                       header: "GeomTools_Curve2dSet.hxx".}
proc readCurve2d*(`is`: var StandardIStream): Handle[Geom2dCurve] {.
    importcpp: "GeomTools_Curve2dSet::ReadCurve2d(@)",
    header: "GeomTools_Curve2dSet.hxx".}
