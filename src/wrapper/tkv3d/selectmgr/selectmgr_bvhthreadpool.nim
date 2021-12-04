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


proc newSelectMgrBVHThreadPool*(theNbThreads: cint): SelectMgrBVHThreadPool {.cdecl,
    constructor, importcpp: "SelectMgr_BVHThreadPool(@)", header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgrBVHThreadPool*(this: var SelectMgrBVHThreadPool) {.cdecl,
    importcpp: "#.~SelectMgr_BVHThreadPool()", header: "SelectMgr_BVHThreadPool.hxx".}
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


proc newSelectMgrBVHThreadPoolBVHThread*(): SelectMgrBVHThreadPoolBVHThread {.
    cdecl, constructor, importcpp: "SelectMgr_BVHThreadPool::BVHThread(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc bVHMutex*(this: var SelectMgrBVHThreadPoolBVHThread): var StandardMutex {.cdecl,
    importcpp: "BVHMutex", header: "SelectMgr_BVHThreadPool.hxx".}
proc assign*(this: var SelectMgrBVHThreadPoolBVHThread;
            theCopy: SelectMgrBVHThreadPoolBVHThread) {.cdecl, importcpp: "Assign",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc addEntity*(this: var SelectMgrBVHThreadPool;
               theEntity: Handle[Select3D_SensitiveEntity]) {.cdecl,
    importcpp: "AddEntity", header: "SelectMgr_BVHThreadPool.hxx".}
proc stopThreads*(this: var SelectMgrBVHThreadPool) {.cdecl,
    importcpp: "StopThreads", header: "SelectMgr_BVHThreadPool.hxx".}
proc waitThreads*(this: var SelectMgrBVHThreadPool) {.cdecl,
    importcpp: "WaitThreads", header: "SelectMgr_BVHThreadPool.hxx".}
proc threads*(this: var SelectMgrBVHThreadPool): var NCollectionArray1[
    SelectMgrBVHThreadPoolBVHThread] {.cdecl, importcpp: "Threads", header: "SelectMgr_BVHThreadPool.hxx".}
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


proc newSelectMgrBVHThreadPoolSentry*(thePool: Handle[SelectMgrBVHThreadPool]): SelectMgrBVHThreadPoolSentry {.
    cdecl, constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc destroySelectMgrBVHThreadPoolSentry*(this: var SelectMgrBVHThreadPoolSentry) {.
    cdecl, importcpp: "#.~Sentry()", header: "SelectMgr_BVHThreadPool.hxx".}
proc lock*(this: var SelectMgrBVHThreadPoolSentry) {.cdecl, importcpp: "Lock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc unlock*(this: var SelectMgrBVHThreadPoolSentry) {.cdecl, importcpp: "Unlock",
    header: "SelectMgr_BVHThreadPool.hxx".}
proc newSelectMgrBVHThreadPoolSentry*(a1: SelectMgrBVHThreadPoolSentry): SelectMgrBVHThreadPoolSentry {.
    cdecl, constructor, importcpp: "SelectMgr_BVHThreadPool::Sentry(@)",
    header: "SelectMgr_BVHThreadPool.hxx".}