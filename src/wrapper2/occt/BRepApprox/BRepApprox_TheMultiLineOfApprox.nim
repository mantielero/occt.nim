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
    ptrSvSurfaces: StandardAddress; nbP3d: StandardInteger; nbP2d: StandardInteger;
    approxU1V1: StandardBoolean; approxU2V2: StandardBoolean; xo: StandardReal;
    yo: StandardReal; zo: StandardReal; u1o: StandardReal; v1o: StandardReal;
    u2o: StandardReal; v2o: StandardReal; p2DOnFirst: StandardBoolean;
    indMin: StandardInteger = 0; indMax: StandardInteger = 0): BRepApproxTheMultiLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc constructBRepApproxTheMultiLineOfApprox*(line: Handle[BRepApproxApproxLine];
    nbP3d: StandardInteger; nbP2d: StandardInteger; approxU1V1: StandardBoolean;
    approxU2V2: StandardBoolean; xo: StandardReal; yo: StandardReal; zo: StandardReal;
    u1o: StandardReal; v1o: StandardReal; u2o: StandardReal; v2o: StandardReal;
    p2DOnFirst: StandardBoolean; indMin: StandardInteger = 0;
    indMax: StandardInteger = 0): BRepApproxTheMultiLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc firstPoint*(this: BRepApproxTheMultiLineOfApprox): StandardInteger {.
    noSideEffect, importcpp: "FirstPoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc lastPoint*(this: BRepApproxTheMultiLineOfApprox): StandardInteger {.
    noSideEffect, importcpp: "LastPoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc nbP2d*(this: BRepApproxTheMultiLineOfApprox): StandardInteger {.noSideEffect,
    importcpp: "NbP2d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc nbP3d*(this: BRepApproxTheMultiLineOfApprox): StandardInteger {.noSideEffect,
    importcpp: "NbP3d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc whatStatus*(this: BRepApproxTheMultiLineOfApprox): ApproxStatus {.noSideEffect,
    importcpp: "WhatStatus", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
           tabPt: var TColgpArray1OfPnt) {.noSideEffect, importcpp: "Value", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
           tabPt2d: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc value*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
           tabPt: var TColgpArray1OfPnt; tabPt2d: var TColgpArray1OfPnt2d) {.
    noSideEffect, importcpp: "Value", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
              tabV: var TColgpArray1OfVec): StandardBoolean {.noSideEffect,
    importcpp: "Tangency", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
              tabV2d: var TColgpArray1OfVec2d): StandardBoolean {.noSideEffect,
    importcpp: "Tangency", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc tangency*(this: BRepApproxTheMultiLineOfApprox; mPointIndex: StandardInteger;
              tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): StandardBoolean {.
    noSideEffect, importcpp: "Tangency",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc makeMLBetween*(this: BRepApproxTheMultiLineOfApprox; low: StandardInteger;
                   high: StandardInteger; nbPointsToInsert: StandardInteger): BRepApproxTheMultiLineOfApprox {.
    noSideEffect, importcpp: "MakeMLBetween",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc makeMLOneMorePoint*(this: BRepApproxTheMultiLineOfApprox;
                        low: StandardInteger; high: StandardInteger;
                        indbad: StandardInteger;
                        otherLine: var BRepApproxTheMultiLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "MakeMLOneMorePoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc dump*(this: BRepApproxTheMultiLineOfApprox) {.noSideEffect, importcpp: "Dump",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}

