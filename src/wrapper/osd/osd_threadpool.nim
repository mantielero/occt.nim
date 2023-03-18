import ../standard/standard_types
import osd_types



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



proc defaultPool*(theNbThreads: cint = -1): Handle[OSD_ThreadPool] {.cdecl,
    importcpp: "OSD_ThreadPool::DefaultPool(@)", header: "OSD_ThreadPool.hxx".}
proc newOSD_ThreadPool*(theNbThreads: cint = -1): OSD_ThreadPool {.cdecl, constructor,
    importcpp: "OSD_ThreadPool(@)", header: "OSD_ThreadPool.hxx".}
proc destroyOSD_ThreadPool*(this: var OSD_ThreadPool) {.cdecl,
    importcpp: "#.~OSD_ThreadPool()", header: "OSD_ThreadPool.hxx".}
proc hasThreads*(this: OSD_ThreadPool): bool {.noSideEffect, cdecl,
    importcpp: "HasThreads", header: "OSD_ThreadPool.hxx".}
proc lowerThreadIndex*(this: OSD_ThreadPool): cint {.noSideEffect, cdecl,
    importcpp: "LowerThreadIndex", header: "OSD_ThreadPool.hxx".}
proc upperThreadIndex*(this: OSD_ThreadPool): cint {.noSideEffect, cdecl,
    importcpp: "UpperThreadIndex", header: "OSD_ThreadPool.hxx".}
proc nbThreads*(this: OSD_ThreadPool): cint {.noSideEffect, cdecl,
    importcpp: "NbThreads", header: "OSD_ThreadPool.hxx".}
proc nbDefaultThreadsToLaunch*(this: OSD_ThreadPool): cint {.noSideEffect, cdecl,
    importcpp: "NbDefaultThreadsToLaunch", header: "OSD_ThreadPool.hxx".}
proc setNbDefaultThreadsToLaunch*(this: var OSD_ThreadPool; theNbThreads: cint) {.
    cdecl, importcpp: "SetNbDefaultThreadsToLaunch", header: "OSD_ThreadPool.hxx".}
proc isInUse*(this: var OSD_ThreadPool): bool {.cdecl, importcpp: "IsInUse",
    header: "OSD_ThreadPool.hxx".}
proc init*(this: var OSD_ThreadPool; theNbThreads: cint) {.cdecl, importcpp: "Init",
    header: "OSD_ThreadPool.hxx".}


proc newOSD_ThreadPoolLauncher*(thePool: var OSD_ThreadPool;
                               theMaxThreads: cint = -1): OSD_ThreadPoolLauncher {.
    cdecl, constructor, importcpp: "OSD_ThreadPool::Launcher(@)",
    header: "OSD_ThreadPool.hxx".}
proc destroyOSD_ThreadPoolLauncher*(this: var OSD_ThreadPoolLauncher) {.cdecl,
    importcpp: "#.~Launcher()", header: "OSD_ThreadPool.hxx".}
proc hasThreads*(this: OSD_ThreadPoolLauncher): bool {.noSideEffect, cdecl,
    importcpp: "HasThreads", header: "OSD_ThreadPool.hxx".}
proc nbThreads*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect, cdecl,
    importcpp: "NbThreads", header: "OSD_ThreadPool.hxx".}
proc lowerThreadIndex*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect, cdecl,
    importcpp: "LowerThreadIndex", header: "OSD_ThreadPool.hxx".}
proc upperThreadIndex*(this: OSD_ThreadPoolLauncher): cint {.noSideEffect, cdecl,
    importcpp: "UpperThreadIndex", header: "OSD_ThreadPool.hxx".}
proc perform*[Functor](this: var OSD_ThreadPoolLauncher; theBegin: cint; theEnd: cint;
                      theFunctor: Functor) {.cdecl, importcpp: "Perform",
    header: "OSD_ThreadPool.hxx".}
proc release*(this: var OSD_ThreadPoolLauncher) {.cdecl, importcpp: "Release",
    header: "OSD_ThreadPool.hxx".}

