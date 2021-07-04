##  Created by: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Array1, OSD_Thread, ../Standard/Standard_Atomic,
  ../Standard/Standard_Condition, ../Standard/Standard_Mutex

## ! Class defining a thread pool for executing algorithms in multi-threaded mode.
## ! Thread pool allocates requested amount of threads and keep them alive
## ! (in sleep mode when unused) during thread pool lifetime.
## ! The same pool can be used by multiple consumers,
## ! including nested multi-threading algorithms and concurrent threads:
## ! - Thread pool can be used either by multi-threaded algorithm by creating OSD_ThreadPool::Launcher.
## !   The functor performing a job takes two parameters - Thread Index and Data Index:
## !     void operator(int theThreadIndex, int theDataIndex){}
## !   Multi-threaded algorithm may rely on Thread Index for allocating thread-local variables in array form,
## !   since the Thread Index is guaranteed to be within range OSD_ThreadPool::Lower() and OSD_ThreadPool::Upper().
## ! - Default thread pool (OSD_ThreadPool::DefaultPool()) can be used in general case,
## !   but application may prefer creating a dedicated pool for better control.
## ! - Default thread pool allocates the amount of threads considering concurrency
## !   level of the system (amount of logical processors).
## !   This can be overridden during OSD_ThreadPool construction or by calling OSD_ThreadPool::Init()
## !   (the pool should not be used!).
## ! - OSD_ThreadPool::Launcher reserves specific amount of threads from the pool for executing multi-threaded Job.
## !   Normally, single Launcher instance will occupy all threads available in thread pool,
## !   so that nested multi-threaded algorithms (within the same thread)
## !   and concurrent threads trying to use the same thread pool will run sequentially.
## !   This behavior is affected by OSD_ThreadPool::NbDefaultThreadsToLaunch() parameter
## !   and Launcher constructor, so that single Launcher instance will occupy not all threads
## !   in the pool allowing other threads to be used concurrently.
## ! - OSD_ThreadPool::Launcher locks thread one-by-one from thread pool in a thread-safe way.
## ! - Each working thread catches exceptions occurred during job execution, and Launcher will
## !   throw Standard_Failure in a caller thread on completed execution.

type
  OSD_ThreadPool* {.importcpp: "OSD_ThreadPool", header: "OSD_ThreadPool.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Return
                                                                                                             ## (or
                                                                                                             ## create)
                                                                                                             ## a
                                                                                                             ## default
                                                                                                             ## thread
                                                                                                             ## pool.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Number
                                                                                                             ## of
                                                                                                             ## threads
                                                                                                             ## argument
                                                                                                             ## will
                                                                                                             ## be
                                                                                                             ## considered
                                                                                                             ## only
                                                                                                             ## when
                                                                                                             ## called
                                                                                                             ## first
                                                                                                             ## time.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Main
                                                                                                             ## constructor.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Application
                                                                                                             ## may
                                                                                                             ## consider
                                                                                                             ## specifying
                                                                                                             ## more
                                                                                                             ## threads
                                                                                                             ## than
                                                                                                             ## actually
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## available
                                                                                                             ## (OSD_Parallel::NbLogicalProcessors())
                                                                                                             ## and
                                                                                                             ## set
                                                                                                             ## up
                                                                                                             ## NbDefaultThreadsToLaunch()
                                                                                                             ## to
                                                                                                             ## a
                                                                                                             ## smaller
                                                                                                             ## value
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## so
                                                                                                             ## that
                                                                                                             ## concurrent
                                                                                                             ## threads
                                                                                                             ## will
                                                                                                             ## be
                                                                                                             ## able
                                                                                                             ## using
                                                                                                             ## single
                                                                                                             ## Thread
                                                                                                             ## Pool
                                                                                                             ## instance
                                                                                                             ## more
                                                                                                             ## efficiently.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## @param
                                                                                                             ## theNbThreads
                                                                                                             ## threads
                                                                                                             ## number
                                                                                                             ## to
                                                                                                             ## be
                                                                                                             ## created
                                                                                                             ## by
                                                                                                             ## pool
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## (if
                                                                                                             ## -1
                                                                                                             ## is
                                                                                                             ## specified
                                                                                                             ## then
                                                                                                             ## OSD_Parallel::NbLogicalProcessors()
                                                                                                             ## will
                                                                                                             ## be
                                                                                                             ## used)
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Thread
                                                                                                             ## function
                                                                                                             ## interface.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Launcher
                                                                                                             ## object
                                                                                                             ## locking
                                                                                                             ## a
                                                                                                             ## subset
                                                                                                             ## of
                                                                                                             ## threads
                                                                                                             ## (or
                                                                                                             ## all
                                                                                                             ## threads)
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## in
                                                                                                             ## a
                                                                                                             ## thread
                                                                                                             ## pool
                                                                                                             ## to
                                                                                                             ## perform
                                                                                                             ## parallel
                                                                                                             ## execution
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## job.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Auxiliary
                                                                                                             ## class
                                                                                                             ## which
                                                                                                             ## ensures
                                                                                                             ## exclusive
                                                                                                             ## access
                                                                                                             ## to
                                                                                                             ## iterators
                                                                                                             ## of
                                                                                                             ## processed
                                                                                                             ## data
                                                                                                             ## pool.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## This
                                                                                                             ## method
                                                                                                             ## should
                                                                                                             ## not
                                                                                                             ## be
                                                                                                             ## called
                                                                                                             ## (prohibited).
    ## !< array of defined threads (excluding self-thread)
    ## !< maximum number of threads to be locked by a single Launcher by default
    ## !< flag to shut down (destroy) the thread pool

  OSD_ThreadPoolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OSD_ThreadPool::get_type_name(@)",
                              header: "OSD_ThreadPool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OSD_ThreadPool::get_type_descriptor(@)",
    header: "OSD_ThreadPool.hxx".}
proc DynamicType*(this: OSD_ThreadPool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OSD_ThreadPool.hxx".}
proc DefaultPool*(theNbThreads: cint = -1): handle[OSD_ThreadPool] {.
    importcpp: "OSD_ThreadPool::DefaultPool(@)", header: "OSD_ThreadPool.hxx".}
proc constructOSD_ThreadPool*(theNbThreads: cint = -1): OSD_ThreadPool {.constructor,
    importcpp: "OSD_ThreadPool(@)", header: "OSD_ThreadPool.hxx".}
proc destroyOSD_ThreadPool*(this: var OSD_ThreadPool) {.
    importcpp: "#.~OSD_ThreadPool()", header: "OSD_ThreadPool.hxx".}
proc HasThreads*(this: OSD_ThreadPool): bool {.noSideEffect, importcpp: "HasThreads",
    header: "OSD_ThreadPool.hxx".}
proc LowerThreadIndex*(this: OSD_ThreadPool): cint {.noSideEffect,
    importcpp: "LowerThreadIndex", header: "OSD_ThreadPool.hxx".}
proc UpperThreadIndex*(this: OSD_ThreadPool): cint {.noSideEffect,
    importcpp: "UpperThreadIndex", header: "OSD_ThreadPool.hxx".}
proc NbThreads*(this: OSD_ThreadPool): cint {.noSideEffect, importcpp: "NbThreads",
    header: "OSD_ThreadPool.hxx".}
proc NbDefaultThreadsToLaunch*(this: OSD_ThreadPool): cint {.noSideEffect,
    importcpp: "NbDefaultThreadsToLaunch", header: "OSD_ThreadPool.hxx".}
proc SetNbDefaultThreadsToLaunch*(this: var OSD_ThreadPool; theNbThreads: cint) {.
    importcpp: "SetNbDefaultThreadsToLaunch", header: "OSD_ThreadPool.hxx".}
proc IsInUse*(this: var OSD_ThreadPool): bool {.importcpp: "IsInUse",
    header: "OSD_ThreadPool.hxx".}
proc Init*(this: var OSD_ThreadPool; theNbThreads: cint) {.importcpp: "Init",
    header: "OSD_ThreadPool.hxx".}
type
  OSD_ThreadPoolLauncher* {.importcpp: "OSD_ThreadPool::Launcher",
                           header: "OSD_ThreadPool.hxx", bycopy.} = object ## ! Lock specified number of threads from the thread pool.
                                                                      ## ! If thread pool is already locked by another user,
                                                                      ## ! Launcher will lock as many threads as possible
                                                                      ## ! (if none will be locked, then single threaded execution will be done).
                                                                      ## ! @param thePool       thread pool to lock the threads
                                                                      ## ! @param
                                                                      ## theMaxThreads number of threads to lock;
                                                                      ## !                      -1 specifies that default number of threads
                                                                      ## !                      to be used
                                                                      ## OSD_ThreadPool::NbDefaultThreadsToLaunch()
                                                                      ## ! Execute job.
    ## !< array of locked threads (including self-thread)
    ## !< amount of locked threads


proc constructOSD_ThreadPoolLauncher*(thePool: var OSD_ThreadPool;
                                     theMaxThreads: cint = -1): OSD_ThreadPoolLauncher {.
    constructor, importcpp: "OSD_ThreadPool::Launcher(@)",
    header: "OSD_ThreadPool.hxx".}
proc destroyOSD_ThreadPoolLauncher*(this: var OSD_ThreadPoolLauncher) {.
    importcpp: "#.~Launcher()", header: "OSD_ThreadPool.hxx".}
proc HasThreads*(this: OSD_ThreadPoolLauncher): bool {.noSideEffect,
    importcpp: "HasThreads", header: "OSD_ThreadPool.hxx".}
proc NbThreads*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect,
    importcpp: "NbThreads", header: "OSD_ThreadPool.hxx".}
proc LowerThreadIndex*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect,
    importcpp: "LowerThreadIndex", header: "OSD_ThreadPool.hxx".}
proc UpperThreadIndex*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect,
    importcpp: "UpperThreadIndex", header: "OSD_ThreadPool.hxx".}
proc Perform*[Functor](this: var OSD_ThreadPoolLauncher; theBegin: cint; theEnd: cint;
                      theFunctor: Functor) {.importcpp: "Perform",
    header: "OSD_ThreadPool.hxx".}
proc Release*(this: var OSD_ThreadPoolLauncher) {.importcpp: "Release",
    header: "OSD_ThreadPool.hxx".}