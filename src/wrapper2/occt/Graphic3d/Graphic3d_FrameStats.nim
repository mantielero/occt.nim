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

discard "forward decl of Graphic3d_CView"
type
  Graphic3dFrameStats* {.importcpp: "Graphic3d_FrameStats",
                        header: "Graphic3d_FrameStats.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Default
                                                                                            ## constructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## formatted
                                                                                            ## string.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## value
                                                                                            ## of
                                                                                            ## specified
                                                                                            ## counter
                                                                                            ## for
                                                                                            ## modification,
                                                                                            ## should
                                                                                            ## be
                                                                                            ## called
                                                                                            ## between
                                                                                            ## ::FrameStart()
                                                                                            ## and
                                                                                            ## ::FrameEnd()
                                                                                            ## calls.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Method
                                                                                            ## to
                                                                                            ## collect
                                                                                            ## statistics
                                                                                            ## from
                                                                                            ## the
                                                                                            ## View;
                                                                                            ## called
                                                                                            ## by
                                                                                            ## FrameEnd().
    ## !< timer for FPS measurements
    ## !< time at the beginning of frame redraw
    ## !< frame duration
    ## !< interval to update meters
    ## !< FPS counter (within short measurement time slice)
    ## !< data frames history
    ## !< data frame values filled to be filled between FrameStart() and FrameEnd() calls
    ## !< data frame values with absolute maximum values in the history
    ## !< last data frame index
    ## !< prefer longer lines over greater number of lines

  Graphic3dFrameStatsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_FrameStats::get_type_name(@)",
                            header: "Graphic3d_FrameStats.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_FrameStats::get_type_descriptor(@)",
    header: "Graphic3d_FrameStats.hxx".}
proc dynamicType*(this: Graphic3dFrameStats): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_FrameStats.hxx".}
proc constructGraphic3dFrameStats*(): Graphic3dFrameStats {.constructor,
    importcpp: "Graphic3d_FrameStats(@)", header: "Graphic3d_FrameStats.hxx".}
proc destroyGraphic3dFrameStats*(this: var Graphic3dFrameStats) {.
    importcpp: "#.~Graphic3d_FrameStats()", header: "Graphic3d_FrameStats.hxx".}
proc updateInterval*(this: Graphic3dFrameStats): StandardReal {.noSideEffect,
    importcpp: "UpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc setUpdateInterval*(this: var Graphic3dFrameStats; theInterval: StandardReal) {.
    importcpp: "SetUpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc isLongLineFormat*(this: Graphic3dFrameStats): StandardBoolean {.noSideEffect,
    importcpp: "IsLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc setLongLineFormat*(this: var Graphic3dFrameStats; theValue: StandardBoolean) {.
    importcpp: "SetLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc frameStart*(this: var Graphic3dFrameStats; theView: Handle[Graphic3dCView];
                theIsImmediateOnly: bool) {.importcpp: "FrameStart",
    header: "Graphic3d_FrameStats.hxx".}
proc frameEnd*(this: var Graphic3dFrameStats; theView: Handle[Graphic3dCView];
              theIsImmediateOnly: bool) {.importcpp: "FrameEnd",
                                        header: "Graphic3d_FrameStats.hxx".}
proc formatStats*(this: Graphic3dFrameStats; theFlags: PerfCounters): TCollectionAsciiString {.
    noSideEffect, importcpp: "FormatStats", header: "Graphic3d_FrameStats.hxx".}
proc formatStats*(this: Graphic3dFrameStats;
                 theDict: var TColStdIndexedDataMapOfStringString;
                 theFlags: PerfCounters) {.noSideEffect, importcpp: "FormatStats",
    header: "Graphic3d_FrameStats.hxx".}
proc frameDuration*(this: Graphic3dFrameStats): StandardReal {.noSideEffect,
    importcpp: "FrameDuration", header: "Graphic3d_FrameStats.hxx".}
proc frameRate*(this: Graphic3dFrameStats): StandardReal {.noSideEffect,
    importcpp: "FrameRate", header: "Graphic3d_FrameStats.hxx".}
proc frameRateCpu*(this: Graphic3dFrameStats): StandardReal {.noSideEffect,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStats.hxx".}
proc counterValue*(this: Graphic3dFrameStats;
                  theCounter: Graphic3dFrameStatsCounter): StandardSize {.
    noSideEffect, importcpp: "CounterValue", header: "Graphic3d_FrameStats.hxx".}
proc timerValue*(this: Graphic3dFrameStats; theTimer: Graphic3dFrameStatsTimer): StandardReal {.
    noSideEffect, importcpp: "TimerValue", header: "Graphic3d_FrameStats.hxx".}
proc hasCulledLayers*(this: Graphic3dFrameStats): StandardBoolean {.noSideEffect,
    importcpp: "HasCulledLayers", header: "Graphic3d_FrameStats.hxx".}
proc hasCulledStructs*(this: Graphic3dFrameStats): StandardBoolean {.noSideEffect,
    importcpp: "HasCulledStructs", header: "Graphic3d_FrameStats.hxx".}
proc lastDataFrame*(this: Graphic3dFrameStats): Graphic3dFrameStatsData {.
    noSideEffect, importcpp: "LastDataFrame", header: "Graphic3d_FrameStats.hxx".}
proc lastDataFrameIndex*(this: Graphic3dFrameStats): StandardInteger {.noSideEffect,
    importcpp: "LastDataFrameIndex", header: "Graphic3d_FrameStats.hxx".}
proc dataFrames*(this: Graphic3dFrameStats): NCollectionArray1[
    Graphic3dFrameStatsData] {.noSideEffect, importcpp: "DataFrames",
                              header: "Graphic3d_FrameStats.hxx".}
proc changeDataFrames*(this: var Graphic3dFrameStats): var NCollectionArray1[
    Graphic3dFrameStatsData] {.importcpp: "ChangeDataFrames",
                              header: "Graphic3d_FrameStats.hxx".}
proc changeCounter*(this: var Graphic3dFrameStats;
                   theCounter: Graphic3dFrameStatsCounter): var StandardSize {.
    importcpp: "ChangeCounter", header: "Graphic3d_FrameStats.hxx".}
proc changeTimer*(this: var Graphic3dFrameStats; theTimer: Graphic3dFrameStatsTimer): var StandardReal {.
    importcpp: "ChangeTimer", header: "Graphic3d_FrameStats.hxx".}
proc activeDataFrame*(this: var Graphic3dFrameStats): var Graphic3dFrameStatsDataTmp {.
    importcpp: "ActiveDataFrame", header: "Graphic3d_FrameStats.hxx".}

