##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of ApproxInt_SvSurfaces"
type
  BRepApproxTheMultiLineOfApprox* {.importcpp: "BRepApprox_TheMultiLineOfApprox", header: "BRepApprox_TheMultiLineOfApprox.hxx",
                                   bycopy.} = object


proc constructBRepApproxTheMultiLineOfApprox*(): BRepApproxTheMultiLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc constructBRepApproxTheMultiLineOfApprox*(line: Handle[BRepApproxApproxLine];
    ptrSvSurfaces: StandardAddress; nbP3d: int; nbP2d: int; approxU1V1: bool;
    approxU2V2: bool; xo: float; yo: float; zo: float; u1o: float; v1o: float; u2o: float;
    v2o: float; p2DOnFirst: bool; indMin: int = 0; indMax: int = 0): BRepApproxTheMultiLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc constructBRepApproxTheMultiLineOfApprox*(line: Handle[BRepApproxApproxLine];
    nbP3d: int; nbP2d: int; approxU1V1: bool; approxU2V2: bool; xo: float; yo: float;
    zo: float; u1o: float; v1o: float; u2o: float; v2o: float; p2DOnFirst: bool;
    indMin: int = 0; indMax: int = 0): BRepApproxTheMultiLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc firstPoint*(this: BRepApproxTheMultiLineOfApprox): int {.noSideEffect,
    importcpp: "FirstPoint", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc lastPoint*(this: BRepApproxTheMultiLineOfApprox): int {.noSideEffect,
    importcpp: "LastPoint", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc nbP2d*(this: BRepApproxTheMultiLineOfApprox): int {.noSideEffect,
    importcpp: "NbP2d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc nbP3d*(this: BRepApproxTheMultiLineOfApprox): int {.noSideEffect,
    importcpp: "NbP3d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc whatStatus*(this: BRepApproxTheMultiLineOfApprox): ApproxStatus {.noSideEffect,
    importcpp: "WhatStatus", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt) {.noSideEffect, importcpp: "Value", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt2d: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt; tabPt2d: var TColgpArray1OfPnt2d) {.
    noSideEffect, importcpp: "Value", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec): bool {.noSideEffect,
    importcpp: "Tangency", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV2d: var TColgpArray1OfVec2d): bool {.noSideEffect,
    importcpp: "Tangency", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): bool {.
    noSideEffect, importcpp: "Tangency",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc makeMLBetween*(this: BRepApproxTheMultiLineOfApprox; low: int; high: int;
                   nbPointsToInsert: int): BRepApproxTheMultiLineOfApprox {.
    noSideEffect, importcpp: "MakeMLBetween",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc makeMLOneMorePoint*(this: BRepApproxTheMultiLineOfApprox; low: int; high: int;
                        indbad: int; otherLine: var BRepApproxTheMultiLineOfApprox): bool {.
    noSideEffect, importcpp: "MakeMLOneMorePoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc dump*(this: BRepApproxTheMultiLineOfApprox) {.noSideEffect, importcpp: "Dump",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
