##  Created on: 1996-02-13
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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
  TopOpeBRepBuildGTopo* {.importcpp: "TopOpeBRepBuild_GTopo",
                         header: "TopOpeBRepBuild_GTopo.hxx", bycopy.} = object


proc newTopOpeBRepBuildGTopo*(): TopOpeBRepBuildGTopo {.cdecl, constructor,
    importcpp: "TopOpeBRepBuild_GTopo(@)", header: "TopOpeBRepBuild_GTopo.hxx".}
proc newTopOpeBRepBuildGTopo*(ii: bool; `in`: bool; io: bool; ni: bool; nn: bool; no: bool;
                             oi: bool; on: bool; oo: bool; t1: TopAbsShapeEnum;
                             t2: TopAbsShapeEnum; c1: TopOpeBRepDS_Config;
                             c2: TopOpeBRepDS_Config): TopOpeBRepBuildGTopo {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_GTopo(@)", header: "TopOpeBRepBuild_GTopo.hxx".}
proc reset*(this: var TopOpeBRepBuildGTopo) {.cdecl, importcpp: "Reset", header: "TopOpeBRepBuild_GTopo.hxx".}
proc set*(this: var TopOpeBRepBuildGTopo; ii: bool; `in`: bool; io: bool; ni: bool;
         nn: bool; no: bool; oi: bool; on: bool; oo: bool) {.cdecl, importcpp: "Set",
    header: "TopOpeBRepBuild_GTopo.hxx".}
proc `type`*(this: TopOpeBRepBuildGTopo; t1: var TopAbsShapeEnum;
            t2: var TopAbsShapeEnum) {.noSideEffect, cdecl, importcpp: "Type",
                                    header: "TopOpeBRepBuild_GTopo.hxx".}
proc changeType*(this: var TopOpeBRepBuildGTopo; t1: TopAbsShapeEnum;
                t2: TopAbsShapeEnum) {.cdecl, importcpp: "ChangeType", header: "TopOpeBRepBuild_GTopo.hxx".}
proc config1*(this: TopOpeBRepBuildGTopo): TopOpeBRepDS_Config {.noSideEffect, cdecl,
    importcpp: "Config1", header: "TopOpeBRepBuild_GTopo.hxx".}
proc config2*(this: TopOpeBRepBuildGTopo): TopOpeBRepDS_Config {.noSideEffect, cdecl,
    importcpp: "Config2", header: "TopOpeBRepBuild_GTopo.hxx".}
proc changeConfig*(this: var TopOpeBRepBuildGTopo; c1: TopOpeBRepDS_Config;
                  c2: TopOpeBRepDS_Config) {.cdecl, importcpp: "ChangeConfig",
    header: "TopOpeBRepBuild_GTopo.hxx".}
proc value*(this: TopOpeBRepBuildGTopo; s1: TopAbsState; s2: TopAbsState): bool {.
    noSideEffect, cdecl, importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc value*(this: TopOpeBRepBuildGTopo; i1: cint; i2: cint): bool {.noSideEffect, cdecl,
    importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc value*(this: TopOpeBRepBuildGTopo; ii: cint): bool {.noSideEffect, cdecl,
    importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc changeValue*(this: var TopOpeBRepBuildGTopo; i1: cint; i2: cint; b: bool) {.cdecl,
    importcpp: "ChangeValue", header: "TopOpeBRepBuild_GTopo.hxx".}
proc changeValue*(this: var TopOpeBRepBuildGTopo; s1: TopAbsState; s2: TopAbsState;
                 b: bool) {.cdecl, importcpp: "ChangeValue", header: "TopOpeBRepBuild_GTopo.hxx".}
proc gIndex*(this: TopOpeBRepBuildGTopo; s: TopAbsState): cint {.noSideEffect, cdecl,
    importcpp: "GIndex", header: "TopOpeBRepBuild_GTopo.hxx".}
proc gState*(this: TopOpeBRepBuildGTopo; i: cint): TopAbsState {.noSideEffect, cdecl,
    importcpp: "GState", header: "TopOpeBRepBuild_GTopo.hxx".}
proc index*(this: TopOpeBRepBuildGTopo; ii: cint; i1: var cint; i2: var cint) {.
    noSideEffect, cdecl, importcpp: "Index", header: "TopOpeBRepBuild_GTopo.hxx".}
proc dumpVal*(this: TopOpeBRepBuildGTopo; os: var StandardOStream; s1: TopAbsState;
             s2: TopAbsState) {.noSideEffect, cdecl, importcpp: "DumpVal",
                              header: "TopOpeBRepBuild_GTopo.hxx".}
proc dumpType*(this: TopOpeBRepBuildGTopo; os: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpType", header: "TopOpeBRepBuild_GTopo.hxx".}
proc dumpSSB*(os: var StandardOStream; s1: TopAbsState; s2: TopAbsState; b: bool) {.cdecl,
    importcpp: "TopOpeBRepBuild_GTopo::DumpSSB(@)", header: "TopOpeBRepBuild_GTopo.hxx".}
proc dump*(this: TopOpeBRepBuildGTopo; os: var StandardOStream; s: pointer = nil) {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TopOpeBRepBuild_GTopo.hxx".}
proc statesON*(this: TopOpeBRepBuildGTopo; s1: var TopAbsState; s2: var TopAbsState) {.
    noSideEffect, cdecl, importcpp: "StatesON", header: "TopOpeBRepBuild_GTopo.hxx".}
proc isToReverse1*(this: TopOpeBRepBuildGTopo): bool {.noSideEffect, cdecl,
    importcpp: "IsToReverse1", header: "TopOpeBRepBuild_GTopo.hxx".}
proc isToReverse2*(this: TopOpeBRepBuildGTopo): bool {.noSideEffect, cdecl,
    importcpp: "IsToReverse2", header: "TopOpeBRepBuild_GTopo.hxx".}
proc setReverse*(this: var TopOpeBRepBuildGTopo; rev: bool) {.cdecl,
    importcpp: "SetReverse", header: "TopOpeBRepBuild_GTopo.hxx".}
proc reverse*(this: TopOpeBRepBuildGTopo): bool {.noSideEffect, cdecl,
    importcpp: "Reverse", header: "TopOpeBRepBuild_GTopo.hxx".}
proc copyPermuted*(this: TopOpeBRepBuildGTopo): TopOpeBRepBuildGTopo {.noSideEffect,
    cdecl, importcpp: "CopyPermuted", header: "TopOpeBRepBuild_GTopo.hxx".}