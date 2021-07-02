##  Created on: 2004-05-20
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
discard "forward decl of Geom_Curve"
type
  BinToolsCurveSet* {.importcpp: "BinTools_CurveSet",
                     header: "BinTools_CurveSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructBinToolsCurveSet*(): BinToolsCurveSet {.constructor,
    importcpp: "BinTools_CurveSet(@)", header: "BinTools_CurveSet.hxx".}
proc clear*(this: var BinToolsCurveSet) {.importcpp: "Clear",
                                      header: "BinTools_CurveSet.hxx".}
proc add*(this: var BinToolsCurveSet; c: Handle[GeomCurve]): StandardInteger {.
    importcpp: "Add", header: "BinTools_CurveSet.hxx".}
proc curve*(this: BinToolsCurveSet; i: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Curve", header: "BinTools_CurveSet.hxx".}
proc index*(this: BinToolsCurveSet; c: Handle[GeomCurve]): StandardInteger {.
    noSideEffect, importcpp: "Index", header: "BinTools_CurveSet.hxx".}
proc write*(this: BinToolsCurveSet; os: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.noSideEffect,
    importcpp: "Write", header: "BinTools_CurveSet.hxx".}
proc read*(this: var BinToolsCurveSet; `is`: var StandardIStream;
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinTools_CurveSet.hxx".}
proc writeCurve*(c: Handle[GeomCurve]; os: var StandardOStream) {.
    importcpp: "BinTools_CurveSet::WriteCurve(@)", header: "BinTools_CurveSet.hxx".}
proc readCurve*(`is`: var StandardIStream; c: var Handle[GeomCurve]): var StandardIStream {.
    importcpp: "BinTools_CurveSet::ReadCurve(@)", header: "BinTools_CurveSet.hxx".}

