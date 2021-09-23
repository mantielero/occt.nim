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

import
  Graphic3d_FrameStatsData, Graphic3d_RenderingParams, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../TColStd/TColStd_IndexedDataMapOfStringString

discard "forward decl of Graphic3d_CView"
type
  Graphic3d_FrameStats* {.importcpp: "Graphic3d_FrameStats",
                         header: "Graphic3d_FrameStats.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_FrameStatsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_FrameStats::get_type_name(@)",
                              header: "Graphic3d_FrameStats.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_FrameStats::get_type_descriptor(@)",
    header: "Graphic3d_FrameStats.hxx".}
proc DynamicType*(this: Graphic3d_FrameStats): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_FrameStats.hxx".}
proc constructGraphic3d_FrameStats*(): Graphic3d_FrameStats {.constructor,
    importcpp: "Graphic3d_FrameStats(@)", header: "Graphic3d_FrameStats.hxx".}
proc destroyGraphic3d_FrameStats*(this: var Graphic3d_FrameStats) {.
    importcpp: "#.~Graphic3d_FrameStats()", header: "Graphic3d_FrameStats.hxx".}
proc UpdateInterval*(this: Graphic3d_FrameStats): Standard_Real {.noSideEffect,
    importcpp: "UpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc SetUpdateInterval*(this: var Graphic3d_FrameStats; theInterval: Standard_Real) {.
    importcpp: "SetUpdateInterval", header: "Graphic3d_FrameStats.hxx".}
proc IsLongLineFormat*(this: Graphic3d_FrameStats): Standard_Boolean {.noSideEffect,
    importcpp: "IsLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc SetLongLineFormat*(this: var Graphic3d_FrameStats; theValue: Standard_Boolean) {.
    importcpp: "SetLongLineFormat", header: "Graphic3d_FrameStats.hxx".}
proc FrameStart*(this: var Graphic3d_FrameStats; theView: handle[Graphic3d_CView];
                theIsImmediateOnly: bool) {.importcpp: "FrameStart",
    header: "Graphic3d_FrameStats.hxx".}
proc FrameEnd*(this: var Graphic3d_FrameStats; theView: handle[Graphic3d_CView];
              theIsImmediateOnly: bool) {.importcpp: "FrameEnd",
                                        header: "Graphic3d_FrameStats.hxx".}
proc FormatStats*(this: Graphic3d_FrameStats; theFlags: PerfCounters): TCollection_AsciiString {.
    noSideEffect, importcpp: "FormatStats", header: "Graphic3d_FrameStats.hxx".}
proc FormatStats*(this: Graphic3d_FrameStats;
                 theDict: var TColStd_IndexedDataMapOfStringString;
                 theFlags: PerfCounters) {.noSideEffect, importcpp: "FormatStats",
    header: "Graphic3d_FrameStats.hxx".}
proc FrameDuration*(this: Graphic3d_FrameStats): Standard_Real {.noSideEffect,
    importcpp: "FrameDuration", header: "Graphic3d_FrameStats.hxx".}
proc FrameRate*(this: Graphic3d_FrameStats): Standard_Real {.noSideEffect,
    importcpp: "FrameRate", header: "Graphic3d_FrameStats.hxx".}
proc FrameRateCpu*(this: Graphic3d_FrameStats): Standard_Real {.noSideEffect,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStats.hxx".}
proc CounterValue*(this: Graphic3d_FrameStats;
                  theCounter: Graphic3d_FrameStatsCounter): Standard_Size {.
    noSideEffect, importcpp: "CounterValue", header: "Graphic3d_FrameStats.hxx".}
proc TimerValue*(this: Graphic3d_FrameStats; theTimer: Graphic3d_FrameStatsTimer): Standard_Real {.
    noSideEffect, importcpp: "TimerValue", header: "Graphic3d_FrameStats.hxx".}
proc HasCulledLayers*(this: Graphic3d_FrameStats): Standard_Boolean {.noSideEffect,
    importcpp: "HasCulledLayers", header: "Graphic3d_FrameStats.hxx".}
proc HasCulledStructs*(this: Graphic3d_FrameStats): Standard_Boolean {.noSideEffect,
    importcpp: "HasCulledStructs", header: "Graphic3d_FrameStats.hxx".}
proc LastDataFrame*(this: Graphic3d_FrameStats): Graphic3d_FrameStatsData {.
    noSideEffect, importcpp: "LastDataFrame", header: "Graphic3d_FrameStats.hxx".}
proc LastDataFrameIndex*(this: Graphic3d_FrameStats): Standard_Integer {.
    noSideEffect, importcpp: "LastDataFrameIndex",
    header: "Graphic3d_FrameStats.hxx".}
proc DataFrames*(this: Graphic3d_FrameStats): NCollection_Array1[
    Graphic3d_FrameStatsData] {.noSideEffect, importcpp: "DataFrames",
                               header: "Graphic3d_FrameStats.hxx".}
proc ChangeDataFrames*(this: var Graphic3d_FrameStats): var NCollection_Array1[
    Graphic3d_FrameStatsData] {.importcpp: "ChangeDataFrames",
                               header: "Graphic3d_FrameStats.hxx".}
proc ChangeCounter*(this: var Graphic3d_FrameStats;
                   theCounter: Graphic3d_FrameStatsCounter): var Standard_Size {.
    importcpp: "ChangeCounter", header: "Graphic3d_FrameStats.hxx".}
proc ChangeTimer*(this: var Graphic3d_FrameStats;
                 theTimer: Graphic3d_FrameStatsTimer): var Standard_Real {.
    importcpp: "ChangeTimer", header: "Graphic3d_FrameStats.hxx".}
proc ActiveDataFrame*(this: var Graphic3d_FrameStats): var Graphic3d_FrameStatsDataTmp {.
    importcpp: "ActiveDataFrame", header: "Graphic3d_FrameStats.hxx".}