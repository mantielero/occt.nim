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

## !!!Ignored construct:  # _BRepApprox_TheMultiLineToolOfApprox_HeaderFile [NewLine] # _BRepApprox_TheMultiLineToolOfApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColgp/TColgp_Array1OfVec.hxx [NewLine] # ../TColgp/TColgp_Array1OfVec2d.hxx [NewLine] # BRepApprox_TheMultiLineOfApprox.hxx [NewLine] # ../Approx/Approx_Status.hxx [NewLine] class BRepApprox_TheMultiLineOfApprox ;
## Error: did not expect <!!!

discard "forward decl of ApproxInt_SvSurfaces"
type
  BRepApprox_TheMultiLineToolOfApprox* {.importcpp: "BRepApprox_TheMultiLineToolOfApprox", header: "BRepApprox_TheMultiLineToolOfApprox.hxx",
                                        bycopy.} = object ## ! Returns the number of multipoints of the TheMultiLine.


proc FirstPoint*(ML: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::FirstPoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc LastPoint*(ML: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::LastPoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc NbP2d*(ML: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::NbP2d(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc NbP3d*(ML: BRepApprox_TheMultiLineOfApprox): Standard_Integer {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::NbP3d(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Value*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Value*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Value*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt; tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Value(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Tangency*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Tangency*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
              tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Tangency*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Tangency(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Curvature*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Curvature*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
               tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Curvature*(ML: BRepApprox_TheMultiLineOfApprox; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Curvature(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc MakeMLBetween*(ML: BRepApprox_TheMultiLineOfApprox; I1: Standard_Integer;
                   I2: Standard_Integer; NbPMin: Standard_Integer): BRepApprox_TheMultiLineOfApprox {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::MakeMLBetween(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc MakeMLOneMorePoint*(ML: BRepApprox_TheMultiLineOfApprox; I1: Standard_Integer;
                        I2: Standard_Integer; indbad: Standard_Integer;
                        OtherLine: var BRepApprox_TheMultiLineOfApprox): Standard_Boolean {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::MakeMLOneMorePoint(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc WhatStatus*(ML: BRepApprox_TheMultiLineOfApprox; I1: Standard_Integer;
                I2: Standard_Integer): Approx_Status {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::WhatStatus(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
proc Dump*(ML: BRepApprox_TheMultiLineOfApprox) {.
    importcpp: "BRepApprox_TheMultiLineToolOfApprox::Dump(@)",
    header: "BRepApprox_TheMultiLineToolOfApprox.hxx".}
## !!!Ignored construct:  # TheMultiLine BRepApprox_TheMultiLineOfApprox [NewLine] # TheMultiLine_hxx < BRepApprox_TheMultiLineOfApprox . hxx > [NewLine] # TheMultiMPoint ApproxInt_SvSurfaces [NewLine] # TheMultiMPoint_hxx < ApproxInt_SvSurfaces . hxx > [NewLine] # ApproxInt_MultiLineTool BRepApprox_TheMultiLineToolOfApprox [NewLine] # ApproxInt_MultiLineTool_hxx < BRepApprox_TheMultiLineToolOfApprox . hxx > [NewLine] # < ApproxInt_MultiLineTool . lxx > [NewLine] # TheMultiLine [NewLine] # TheMultiLine_hxx [NewLine] # TheMultiMPoint [NewLine] # TheMultiMPoint_hxx [NewLine] # ApproxInt_MultiLineTool [NewLine] # ApproxInt_MultiLineTool_hxx [NewLine] #  _BRepApprox_TheMultiLineToolOfApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
