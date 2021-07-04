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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_ShapeEnum, ../TopOpeBRepDS/TopOpeBRepDS_Config,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_State,
  ../Standard/Standard_OStream, ../Standard/Standard_Address

type
  TopOpeBRepBuild_GTopo* {.importcpp: "TopOpeBRepBuild_GTopo",
                          header: "TopOpeBRepBuild_GTopo.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_GTopo*(): TopOpeBRepBuild_GTopo {.constructor,
    importcpp: "TopOpeBRepBuild_GTopo(@)", header: "TopOpeBRepBuild_GTopo.hxx".}
proc constructTopOpeBRepBuild_GTopo*(II: Standard_Boolean; IN: Standard_Boolean;
                                    IO: Standard_Boolean; NI: Standard_Boolean;
                                    NN: Standard_Boolean; NO: Standard_Boolean;
                                    OI: Standard_Boolean; ON: Standard_Boolean;
                                    OO: Standard_Boolean; t1: TopAbs_ShapeEnum;
                                    t2: TopAbs_ShapeEnum; C1: TopOpeBRepDS_Config;
                                    C2: TopOpeBRepDS_Config): TopOpeBRepBuild_GTopo {.
    constructor, importcpp: "TopOpeBRepBuild_GTopo(@)",
    header: "TopOpeBRepBuild_GTopo.hxx".}
proc Reset*(this: var TopOpeBRepBuild_GTopo) {.importcpp: "Reset",
    header: "TopOpeBRepBuild_GTopo.hxx".}
proc Set*(this: var TopOpeBRepBuild_GTopo; II: Standard_Boolean; IN: Standard_Boolean;
         IO: Standard_Boolean; NI: Standard_Boolean; NN: Standard_Boolean;
         NO: Standard_Boolean; OI: Standard_Boolean; ON: Standard_Boolean;
         OO: Standard_Boolean) {.importcpp: "Set",
                               header: "TopOpeBRepBuild_GTopo.hxx".}
proc Type*(this: TopOpeBRepBuild_GTopo; t1: var TopAbs_ShapeEnum;
          t2: var TopAbs_ShapeEnum) {.noSideEffect, importcpp: "Type",
                                   header: "TopOpeBRepBuild_GTopo.hxx".}
proc ChangeType*(this: var TopOpeBRepBuild_GTopo; t1: TopAbs_ShapeEnum;
                t2: TopAbs_ShapeEnum) {.importcpp: "ChangeType",
                                      header: "TopOpeBRepBuild_GTopo.hxx".}
proc Config1*(this: TopOpeBRepBuild_GTopo): TopOpeBRepDS_Config {.noSideEffect,
    importcpp: "Config1", header: "TopOpeBRepBuild_GTopo.hxx".}
proc Config2*(this: TopOpeBRepBuild_GTopo): TopOpeBRepDS_Config {.noSideEffect,
    importcpp: "Config2", header: "TopOpeBRepBuild_GTopo.hxx".}
proc ChangeConfig*(this: var TopOpeBRepBuild_GTopo; C1: TopOpeBRepDS_Config;
                  C2: TopOpeBRepDS_Config) {.importcpp: "ChangeConfig",
    header: "TopOpeBRepBuild_GTopo.hxx".}
proc Value*(this: TopOpeBRepBuild_GTopo; s1: TopAbs_State; s2: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc Value*(this: TopOpeBRepBuild_GTopo; I1: Standard_Integer; I2: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc Value*(this: TopOpeBRepBuild_GTopo; II: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Value", header: "TopOpeBRepBuild_GTopo.hxx".}
proc ChangeValue*(this: var TopOpeBRepBuild_GTopo; i1: Standard_Integer;
                 i2: Standard_Integer; b: Standard_Boolean) {.
    importcpp: "ChangeValue", header: "TopOpeBRepBuild_GTopo.hxx".}
proc ChangeValue*(this: var TopOpeBRepBuild_GTopo; s1: TopAbs_State; s2: TopAbs_State;
                 b: Standard_Boolean) {.importcpp: "ChangeValue",
                                      header: "TopOpeBRepBuild_GTopo.hxx".}
proc GIndex*(this: TopOpeBRepBuild_GTopo; S: TopAbs_State): Standard_Integer {.
    noSideEffect, importcpp: "GIndex", header: "TopOpeBRepBuild_GTopo.hxx".}
proc GState*(this: TopOpeBRepBuild_GTopo; I: Standard_Integer): TopAbs_State {.
    noSideEffect, importcpp: "GState", header: "TopOpeBRepBuild_GTopo.hxx".}
proc Index*(this: TopOpeBRepBuild_GTopo; II: Standard_Integer;
           i1: var Standard_Integer; i2: var Standard_Integer) {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepBuild_GTopo.hxx".}
proc DumpVal*(this: TopOpeBRepBuild_GTopo; OS: var Standard_OStream; s1: TopAbs_State;
             s2: TopAbs_State) {.noSideEffect, importcpp: "DumpVal",
                               header: "TopOpeBRepBuild_GTopo.hxx".}
proc DumpType*(this: TopOpeBRepBuild_GTopo; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpType", header: "TopOpeBRepBuild_GTopo.hxx".}
proc DumpSSB*(OS: var Standard_OStream; s1: TopAbs_State; s2: TopAbs_State;
             b: Standard_Boolean) {.importcpp: "TopOpeBRepBuild_GTopo::DumpSSB(@)",
                                  header: "TopOpeBRepBuild_GTopo.hxx".}
proc Dump*(this: TopOpeBRepBuild_GTopo; OS: var Standard_OStream;
          s: Standard_Address = nil) {.noSideEffect, importcpp: "Dump",
                                   header: "TopOpeBRepBuild_GTopo.hxx".}
proc StatesON*(this: TopOpeBRepBuild_GTopo; s1: var TopAbs_State; s2: var TopAbs_State) {.
    noSideEffect, importcpp: "StatesON", header: "TopOpeBRepBuild_GTopo.hxx".}
proc IsToReverse1*(this: TopOpeBRepBuild_GTopo): Standard_Boolean {.noSideEffect,
    importcpp: "IsToReverse1", header: "TopOpeBRepBuild_GTopo.hxx".}
proc IsToReverse2*(this: TopOpeBRepBuild_GTopo): Standard_Boolean {.noSideEffect,
    importcpp: "IsToReverse2", header: "TopOpeBRepBuild_GTopo.hxx".}
proc SetReverse*(this: var TopOpeBRepBuild_GTopo; rev: Standard_Boolean) {.
    importcpp: "SetReverse", header: "TopOpeBRepBuild_GTopo.hxx".}
proc Reverse*(this: TopOpeBRepBuild_GTopo): Standard_Boolean {.noSideEffect,
    importcpp: "Reverse", header: "TopOpeBRepBuild_GTopo.hxx".}
proc CopyPermuted*(this: TopOpeBRepBuild_GTopo): TopOpeBRepBuild_GTopo {.
    noSideEffect, importcpp: "CopyPermuted", header: "TopOpeBRepBuild_GTopo.hxx".}