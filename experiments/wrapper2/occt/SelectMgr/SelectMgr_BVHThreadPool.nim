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

## ! Class defining a thread pool for building BVH for the list of Select3D_SensitiveEntity within background thread(s).

type
  SelectMgrBVHThreadPool* {.importcpp: "SelectMgr_BVHThreadPool",
                           header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of StandardTransient ##
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

  SelectMgrBVHThreadPoolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_BVHThreadPool::get_type_name(@)",
                            header: "SelectMgr_BVHThreadPool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_BVHThreadPool::get_type_descriptor(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc dynamicType*(this: SelectMgrBVHThreadPool): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_BVHThreadPool.hxx".}
proc constructSelectMgrBVHThreadPool*(theNbThreads: int): SelectMgrBVHThreadPool {.
    constructor, importcpp: "SelectMgr_BVHThreadPool(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgrBVHThreadPool*(this: var SelectMgrBVHThreadPool) {.
    importcpp: "#.~SelectMgr_BVHThreadPool()",
    header: "SelectMgr_BVHThreadPool.hxx".}
type
  SelectMgrBVHThreadPoolBVHThread* {.importcpp: "SelectMgr_BVHThreadPool::BVHThread",
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


proc constructSelectMgrBVHThreadPoolBVHThread*(): SelectMgrBVHThreadPoolBVHThread {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::BVHThread(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc bVHMutex*(this: var SelectMgrBVHThreadPoolBVHThread): var StandardMutex {.
    importcpp: "BVHMutex", header: "SelectMgr_BVHThreadPool.hxx".}
proc assign*(this: var SelectMgrBVHThreadPoolBVHThread;
            theCopy: SelectMgrBVHThreadPoolBVHThread) {.importcpp: "Assign",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc addEntity*(this: var SelectMgrBVHThreadPool;
               theEntity: Handle[Select3D_SensitiveEntity]) {.
    importcpp: "AddEntity", header: "SelectMgr_BVHThreadPool.hxx".}
proc stopThreads*(this: var SelectMgrBVHThreadPool) {.importcpp: "StopThreads",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc waitThreads*(this: var SelectMgrBVHThreadPool) {.importcpp: "WaitThreads",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc threads*(this: var SelectMgrBVHThreadPool): var NCollectionArray1[
    SelectMgrBVHThreadPoolBVHThread] {.importcpp: "Threads",
                                      header: "SelectMgr_BVHThreadPool.hxx".}
type
  SelectMgrBVHThreadPoolSentry* {.importcpp: "SelectMgr_BVHThreadPool::Sentry",
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


proc constructSelectMgrBVHThreadPoolSentry*(
    thePool: Handle[SelectMgrBVHThreadPool]): SelectMgrBVHThreadPoolSentry {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgrBVHThreadPoolSentry*(this: var SelectMgrBVHThreadPoolSentry) {.
    importcpp: "#.~Sentry()", header: "SelectMgr_BVHThreadPool.hxx".}
proc lock*(this: var SelectMgrBVHThreadPoolSentry) {.importcpp: "Lock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc unlock*(this: var SelectMgrBVHThreadPoolSentry) {.importcpp: "Unlock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc constructSelectMgrBVHThreadPoolSentry*(a1: SelectMgrBVHThreadPoolSentry): SelectMgrBVHThreadPoolSentry {.
    constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
