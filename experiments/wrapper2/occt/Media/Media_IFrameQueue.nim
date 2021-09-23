##  Created by: Kirill GAVRILOV
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  Media_Frame

## ! Interface defining frame queuing.

type
  Media_IFrameQueue* {.importcpp: "Media_IFrameQueue",
                      header: "Media_IFrameQueue.hxx", bycopy.} = object ## ! Lock the frame, e.g. take ownership on a single (not currently displayed) frame from the queue to perform decoding into.


proc LockFrame*(this: var Media_IFrameQueue): handle[Media_Frame] {.
    importcpp: "LockFrame", header: "Media_IFrameQueue.hxx".}
proc ReleaseFrame*(this: var Media_IFrameQueue; theFrame: handle[Media_Frame]) {.
    importcpp: "ReleaseFrame", header: "Media_IFrameQueue.hxx".}