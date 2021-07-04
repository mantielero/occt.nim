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

## !!!Ignored construct:  # _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColgp/TColgp_Array1OfVec.hxx [NewLine] # ../TColgp/TColgp_Array1OfVec2d.hxx [NewLine] # GeomInt_TheMultiLineOfWLApprox.hxx [NewLine] # ../Approx/Approx_Status.hxx [NewLine] class GeomInt_TheMultiLineOfWLApprox ;
## Error: did not expect <!!!

discard "forward decl of ApproxInt_SvSurfaces"
type
  GeomInt_TheMultiLineToolOfWLApprox* {.importcpp: "GeomInt_TheMultiLineToolOfWLApprox", header: "GeomInt_TheMultiLineToolOfWLApprox.hxx",
                                       bycopy.} = object ## ! Returns the number of multipoints of the TheMultiLine.


proc FirstPoint*(ML: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::FirstPoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc LastPoint*(ML: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::LastPoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc NbP2d*(ML: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::NbP2d(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc NbP3d*(ML: GeomInt_TheMultiLineOfWLApprox): Standard_Integer {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::NbP3d(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Value*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Value*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Value*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt; tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Value(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Tangency*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Tangency*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Tangency*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Tangency(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Curvature*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Curvature*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
               tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Curvature*(ML: GeomInt_TheMultiLineOfWLApprox; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Curvature(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc MakeMLBetween*(ML: GeomInt_TheMultiLineOfWLApprox; I1: Standard_Integer;
                   I2: Standard_Integer; NbPMin: Standard_Integer): GeomInt_TheMultiLineOfWLApprox {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::MakeMLBetween(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc MakeMLOneMorePoint*(ML: GeomInt_TheMultiLineOfWLApprox; I1: Standard_Integer;
                        I2: Standard_Integer; indbad: Standard_Integer;
                        OtherLine: var GeomInt_TheMultiLineOfWLApprox): Standard_Boolean {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::MakeMLOneMorePoint(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc WhatStatus*(ML: GeomInt_TheMultiLineOfWLApprox; I1: Standard_Integer;
                I2: Standard_Integer): Approx_Status {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::WhatStatus(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
proc Dump*(ML: GeomInt_TheMultiLineOfWLApprox) {.
    importcpp: "GeomInt_TheMultiLineToolOfWLApprox::Dump(@)",
    header: "GeomInt_TheMultiLineToolOfWLApprox.hxx".}
## !!!Ignored construct:  # TheMultiLine GeomInt_TheMultiLineOfWLApprox [NewLine] # TheMultiLine_hxx < GeomInt_TheMultiLineOfWLApprox . hxx > [NewLine] # TheMultiMPoint ApproxInt_SvSurfaces [NewLine] # TheMultiMPoint_hxx < ApproxInt_SvSurfaces . hxx > [NewLine] # ApproxInt_MultiLineTool GeomInt_TheMultiLineToolOfWLApprox [NewLine] # ApproxInt_MultiLineTool_hxx < GeomInt_TheMultiLineToolOfWLApprox . hxx > [NewLine] # < ApproxInt_MultiLineTool . lxx > [NewLine] # TheMultiLine [NewLine] # TheMultiLine_hxx [NewLine] # TheMultiMPoint [NewLine] # TheMultiMPoint_hxx [NewLine] # ApproxInt_MultiLineTool [NewLine] # ApproxInt_MultiLineTool_hxx [NewLine] #  _GeomInt_TheMultiLineToolOfWLApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
