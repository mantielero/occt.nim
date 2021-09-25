##  Created on: 2004-05-18
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  BinToolsCurve2dSet* {.importcpp: "BinTools_Curve2dSet",
                       header: "BinTools_Curve2dSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructBinToolsCurve2dSet*(): BinToolsCurve2dSet {.constructor,
    importcpp: "BinTools_Curve2dSet(@)", header: "BinTools_Curve2dSet.hxx".}
proc clear*(this: var BinToolsCurve2dSet) {.importcpp: "Clear",
                                        header: "BinTools_Curve2dSet.hxx".}
proc add*(this: var BinToolsCurve2dSet; c: Handle[Geom2dCurve]): int {.
    importcpp: "Add", header: "BinTools_Curve2dSet.hxx".}
proc curve2d*(this: BinToolsCurve2dSet; i: int): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Curve2d", header: "BinTools_Curve2dSet.hxx".}
proc index*(this: BinToolsCurve2dSet; c: Handle[Geom2dCurve]): int {.noSideEffect,
    importcpp: "Index", header: "BinTools_Curve2dSet.hxx".}
proc dump*(this: BinToolsCurve2dSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "BinTools_Curve2dSet.hxx".}
proc write*(this: BinToolsCurve2dSet; os: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.noSideEffect,
    importcpp: "Write", header: "BinTools_Curve2dSet.hxx".}
proc read*(this: var BinToolsCurve2dSet; `is`: var StandardIStream;
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinTools_Curve2dSet.hxx".}
proc writeCurve2d*(c: Handle[Geom2dCurve]; os: var StandardOStream) {.
    importcpp: "BinTools_Curve2dSet::WriteCurve2d(@)",
    header: "BinTools_Curve2dSet.hxx".}
proc readCurve2d*(`is`: var StandardIStream; c: var Handle[Geom2dCurve]): var StandardIStream {.
    importcpp: "BinTools_Curve2dSet::ReadCurve2d(@)",
    header: "BinTools_Curve2dSet.hxx".}
