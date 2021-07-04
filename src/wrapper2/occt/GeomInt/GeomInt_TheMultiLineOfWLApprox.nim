##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of IntPatch_WLine"
discard "forward decl of ApproxInt_SvSurfaces"
type
  GeomInt_TheMultiLineOfWLApprox* {.importcpp: "GeomInt_TheMultiLineOfWLApprox", header: "GeomInt_TheMultiLineOfWLApprox.hxx",
                                   bycopy.} = object


proc constructGeomInt_TheMultiLineOfWLApprox*(): GeomInt_TheMultiLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc constructGeomInt_TheMultiLineOfWLApprox*(line: handle[IntPatch_WLine];
    PtrSvSurfaces: Standard_Address; NbP3d: Standard_Integer;
    NbP2d: Standard_Integer; ApproxU1V1: Standard_Boolean;
    ApproxU2V2: Standard_Boolean; xo: Standard_Real; yo: Standard_Real;
    zo: Standard_Real; u1o: Standard_Real; v1o: Standard_Real; u2o: Standard_Real;
    v2o: Standard_Real; P2DOnFirst: Standard_Boolean; IndMin: Standard_Integer = 0;
    IndMax: Standard_Integer = 0): GeomInt_TheMultiLineOfWLApprox {.constructor,
    importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc constructGeomInt_TheMultiLineOfWLApprox*(line: handle[IntPatch_WLine];
    NbP3d: Standard_Integer; NbP2d: Standard_Integer; ApproxU1V1: Standard_Boolean;
    ApproxU2V2: Standard_Boolean; xo: Standard_Real; yo: Standard_Real;
    zo: Standard_Real; u1o: Standard_Real; v1o: Standard_Real; u2o: Standard_Real;
    v2o: Standard_Real; P2DOnFirst: Standard_Boolean; IndMin: Standard_Integer = 0;
    IndMax: Standard_Integer = 0): GeomInt_TheMultiLineOfWLApprox {.constructor,
    importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc FirstPoint*(this: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "FirstPoint",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc LastPoint*(this: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "LastPoint",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc NbP2d*(this: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.noSideEffect,
    importcpp: "NbP2d", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc NbP3d*(this: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.noSideEffect,
    importcpp: "NbP3d", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc WhatStatus*(this: GeomInt_TheMultiLineOfWLApprox): Approx_Status {.
    noSideEffect, importcpp: "WhatStatus",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Value*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Value",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Value*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt2d: var TColgp_Array1OfPnt2d) {.noSideEffect, importcpp: "Value",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Value*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt; tabPt2d: var TColgp_Array1OfPnt2d) {.
    noSideEffect, importcpp: "Value", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Tangency*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec): Standard_Boolean {.noSideEffect,
    importcpp: "Tangency", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Tangency*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.noSideEffect,
    importcpp: "Tangency", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Tangency*(this: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    noSideEffect, importcpp: "Tangency",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc MakeMLBetween*(this: GeomInt_TheMultiLineOfWLApprox; Low: Standard_Integer;
                   High: Standard_Integer; NbPointsToInsert: Standard_Integer): GeomInt_TheMultiLineOfWLApprox {.
    noSideEffect, importcpp: "MakeMLBetween",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc MakeMLOneMorePoint*(this: GeomInt_TheMultiLineOfWLApprox;
                        Low: Standard_Integer; High: Standard_Integer;
                        indbad: Standard_Integer;
                        OtherLine: var GeomInt_TheMultiLineOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "MakeMLOneMorePoint",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc Dump*(this: GeomInt_TheMultiLineOfWLApprox) {.noSideEffect, importcpp: "Dump",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}