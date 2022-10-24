import topopebreptool_types

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



proc newTopOpeBRepToolGeomTool*(typeC3D: TopOpeBRepToolOutCurveType = topOpeBRepToolBSPLINE1;
                               compC3D: bool = true; compPC1: bool = true;
                               compPC2: bool = true): TopOpeBRepToolGeomTool {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_GeomTool(@)", header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType;
            compC3D: bool; compPC1: bool; compPC2: bool) {.cdecl, importcpp: "Define",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType) {.
    cdecl, importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc defineCurves*(this: var TopOpeBRepToolGeomTool; compC3D: bool) {.cdecl,
    importcpp: "DefineCurves", header: "TopOpeBRepTool_GeomTool.hxx".}
proc definePCurves1*(this: var TopOpeBRepToolGeomTool; compPC1: bool) {.cdecl,
    importcpp: "DefinePCurves1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc definePCurves2*(this: var TopOpeBRepToolGeomTool; compPC2: bool) {.cdecl,
    importcpp: "DefinePCurves2", header: "TopOpeBRepTool_GeomTool.hxx".}
proc define*(this: var TopOpeBRepToolGeomTool; gt: TopOpeBRepToolGeomTool) {.cdecl,
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc getTolerances*(this: TopOpeBRepToolGeomTool; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerances", header: "TopOpeBRepTool_GeomTool.hxx".}
proc setTolerances*(this: var TopOpeBRepToolGeomTool; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerances", header: "TopOpeBRepTool_GeomTool.hxx".}
proc nbPntMax*(this: TopOpeBRepToolGeomTool): cint {.noSideEffect, cdecl,
    importcpp: "NbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc setNbPntMax*(this: var TopOpeBRepToolGeomTool; nbPntMax: cint) {.cdecl,
    importcpp: "SetNbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc typeC3D*(this: TopOpeBRepToolGeomTool): TopOpeBRepToolOutCurveType {.
    noSideEffect, cdecl, importcpp: "TypeC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compC3D*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compPC1*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompPC1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc compPC2*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompPC2", header: "TopOpeBRepTool_GeomTool.hxx".}
