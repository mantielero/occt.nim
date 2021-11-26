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


proc perform*(this: var BVH_BuildTool; theNode: cint) {.cdecl, importcpp: "Perform",
    dynlib: tkmath.}
## ! Wrapper for BVH build thread.

type
  BVH_BuildThread* {.importcpp: "BVH_BuildThread", header: "BVH_BuildThread.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates new BVH build thread.
                                                      ## ! Executes BVH build thread.
                                                      ## ! Data needed to build the BVH.
    ## ! Reference to BVH build queue.
    ## ! Thread to execute work items.


proc newBVH_BuildThread*(theBuildTool: var BVH_BuildTool;
                        theBuildQueue: var BVH_BuildQueue): BVH_BuildThread {.cdecl,
    constructor, importcpp: "BVH_BuildThread(@)", dynlib: tkmath.}
proc run*(this: var BVH_BuildThread) {.cdecl, importcpp: "Run", dynlib: tkmath.}
proc wait*(this: var BVH_BuildThread) {.cdecl, importcpp: "Wait", dynlib: tkmath.}
type
  HandleBVH_BuildThread* = Handle[BVH_BuildThread]
