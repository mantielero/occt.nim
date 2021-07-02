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

## ! Interface defining frame queuing.

type
  MediaIFrameQueue* {.importcpp: "Media_IFrameQueue",
                     header: "Media_IFrameQueue.hxx", bycopy.} = object ## ! Lock the frame, e.g. take ownership on a single (not currently displayed) frame from the queue to perform decoding into.


proc lockFrame*(this: var MediaIFrameQueue): Handle[MediaFrame] {.
    importcpp: "LockFrame", header: "Media_IFrameQueue.hxx".}
proc releaseFrame*(this: var MediaIFrameQueue; theFrame: Handle[MediaFrame]) {.
    importcpp: "ReleaseFrame", header: "Media_IFrameQueue.hxx".}

