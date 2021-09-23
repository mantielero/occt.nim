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

import
  ../AIS/AIS_InteractiveContext, ../V3d/V3d_View

discard "forward decl of TCollection_AsciiString"
type
  ViewerTest_AutoUpdater* {.importcpp: "ViewerTest_AutoUpdater",
                           header: "ViewerTest_AutoUpdater.hxx", bycopy.} = object ## !
                                                                              ## Enumeration to
                                                                              ## control
                                                                              ## auto-update
                                                                              ## !
                                                                              ## Constructor

  ViewerTest_AutoUpdaterRedrawMode* {.size: sizeof(cint), importcpp: "ViewerTest_AutoUpdater::RedrawMode",
                                     header: "ViewerTest_AutoUpdater.hxx".} = enum
    RedrawMode_Auto = -1, RedrawMode_Forced, RedrawMode_Suppressed


proc constructViewerTest_AutoUpdater*(theContext: handle[AIS_InteractiveContext];
                                     theView: handle[V3d_View]): ViewerTest_AutoUpdater {.
    constructor, importcpp: "ViewerTest_AutoUpdater(@)",
    header: "ViewerTest_AutoUpdater.hxx".}
proc destroyViewerTest_AutoUpdater*(this: var ViewerTest_AutoUpdater) {.
    importcpp: "#.~ViewerTest_AutoUpdater()", header: "ViewerTest_AutoUpdater.hxx".}
proc parseRedrawMode*(this: var ViewerTest_AutoUpdater;
                     theArg: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "parseRedrawMode", header: "ViewerTest_AutoUpdater.hxx".}
proc Invalidate*(this: var ViewerTest_AutoUpdater) {.importcpp: "Invalidate",
    header: "ViewerTest_AutoUpdater.hxx".}
proc Update*(this: var ViewerTest_AutoUpdater) {.importcpp: "Update",
    header: "ViewerTest_AutoUpdater.hxx".}