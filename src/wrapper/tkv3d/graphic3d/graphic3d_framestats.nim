import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import graphic3d_types
import ../../tkernel/tcolstd/tcolstd_types



##  Copyright (c) 2017 OPEN CASCADE SAS
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



proc newGraphic3dFrameStats*(): Graphic3dFrameStats {.cdecl, constructor,
    importcpp: "Graphic3d_FrameStats(@)", header: "Graphic3d_FrameStats.hxx".}
proc destroyGraphic3dFrameStats*(this: var Graphic3dFrameStats) {.cdecl,
    importcpp: "#.~Graphic3d_FrameStats()", header: "Graphic3d_FrameStats.hxx".}
proc updateInterval*(this: Graphic3dFrameStats): cfloat {.noSideEffect, cdecl,
    importcpp: "UpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc setUpdateInterval*(this: var Graphic3dFrameStats; theInterval: cfloat) {.cdecl,
    importcpp: "SetUpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc isLongLineFormat*(this: Graphic3dFrameStats): bool {.noSideEffect, cdecl,
    importcpp: "IsLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc setLongLineFormat*(this: var Graphic3dFrameStats; theValue: bool) {.cdecl,
    importcpp: "SetLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc frameStart*(this: var Graphic3dFrameStats; theView: Handle[Graphic3dCView];
                theIsImmediateOnly: bool) {.cdecl, importcpp: "FrameStart",
    header: "Graphic3d_FrameStats.hxx".}
proc frameEnd*(this: var Graphic3dFrameStats; theView: Handle[Graphic3dCView];
              theIsImmediateOnly: bool) {.cdecl, importcpp: "FrameEnd", header: "Graphic3d_FrameStats.hxx".}
proc formatStats*(this: Graphic3dFrameStats; theFlags: PerfCounters): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "FormatStats", header: "Graphic3d_FrameStats.hxx".}
proc formatStats*(this: Graphic3dFrameStats;
                 theDict: var TColStdIndexedDataMapOfStringString;
                 theFlags: PerfCounters) {.noSideEffect, cdecl,
    importcpp: "FormatStats", header: "Graphic3d_FrameStats.hxx".}
proc frameDuration*(this: Graphic3dFrameStats): cfloat {.noSideEffect, cdecl,
    importcpp: "FrameDuration", header: "Graphic3d_FrameStats.hxx".}
proc frameRate*(this: Graphic3dFrameStats): cfloat {.noSideEffect, cdecl,
    importcpp: "FrameRate", header: "Graphic3d_FrameStats.hxx".}
proc frameRateCpu*(this: Graphic3dFrameStats): cfloat {.noSideEffect, cdecl,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStats.hxx".}
proc counterValue*(this: Graphic3dFrameStats;
                  theCounter: Graphic3dFrameStatsCounter): csize_t {.noSideEffect,
    cdecl, importcpp: "CounterValue", header: "Graphic3d_FrameStats.hxx".}
proc timerValue*(this: Graphic3dFrameStats; theTimer: Graphic3dFrameStatsTimer): cfloat {.
    noSideEffect, cdecl, importcpp: "TimerValue", header: "Graphic3d_FrameStats.hxx".}
proc hasCulledLayers*(this: Graphic3dFrameStats): bool {.noSideEffect, cdecl,
    importcpp: "HasCulledLayers", header: "Graphic3d_FrameStats.hxx".}
proc hasCulledStructs*(this: Graphic3dFrameStats): bool {.noSideEffect, cdecl,
    importcpp: "HasCulledStructs", header: "Graphic3d_FrameStats.hxx".}
proc lastDataFrame*(this: Graphic3dFrameStats): Graphic3dFrameStatsData {.
    noSideEffect, cdecl, importcpp: "LastDataFrame", header: "Graphic3d_FrameStats.hxx".}
proc lastDataFrameIndex*(this: Graphic3dFrameStats): cint {.noSideEffect, cdecl,
    importcpp: "LastDataFrameIndex", header: "Graphic3d_FrameStats.hxx".}
proc dataFrames*(this: Graphic3dFrameStats): NCollectionArray1[
    Graphic3dFrameStatsData] {.noSideEffect, cdecl, importcpp: "DataFrames",
                              header: "Graphic3d_FrameStats.hxx".}
proc changeDataFrames*(this: var Graphic3dFrameStats): var NCollectionArray1[
    Graphic3dFrameStatsData] {.cdecl, importcpp: "ChangeDataFrames", header: "Graphic3d_FrameStats.hxx".}
proc changeCounter*(this: var Graphic3dFrameStats;
                   theCounter: Graphic3dFrameStatsCounter): var csize_t {.cdecl,
    importcpp: "ChangeCounter", header: "Graphic3d_FrameStats.hxx".}
proc changeTimer*(this: var Graphic3dFrameStats; theTimer: Graphic3dFrameStatsTimer): var cfloat {.
    cdecl, importcpp: "ChangeTimer", header: "Graphic3d_FrameStats.hxx".}
proc activeDataFrame*(this: var Graphic3dFrameStats): var Graphic3dFrameStatsDataTmp {.
    cdecl, importcpp: "ActiveDataFrame", header: "Graphic3d_FrameStats.hxx".}

