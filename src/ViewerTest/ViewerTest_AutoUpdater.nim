##  Created on: 2014-09-10
##  Created by: Kirill Gavrilov
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_AsciiString"
type
  ViewerTestAutoUpdater* {.importcpp: "ViewerTest_AutoUpdater",
                          header: "ViewerTest_AutoUpdater.hxx", bycopy.} = object ## !
                                                                             ## Enumeration to
                                                                             ## control
                                                                             ## auto-update
                                                                             ## !
                                                                             ## Constructor

  ViewerTestAutoUpdaterRedrawMode* {.size: sizeof(cint), importcpp: "ViewerTest_AutoUpdater::RedrawMode",
                                    header: "ViewerTest_AutoUpdater.hxx".} = enum
    RedrawModeAuto = -1, RedrawModeForced, RedrawModeSuppressed


proc constructViewerTestAutoUpdater*(theContext: Handle[AIS_InteractiveContext];
                                    theView: Handle[V3dView]): ViewerTestAutoUpdater {.
    constructor, importcpp: "ViewerTest_AutoUpdater(@)",
    header: "ViewerTest_AutoUpdater.hxx".}
proc destroyViewerTestAutoUpdater*(this: var ViewerTestAutoUpdater) {.
    importcpp: "#.~ViewerTest_AutoUpdater()", header: "ViewerTest_AutoUpdater.hxx".}
proc parseRedrawMode*(this: var ViewerTestAutoUpdater;
                     theArg: TCollectionAsciiString): bool {.
    importcpp: "parseRedrawMode", header: "ViewerTest_AutoUpdater.hxx".}
proc invalidate*(this: var ViewerTestAutoUpdater) {.importcpp: "Invalidate",
    header: "ViewerTest_AutoUpdater.hxx".}
proc update*(this: var ViewerTestAutoUpdater) {.importcpp: "Update",
    header: "ViewerTest_AutoUpdater.hxx".}

























