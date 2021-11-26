##  Created on: 1995-12-08
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

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Curve"
type
  TopOpeBRepDS_CurveExplorer* {.importcpp: "TopOpeBRepDS_CurveExplorer",
                               header: "TopOpeBRepDS_CurveExplorer.hxx", bycopy.} = object


proc newTopOpeBRepDS_CurveExplorer*(): TopOpeBRepDS_CurveExplorer {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_CurveExplorer(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_CurveExplorer*(ds: TopOpeBRepDS_DataStructure;
                                   findOnlyKeep: bool = true): TopOpeBRepDS_CurveExplorer {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_CurveExplorer(@)", dynlib: tkbool.}
proc init*(this: var TopOpeBRepDS_CurveExplorer; ds: TopOpeBRepDS_DataStructure;
          findOnlyKeep: bool = true) {.cdecl, importcpp: "Init", dynlib: tkbool.}
proc more*(this: TopOpeBRepDS_CurveExplorer): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkbool.}
proc next*(this: var TopOpeBRepDS_CurveExplorer) {.cdecl, importcpp: "Next",
    dynlib: tkbool.}
proc curve*(this: TopOpeBRepDS_CurveExplorer): TopOpeBRepDS_Curve {.noSideEffect,
    cdecl, importcpp: "Curve", dynlib: tkbool.}
proc isCurve*(this: TopOpeBRepDS_CurveExplorer; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCurve", dynlib: tkbool.}
proc isCurveKeep*(this: TopOpeBRepDS_CurveExplorer; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsCurveKeep", dynlib: tkbool.}
proc curve*(this: TopOpeBRepDS_CurveExplorer; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, cdecl, importcpp: "Curve", dynlib: tkbool.}
proc nbCurve*(this: var TopOpeBRepDS_CurveExplorer): cint {.cdecl,
    importcpp: "NbCurve", dynlib: tkbool.}
proc index*(this: TopOpeBRepDS_CurveExplorer): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkbool.}