##  Created on: 1993-06-24
##  Created by: Jean Yves LEBEY
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

type
  TopOpeBRepToolGeomTool* {.importcpp: "TopOpeBRepTool_GeomTool",
                           header: "TopOpeBRepTool_GeomTool.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_GeomTool::operator new",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepToolGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_GeomTool::operator delete",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc `new[]`*(this: var TopOpeBRepToolGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_GeomTool::operator new[]",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_GeomTool::operator delete[]",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc `new`*(this: var TopOpeBRepToolGeomTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_GeomTool::operator new",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepToolGeomTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_GeomTool::operator delete",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc constructTopOpeBRepToolGeomTool*(typeC3D: TopOpeBRepToolOutCurveType = topOpeBRepToolBSPLINE1;
                                     compC3D: StandardBoolean = true;
                                     compPC1: StandardBoolean = true;
                                     compPC2: StandardBoolean = true): TopOpeBRepToolGeomTool {.
    constructor, importcpp: "TopOpeBRepTool_GeomTool(@)",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType;
            compC3D: StandardBoolean; compPC1: StandardBoolean;
            compPC2: StandardBoolean) {.importcpp: "Define",
                                      header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType) {.
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc defineCurves*(this: var TopOpeBRepToolGeomTool; compC3D: StandardBoolean) {.
    importcpp: "DefineCurves", header: "TopOpeBRepTool_GeomTool.hxx".}
proc definePCurves1*(this: var TopOpeBRepToolGeomTool; compPC1: StandardBoolean) {.
    importcpp: "DefinePCurves1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc definePCurves2*(this: var TopOpeBRepToolGeomTool; compPC2: StandardBoolean) {.
    importcpp: "DefinePCurves2", header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; gt: TopOpeBRepToolGeomTool) {.
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc getTolerances*(this: TopOpeBRepToolGeomTool; tol3d: var StandardReal;
                   tol2d: var StandardReal) {.noSideEffect,
    importcpp: "GetTolerances", header: "TopOpeBRepTool_GeomTool.hxx".}
proc setTolerances*(this: var TopOpeBRepToolGeomTool; tol3d: StandardReal;
                   tol2d: StandardReal) {.importcpp: "SetTolerances",
                                        header: "TopOpeBRepTool_GeomTool.hxx".}
proc nbPntMax*(this: TopOpeBRepToolGeomTool): int {.noSideEffect,
    importcpp: "NbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc setNbPntMax*(this: var TopOpeBRepToolGeomTool; nbPntMax: int) {.
    importcpp: "SetNbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc typeC3D*(this: TopOpeBRepToolGeomTool): TopOpeBRepToolOutCurveType {.
    noSideEffect, importcpp: "TypeC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compC3D*(this: TopOpeBRepToolGeomTool): StandardBoolean {.noSideEffect,
    importcpp: "CompC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compPC1*(this: TopOpeBRepToolGeomTool): StandardBoolean {.noSideEffect,
    importcpp: "CompPC1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compPC2*(this: TopOpeBRepToolGeomTool): StandardBoolean {.noSideEffect,
    importcpp: "CompPC2", header: "TopOpeBRepTool_GeomTool.hxx".}