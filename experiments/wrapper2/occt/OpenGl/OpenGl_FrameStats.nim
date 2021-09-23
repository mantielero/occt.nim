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
  ../Graphic3d/Graphic3d_FrameStats, ../NCollection/NCollection_IndexedMap

discard "forward decl of Graphic3d_CStructure"
type
  OpenGl_FrameStats* {.importcpp: "OpenGl_FrameStats",
                      header: "OpenGl_FrameStats.hxx", bycopy.} = object of Graphic3d_FrameStats ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Copy
                                                                                          ## stats
                                                                                          ## values
                                                                                          ## into
                                                                                          ## another
                                                                                          ## instance
                                                                                          ## (create
                                                                                          ## new
                                                                                          ## instance,
                                                                                          ## if
                                                                                          ## not
                                                                                          ## exists).
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## main
                                                                                          ## use
                                                                                          ## of
                                                                                          ## this
                                                                                          ## method
                                                                                          ## is
                                                                                          ## to
                                                                                          ## track
                                                                                          ## changes
                                                                                          ## in
                                                                                          ## statistics
                                                                                          ## (e.g.
                                                                                          ## in
                                                                                          ## conjunction
                                                                                          ## with
                                                                                          ## IsEqual()
                                                                                          ## method).
                                                                                          ##
                                                                                          ## !
                                                                                          ## @return
                                                                                          ## TRUE
                                                                                          ## if
                                                                                          ## frame
                                                                                          ## data
                                                                                          ## has
                                                                                          ## been
                                                                                          ## changed
                                                                                          ## so
                                                                                          ## that
                                                                                          ## the
                                                                                          ## presentation
                                                                                          ## should
                                                                                          ## be
                                                                                          ## updated
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

  OpenGl_FrameStatsbase_type* = Graphic3d_FrameStats

proc get_type_name*(): cstring {.importcpp: "OpenGl_FrameStats::get_type_name(@)",
                              header: "OpenGl_FrameStats.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_FrameStats::get_type_descriptor(@)",
    header: "OpenGl_FrameStats.hxx".}
proc DynamicType*(this: OpenGl_FrameStats): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_FrameStats.hxx".}
proc constructOpenGl_FrameStats*(): OpenGl_FrameStats {.constructor,
    importcpp: "OpenGl_FrameStats(@)", header: "OpenGl_FrameStats.hxx".}
proc destroyOpenGl_FrameStats*(this: var OpenGl_FrameStats) {.
    importcpp: "#.~OpenGl_FrameStats()", header: "OpenGl_FrameStats.hxx".}
proc IsFrameUpdated*(this: OpenGl_FrameStats;
                    thePrev: var handle[OpenGl_FrameStats]): bool {.noSideEffect,
    importcpp: "IsFrameUpdated", header: "OpenGl_FrameStats.hxx".}
discard "forward decl of OpenGl_FrameStats"
type
  Handle_OpenGl_FrameStats* = handle[OpenGl_FrameStats]
