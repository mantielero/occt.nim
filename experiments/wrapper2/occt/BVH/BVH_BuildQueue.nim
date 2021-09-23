##  Created on: 2015-05-28
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  BVH_Builder, ../Standard/Standard_Mutex, ../NCollection/NCollection_Sequence

## ! Command-queue for parallel building of BVH nodes.

type
  BVH_BuildQueue* {.importcpp: "BVH_BuildQueue", header: "BVH_BuildQueue.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## current
                                                                                         ## size
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Queue
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## nodes
                                                                                         ## to
                                                                                         ## build.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Manages
                                                                                         ## access
                                                                                         ## serialization
                                                                                         ## of
                                                                                         ## working
                                                                                         ## threads.
    ## ! Number of active build threads.


proc constructBVH_BuildQueue*(): BVH_BuildQueue {.constructor,
    importcpp: "BVH_BuildQueue(@)", header: "BVH_BuildQueue.hxx".}
proc destroyBVH_BuildQueue*(this: var BVH_BuildQueue) {.
    importcpp: "#.~BVH_BuildQueue()", header: "BVH_BuildQueue.hxx".}
proc Size*(this: var BVH_BuildQueue): Standard_Integer {.importcpp: "Size",
    header: "BVH_BuildQueue.hxx".}
proc Enqueue*(this: var BVH_BuildQueue; theNode: Standard_Integer) {.
    importcpp: "Enqueue", header: "BVH_BuildQueue.hxx".}
proc Fetch*(this: var BVH_BuildQueue; wasBusy: var Standard_Boolean): Standard_Integer {.
    importcpp: "Fetch", header: "BVH_BuildQueue.hxx".}
proc HasBusyThreads*(this: var BVH_BuildQueue): Standard_Boolean {.
    importcpp: "HasBusyThreads", header: "BVH_BuildQueue.hxx".}