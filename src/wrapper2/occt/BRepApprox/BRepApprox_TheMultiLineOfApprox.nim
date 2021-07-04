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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Approx/Approx_Status,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of ApproxInt_SvSurfaces"
type
  BRepApprox_TheMultiLineOfApprox* {.importcpp: "BRepApprox_TheMultiLineOfApprox", header: "BRepApprox_TheMultiLineOfApprox.hxx",
                                    bycopy.} = object


proc constructBRepApprox_TheMultiLineOfApprox*(): BRepApprox_TheMultiLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc constructBRepApprox_TheMultiLineOfApprox*(
    line: handle[BRepApprox_ApproxLine]; PtrSvSurfaces: Standard_Address;
    NbP3d: Standard_Integer; NbP2d: Standard_Integer; ApproxU1V1: Standard_Boolean;
    ApproxU2V2: Standard_Boolean; xo: Standard_Real; yo: Standard_Real;
    zo: Standard_Real; u1o: Standard_Real; v1o: Standard_Real; u2o: Standard_Real;
    v2o: Standard_Real; P2DOnFirst: Standard_Boolean; IndMin: Standard_Integer = 0;
    IndMax: Standard_Integer = 0): BRepApprox_TheMultiLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc constructBRepApprox_TheMultiLineOfApprox*(
    line: handle[BRepApprox_ApproxLine]; NbP3d: Standard_Integer;
    NbP2d: Standard_Integer; ApproxU1V1: Standard_Boolean;
    ApproxU2V2: Standard_Boolean; xo: Standard_Real; yo: Standard_Real;
    zo: Standard_Real; u1o: Standard_Real; v1o: Standard_Real; u2o: Standard_Real;
    v2o: Standard_Real; P2DOnFirst: Standard_Boolean; IndMin: Standard_Integer = 0;
    IndMax: Standard_Integer = 0): BRepApprox_TheMultiLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheMultiLineOfApprox(@)",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc FirstPoint*(this: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "FirstPoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc LastPoint*(this: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "LastPoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc NbP2d*(this: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.noSideEffect,
    importcpp: "NbP2d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc NbP3d*(this: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.noSideEffect,
    importcpp: "NbP3d", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc WhatStatus*(this: BRepApprox_TheMultiLineOfApprox): Approx_Status {.
    noSideEffect, importcpp: "WhatStatus",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Value*(this: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Value*(this: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt2d: var TColgp_Array1OfPnt2d) {.noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Value*(this: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt; tabPt2d: var TColgp_Array1OfPnt2d) {.
    noSideEffect, importcpp: "Value", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Tangency*(this: BRepApprox_TheMultiLineOfApprox;
              MPointIndex: Standard_Integer; tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    noSideEffect, importcpp: "Tangency",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Tangency*(this: BRepApprox_TheMultiLineOfApprox;
              MPointIndex: Standard_Integer; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    noSideEffect, importcpp: "Tangency",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Tangency*(this: BRepApprox_TheMultiLineOfApprox;
              MPointIndex: Standard_Integer; tabV: var TColgp_Array1OfVec;
              tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.noSideEffect,
    importcpp: "Tangency", header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc MakeMLBetween*(this: BRepApprox_TheMultiLineOfApprox; Low: Standard_Integer;
                   High: Standard_Integer; NbPointsToInsert: Standard_Integer): BRepApprox_TheMultiLineOfApprox {.
    noSideEffect, importcpp: "MakeMLBetween",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc MakeMLOneMorePoint*(this: BRepApprox_TheMultiLineOfApprox;
                        Low: Standard_Integer; High: Standard_Integer;
                        indbad: Standard_Integer;
                        OtherLine: var BRepApprox_TheMultiLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "MakeMLOneMorePoint",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}
proc Dump*(this: BRepApprox_TheMultiLineOfApprox) {.noSideEffect, importcpp: "Dump",
    header: "BRepApprox_TheMultiLineOfApprox.hxx".}