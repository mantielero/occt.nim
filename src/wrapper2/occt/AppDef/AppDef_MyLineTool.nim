##  Created on: 1993-01-20
##  Created by: Laurent PAINNOT
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfVec2d, ../Approx/Approx_Status

discard "forward decl of AppDef_MultiLine"
type
  AppDef_MyLineTool* {.importcpp: "AppDef_MyLineTool",
                      header: "AppDef_MyLineTool.hxx", bycopy.} = object ## ! Returns the first index of multipoints of the MultiLine.


proc FirstPoint*(ML: AppDef_MultiLine): Standard_Integer {.
    importcpp: "AppDef_MyLineTool::FirstPoint(@)", header: "AppDef_MyLineTool.hxx".}
proc LastPoint*(ML: AppDef_MultiLine): Standard_Integer {.
    importcpp: "AppDef_MyLineTool::LastPoint(@)", header: "AppDef_MyLineTool.hxx".}
proc NbP2d*(ML: AppDef_MultiLine): Standard_Integer {.
    importcpp: "AppDef_MyLineTool::NbP2d(@)", header: "AppDef_MyLineTool.hxx".}
proc NbP3d*(ML: AppDef_MultiLine): Standard_Integer {.
    importcpp: "AppDef_MyLineTool::NbP3d(@)", header: "AppDef_MyLineTool.hxx".}
proc Value*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc Value*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
           tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc Value*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
           tabPt: var TColgp_Array1OfPnt; tabPt2d: var TColgp_Array1OfPnt2d) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc Tangency*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc Tangency*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
              tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc Tangency*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
              tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc Curvature*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc Curvature*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
               tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc Curvature*(ML: AppDef_MultiLine; MPointIndex: Standard_Integer;
               tabV: var TColgp_Array1OfVec; tabV2d: var TColgp_Array1OfVec2d): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc WhatStatus*(ML: AppDef_MultiLine; I1: Standard_Integer; I2: Standard_Integer): Approx_Status {.
    importcpp: "AppDef_MyLineTool::WhatStatus(@)", header: "AppDef_MyLineTool.hxx".}
proc MakeMLBetween*(ML: AppDef_MultiLine; I1: Standard_Integer; I2: Standard_Integer;
                   NbPMin: Standard_Integer): AppDef_MultiLine {.
    importcpp: "AppDef_MyLineTool::MakeMLBetween(@)",
    header: "AppDef_MyLineTool.hxx".}
proc MakeMLOneMorePoint*(ML: AppDef_MultiLine; I1: Standard_Integer;
                        I2: Standard_Integer; indbad: Standard_Integer;
                        OtherLine: var AppDef_MultiLine): Standard_Boolean {.
    importcpp: "AppDef_MyLineTool::MakeMLOneMorePoint(@)",
    header: "AppDef_MyLineTool.hxx".}