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

## !!!Ignored construct:  # _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColgp_Array1OfVec . hxx > [NewLine] # < TColgp_Array1OfVec2d . hxx > [NewLine] # < GeomInt_TheMultiLineOfWLApprox . hxx > [NewLine] # < Approx_Status . hxx > [NewLine] class GeomInt_TheMultiLineOfWLApprox ;
## Error: did not expect <!!!

discard "forward decl of ApproxInt_SvSurfaces"
type
  GeomIntTheMultiLineToolOfWLApprox* {.importcpp: "GeomInt_TheMultiLineToolOfWLApprox", header: "GeomInt_TheMultiLineToolOfWLApprox.hxx",
                                      bycopy.} = object ## ! Returns the number of multipoints of the TheMultiLine.


proc firstPoint*(ml: GeomIntTheMultiLineOfWLApprox): int {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::FirstPoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc lastPoint*(ml: GeomIntTheMultiLineOfWLApprox): int {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::LastPoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc nbP2d*(ml: GeomIntTheMultiLineOfWLApprox): int {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::NbP2d(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc nbP3d*(ml: GeomIntTheMultiLineOfWLApprox): int {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::NbP3d(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc value*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt) {.importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)", header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc value*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc value*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt; tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc tangency*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc tangency*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc tangency*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc curvature*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
               tabV: var TColgpArray1OfVec): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc curvature*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
               tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc curvature*(ml: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
               tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc makeMLBetween*(ml: GeomIntTheMultiLineOfWLApprox; i1: int; i2: int; nbPMin: int): GeomIntTheMultiLineOfWLApprox {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::MakeMLBetween(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc makeMLOneMorePoint*(ml: GeomIntTheMultiLineOfWLApprox; i1: int; i2: int;
                        indbad: int; otherLine: var GeomIntTheMultiLineOfWLApprox): bool {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::MakeMLOneMorePoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc whatStatus*(ml: GeomIntTheMultiLineOfWLApprox; i1: int; i2: int): ApproxStatus {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::WhatStatus(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc dump*(ml: GeomIntTheMultiLineOfWLApprox) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Dump(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
## !!!Ignored construct:  # TheMultiLine GeomInt_TheMultiLineOfWLApprox [NewLine] # TheMultiLine_hxx < GeomInt_TheMultiLineOfWLApprox . hxx > [NewLine] # TheMultiMPoint ApproxInt_SvSurfaces [NewLine] # TheMultiMPoint_hxx < ApproxInt_SvSurfaces . hxx > [NewLine] # ApproxInt_MultiLineTool GeomInt_TheMultiLineToolOfWLApprox [NewLine] # ApproxInt_MultiLineTool_hxx < GeomInt_TheMultiLineToolOfWLApprox . hxx > [NewLine] # < ApproxInt_MultiLineTool . lxx > [NewLine] # TheMultiLine [NewLine] # TheMultiLine_hxx [NewLine] # TheMultiMPoint [NewLine] # TheMultiMPoint_hxx [NewLine] # ApproxInt_MultiLineTool [NewLine] # ApproxInt_MultiLineTool_hxx [NewLine] #  _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile
## Error: did not expect <!!!

