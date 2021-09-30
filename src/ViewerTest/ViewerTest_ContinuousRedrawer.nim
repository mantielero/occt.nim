##  Copyright (c) 2019-2020 OPEN CASCADE SAS
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

discard "forward decl of Aspect_Window"
type
  ViewerTestContinuousRedrawer* {.importcpp: "ViewerTest_ContinuousRedrawer",
                                 header: "ViewerTest_ContinuousRedrawer.hxx",
                                 bycopy.} = object ## ! Return global instance.
                                                ## ! Destructor.
                                                ## ! Thread loop.
    ## !< window to invalidate
    ## !< working thread
    ## !< mutex for accessing common variables
    ## !< event to wake up working thread
    ## !< desired update framerate
    ## !< flag to stop working thread
    ## !< flag to put  working thread asleep without stopping


proc instance*(): var ViewerTestContinuousRedrawer {.
    importcpp: "ViewerTest_ContinuousRedrawer::Instance(@)",
    header: "ViewerTest_ContinuousRedrawer.hxx".}
proc destroyViewerTestContinuousRedrawer*(this: var ViewerTestContinuousRedrawer) {.
    importcpp: "#.~ViewerTest_ContinuousRedrawer()",
    header: "ViewerTest_ContinuousRedrawer.hxx".}
proc isStarted*(this: ViewerTestContinuousRedrawer): bool {.noSideEffect,
    importcpp: "IsStarted", header: "ViewerTest_ContinuousRedrawer.hxx".}
proc start*(this: var ViewerTestContinuousRedrawer; theWindow: Handle[AspectWindow];
           theTargetFps: cfloat) {.importcpp: "Start",
                                 header: "ViewerTest_ContinuousRedrawer.hxx".}
proc stop*(this: var ViewerTestContinuousRedrawer;
          theWindow: Handle[AspectWindow] = nil) {.importcpp: "Stop",
    header: "ViewerTest_ContinuousRedrawer.hxx".}
proc isPaused*(this: ViewerTestContinuousRedrawer): bool {.noSideEffect,
    importcpp: "IsPaused", header: "ViewerTest_ContinuousRedrawer.hxx".}
proc pause*(this: var ViewerTestContinuousRedrawer) {.importcpp: "Pause",
    header: "ViewerTest_ContinuousRedrawer.hxx".}

























