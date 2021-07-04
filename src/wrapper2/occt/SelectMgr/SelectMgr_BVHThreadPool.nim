##  Copyright (c) 2020 OPEN CASCADE SAS
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
  ../Standard/Standard_Transient, ../OSD/OSD_Thread, ../Standard/Standard_Mutex,
  ../Select3D/Select3D_SensitiveEntity, ../Standard/Standard_Condition,
  ../Message/Message_Messenger

## ! Class defining a thread pool for building BVH for the list of Select3D_SensitiveEntity within background thread(s).

type
  SelectMgr_BVHThreadPool* {.importcpp: "SelectMgr_BVHThreadPool",
                            header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Main
                                                                                                    ## constructor
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Thread
                                                                                                    ## with
                                                                                                    ## back
                                                                                                    ## reference
                                                                                                    ## to
                                                                                                    ## thread
                                                                                                    ## pool
                                                                                                    ## and
                                                                                                    ## thread
                                                                                                    ## mutex
                                                                                                    ## in
                                                                                                    ## it.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Queue
                                                                                                    ## a
                                                                                                    ## sensitive
                                                                                                    ## entity
                                                                                                    ## to
                                                                                                    ## build
                                                                                                    ## its
                                                                                                    ## BVH
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Class
                                                                                                    ## providing
                                                                                                    ## a
                                                                                                    ## simple
                                                                                                    ## interface
                                                                                                    ## to
                                                                                                    ## mutexes
                                                                                                    ## for
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ## BVHThread
    ## !< list of queued sensitive entities
    ## !< threads to build BVH
    ## !< flag to stop BVH threads
    ## !< mutex for interaction with myBVHToBuildList
    ## !< raises when any sensitive is added to the BVH list
    ## !< raises when BVH list become empty
    ## !< indicates that threads are running

  SelectMgr_BVHThreadPoolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_BVHThreadPool::get_type_name(@)",
                              header: "SelectMgr_BVHThreadPool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_BVHThreadPool::get_type_descriptor(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc DynamicType*(this: SelectMgr_BVHThreadPool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_BVHThreadPool.hxx".}
proc constructSelectMgr_BVHThreadPool*(theNbThreads: Standard_Integer): SelectMgr_BVHThreadPool {.
    constructor, importcpp: "SelectMgr_BVHThreadPool(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgr_BVHThreadPool*(this: var SelectMgr_BVHThreadPool) {.
    importcpp: "#.~SelectMgr_BVHThreadPool()",
    header: "SelectMgr_BVHThreadPool.hxx".}
type
  SelectMgr_BVHThreadPoolBVHThread* {.importcpp: "SelectMgr_BVHThreadPool::BVHThread",
                                     header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of OSD_Thread ##
                                                                                                     ## !
                                                                                                     ## Method
                                                                                                     ## is
                                                                                                     ## executed
                                                                                                     ## in
                                                                                                     ## the
                                                                                                     ## context
                                                                                                     ## of
                                                                                                     ## thread.


proc constructSelectMgr_BVHThreadPoolBVHThread*(): SelectMgr_BVHThreadPoolBVHThread {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::BVHThread(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc BVHMutex*(this: var SelectMgr_BVHThreadPoolBVHThread): var Standard_Mutex {.
    importcpp: "BVHMutex", header: "SelectMgr_BVHThreadPool.hxx".}
proc Assign*(this: var SelectMgr_BVHThreadPoolBVHThread;
            theCopy: SelectMgr_BVHThreadPoolBVHThread) {.importcpp: "Assign",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc AddEntity*(this: var SelectMgr_BVHThreadPool;
               theEntity: handle[Select3D_SensitiveEntity]) {.
    importcpp: "AddEntity", header: "SelectMgr_BVHThreadPool.hxx".}
proc StopThreads*(this: var SelectMgr_BVHThreadPool) {.importcpp: "StopThreads",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc WaitThreads*(this: var SelectMgr_BVHThreadPool) {.importcpp: "WaitThreads",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc Threads*(this: var SelectMgr_BVHThreadPool): var NCollection_Array1[
    SelectMgr_BVHThreadPoolBVHThread] {.importcpp: "Threads",
                                       header: "SelectMgr_BVHThreadPool.hxx".}
type
  SelectMgr_BVHThreadPoolSentry* {.importcpp: "SelectMgr_BVHThreadPool::Sentry",
                                  header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructor
                                                                                      ## -
                                                                                      ## initializes
                                                                                      ## the
                                                                                      ## sentry
                                                                                      ## object
                                                                                      ## and
                                                                                      ## locks
                                                                                      ## list
                                                                                      ## of
                                                                                      ## mutexes
                                                                                      ## immediately


proc constructSelectMgr_BVHThreadPoolSentry*(
    thePool: handle[SelectMgr_BVHThreadPool]): SelectMgr_BVHThreadPoolSentry {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgr_BVHThreadPoolSentry*(
    this: var SelectMgr_BVHThreadPoolSentry) {.importcpp: "#.~Sentry()",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc Lock*(this: var SelectMgr_BVHThreadPoolSentry) {.importcpp: "Lock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc Unlock*(this: var SelectMgr_BVHThreadPoolSentry) {.importcpp: "Unlock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc constructSelectMgr_BVHThreadPoolSentry*(a1: SelectMgr_BVHThreadPoolSentry): SelectMgr_BVHThreadPoolSentry {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}