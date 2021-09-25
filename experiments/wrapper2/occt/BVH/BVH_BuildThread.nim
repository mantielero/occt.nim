##  Created on: 2015-05-29
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Tool object to call BVH builder subroutines.

type
  BVH_BuildTool* {.importcpp: "BVH_BuildTool", header: "BVH_BuildThread.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Performs
                                                                                        ## splitting
                                                                                        ## of
                                                                                        ## the
                                                                                        ## given
                                                                                        ## BVH
                                                                                        ## node.


proc perform*(this: var BVH_BuildTool; theNode: int) {.importcpp: "Perform",
    header: "BVH_BuildThread.hxx".}
## ! Wrapper for BVH build thread.

type
  BVH_BuildThread* {.importcpp: "BVH_BuildThread", header: "BVH_BuildThread.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates new BVH build thread.
                                                      ## ! Executes BVH build thread.
                                                      ## ! Data needed to build the BVH.
    ## ! Reference to BVH build queue.
    ## ! Thread to execute work items.


proc constructBVH_BuildThread*(theBuildTool: var BVH_BuildTool;
                              theBuildQueue: var BVH_BuildQueue): BVH_BuildThread {.
    constructor, importcpp: "BVH_BuildThread(@)", header: "BVH_BuildThread.hxx".}
proc run*(this: var BVH_BuildThread) {.importcpp: "Run", header: "BVH_BuildThread.hxx".}
proc wait*(this: var BVH_BuildThread) {.importcpp: "Wait",
                                    header: "BVH_BuildThread.hxx".}
type
  BVH_BuildThreadbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BVH_BuildThread::get_type_name(@)",
                            header: "BVH_BuildThread.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BVH_BuildThread::get_type_descriptor(@)",
    header: "BVH_BuildThread.hxx".}
proc dynamicType*(this: BVH_BuildThread): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BVH_BuildThread.hxx".}
discard "forward decl of BVH_BuildThread"
type
  HandleBVH_BuildThread* = Handle[BVH_BuildThread]

