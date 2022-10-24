import bvh_types

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

## ! Command-queue for parallel building of BVH nodes.



proc newBVH_BuildQueue*(): BVH_BuildQueue {.cdecl, constructor,
    importcpp: "BVH_BuildQueue(@)", header: "BVH_BuildQueue.hxx".}
proc destroyBVH_BuildQueue*(this: var BVH_BuildQueue) {.cdecl,
    importcpp: "#.~BVH_BuildQueue()", header: "BVH_BuildQueue.hxx".}
proc size*(this: var BVH_BuildQueue): cint {.cdecl, importcpp: "Size", header: "BVH_BuildQueue.hxx".}
proc enqueue*(this: var BVH_BuildQueue; theNode: cint) {.cdecl, importcpp: "Enqueue",
    header: "BVH_BuildQueue.hxx".}
proc fetch*(this: var BVH_BuildQueue; wasBusy: var bool): cint {.cdecl,
    importcpp: "Fetch", header: "BVH_BuildQueue.hxx".}
proc hasBusyThreads*(this: var BVH_BuildQueue): bool {.cdecl,
    importcpp: "HasBusyThreads", header: "BVH_BuildQueue.hxx".}
