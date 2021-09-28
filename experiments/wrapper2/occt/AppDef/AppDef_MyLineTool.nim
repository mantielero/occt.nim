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

discard "forward decl of AppDef_MultiLine"
type
  AppDefMyLineTool* {.importcpp: "AppDef_MyLineTool",
                     header: "AppDef_MyLineTool.hxx", bycopy.} = object ## ! Returns the first index of multipoints of the MultiLine.


proc firstPoint*(ml: AppDefMultiLine): cint {.
    importcpp: "AppDef_MyLineTool::FirstPoint(@)", header: "AppDef_MyLineTool.hxx".}
proc lastPoint*(ml: AppDefMultiLine): cint {.
    importcpp: "AppDef_MyLineTool::LastPoint(@)", header: "AppDef_MyLineTool.hxx".}
proc nbP2d*(ml: AppDefMultiLine): cint {.importcpp: "AppDef_MyLineTool::NbP2d(@)",
                                     header: "AppDef_MyLineTool.hxx".}
proc nbP3d*(ml: AppDefMultiLine): cint {.importcpp: "AppDef_MyLineTool::NbP3d(@)",
                                     header: "AppDef_MyLineTool.hxx".}
proc value*(ml: AppDefMultiLine; mPointIndex: cint; tabPt: var TColgpArray1OfPnt) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc value*(ml: AppDefMultiLine; mPointIndex: cint; tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc value*(ml: AppDefMultiLine; mPointIndex: cint; tabPt: var TColgpArray1OfPnt;
           tabPt2d: var TColgpArray1OfPnt2d) {.
    importcpp: "AppDef_MyLineTool::Value(@)", header: "AppDef_MyLineTool.hxx".}
proc tangency*(ml: AppDefMultiLine; mPointIndex: cint; tabV: var TColgpArray1OfVec): bool {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc tangency*(ml: AppDefMultiLine; mPointIndex: cint;
              tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc tangency*(ml: AppDefMultiLine; mPointIndex: cint; tabV: var TColgpArray1OfVec;
              tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "AppDef_MyLineTool::Tangency(@)", header: "AppDef_MyLineTool.hxx".}
proc curvature*(ml: AppDefMultiLine; mPointIndex: cint; tabV: var TColgpArray1OfVec): bool {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc curvature*(ml: AppDefMultiLine; mPointIndex: cint;
               tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc curvature*(ml: AppDefMultiLine; mPointIndex: cint; tabV: var TColgpArray1OfVec;
               tabV2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "AppDef_MyLineTool::Curvature(@)", header: "AppDef_MyLineTool.hxx".}
proc whatStatus*(ml: AppDefMultiLine; i1: cint; i2: cint): ApproxStatus {.
    importcpp: "AppDef_MyLineTool::WhatStatus(@)", header: "AppDef_MyLineTool.hxx".}
proc makeMLBetween*(ml: AppDefMultiLine; i1: cint; i2: cint; nbPMin: cint): AppDefMultiLine {.
    importcpp: "AppDef_MyLineTool::MakeMLBetween(@)",
    header: "AppDef_MyLineTool.hxx".}
proc makeMLOneMorePoint*(ml: AppDefMultiLine; i1: cint; i2: cint; indbad: cint;
                        otherLine: var AppDefMultiLine): bool {.
    importcpp: "AppDef_MyLineTool::MakeMLOneMorePoint(@)",
    header: "AppDef_MyLineTool.hxx".}

























