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

## !!!Ignored construct:  # _BRepApprox_TheMultiLineToolOfApprox_HeaderFile [NewLine] # _BRepApprox_TheMultiLineToolOfApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColgp_Array1OfVec . hxx > [NewLine] # < TColgp_Array1OfVec2d . hxx > [NewLine] # < BRepApprox_TheMultiLineOfApprox . hxx > [NewLine] # < Approx_Status . hxx > [NewLine] class BRepApprox_TheMultiLineOfApprox ;
## Error: did not expect <!!!

discard "forward decl of ApproxInt_SvSurfaces"
type
  BRepApproxTheMultiLineToolOfApprox* {.importcpp: "BRepApprox_TheMultiLineToolOfApprox", header: "BRepApprox_TheMultiLineToolOfApprox.hxx",
                                       bycopy.} = object ## ! Returns the number of multipoints of the TheMultiLine.


proc firstPoint*(ml: BRepApproxTheMultiLineOfApprox): int {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::FirstPoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc lastPoint*(ml: BRepApproxTheMultiLineOfApprox): int {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::LastPoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc nbP2d*(ml: BRepApproxTheMultiLineOfApprox): int {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::NbP2d(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc nbP3d*(ml: BRepApproxTheMultiLineOfApprox): int {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::NbP3d(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc value*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt) {.importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)", header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc value*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc value*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt; tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc tangency*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc tangency*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc tangency*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc curvature*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
               tabV: var TColgpArray1OfVec): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc curvature*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
               tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc curvature*(ml: BRepApproxTheMultiLineOfApprox; mPointIndex: int;
               tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc makeMLBetween*(ml: BRepApproxTheMultiLineOfApprox; i1: int; i2: int; nbPMin: int): BRepApproxTheMultiLineOfApprox {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::MakeMLBetween(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc makeMLOneMorePoint*(ml: BRepApproxTheMultiLineOfApprox; i1: int; i2: int;
                        indbad: int; otherLine: var BRepApproxTheMultiLineOfApprox): bool {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::MakeMLOneMorePoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc whatStatus*(ml: BRepApproxTheMultiLineOfApprox; i1: int; i2: int): ApproxStatus {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::WhatStatus(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc dump*(ml: BRepApproxTheMultiLineOfApprox) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Dump(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
## !!!Ignored construct:  # TheMultiLine BRepApprox_TheMultiLineOfApprox [NewLine] # TheMultiLine_hxx < BRepApprox_TheMultiLineOfApprox . hxx > [NewLine] # TheMultiMPoint ApproxInt_SvSurfaces [NewLine] # TheMultiMPoint_hxx < ApproxInt_SvSurfaces . hxx > [NewLine] # ApproxInt_MultiLineTool BRepApprox_TheMultiLineToolOfApprox [NewLine] # ApproxInt_MultiLineTool_hxx < BRepApprox_TheMultiLineToolOfApprox . hxx > [NewLine] # < ApproxInt_MultiLineTool . lxx > [NewLine] # TheMultiLine [NewLine] # TheMultiLine_hxx [NewLine] # TheMultiMPoint [NewLine] # TheMultiMPoint_hxx [NewLine] # ApproxInt_MultiLineTool [NewLine] # ApproxInt_MultiLineTool_hxx [NewLine] #  _BRepApprox_TheMultiLineToolOfApprox_HeaderFile
## Error: did not expect <!!!

