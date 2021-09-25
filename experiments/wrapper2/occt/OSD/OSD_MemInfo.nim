##  Created on: 2011-10-05
##  Created by: Kirill GAVRILOV
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

## ! This class provide information about memory utilized by current process.
## ! This information includes:
## !  - Private Memory - synthetic value that tries to filter out the memory
## !                     usage only by the process itself (allocated for data
## !                     and stack), excluding dynamic libraries.
## !                     These pages may be in RAM or in SWAP.
## !  - Virtual Memory - amount of reserved and committed memory in the
## !                     user-mode portion of the virtual address space.
## !                     Notice that this counter includes reserved memory
## !                     (not yet in used) and shared between processes memory (libraries).
## !  - Working Set    - set of memory pages in the virtual address space of the process
## !                     that are currently resident in physical memory (RAM).
## !                     These pages are available for an application to use
## !                     without triggering a page fault.
## !  - Pagefile Usage - space allocated for the pagefile, in bytes.
## !                     Those pages may or may not be in memory (RAM)
## !                     thus this counter couldn't be used to estimate
## !                     how many active pages doesn't present in RAM.
## !
## ! Notice that none of these counters can be used as absolute measure of
## ! application memory consumption!
## !
## ! User should analyze all values in specific case to make correct decision
## ! about memory (over)usage. This is also prefferred to use specialized
## ! tools to detect memory leaks.
## !
## ! This also means that these values should not be used for intellectual
## ! memory management by application itself.

type
  OSD_MemInfo* {.importcpp: "OSD_MemInfo", header: "OSD_MemInfo.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Create
                                                                                ## and
                                                                                ## initialize.
                                                                                ## By
                                                                                ## default
                                                                                ## all
                                                                                ## countes
                                                                                ## are
                                                                                ## active
                                                                                ##
                                                                                ## !
                                                                                ## Return
                                                                                ## the
                                                                                ## string
                                                                                ## representation
                                                                                ## for
                                                                                ## all
                                                                                ## available
                                                                                ## counter.
                                                                                ##
                                                                                ## !
                                                                                ## Return
                                                                                ## true
                                                                                ## if
                                                                                ## the
                                                                                ## counter
                                                                                ## is
                                                                                ## active
                                                                                ## and
                                                                                ## the
                                                                                ## value
                                                                                ## is
                                                                                ## valid
    ## !< Counters' values, in bytes
    ## !< container of active state for a counter

  OSD_MemInfoCounter* {.size: sizeof(cint), importcpp: "OSD_MemInfo::Counter",
                       header: "OSD_MemInfo.hxx".} = enum
    MemPrivate = 0,             ## !< Virtual memory allocated for data and stack excluding libraries
    MemVirtual,               ## !< Reserved and committed memory of the virtual address space
    MemWorkingSet,            ## !< Memory pages that are currently resident in physical memory
    MemWorkingSetPeak,        ## !< Peak working set size
    MemSwapUsage,             ## !< Space allocated for the pagefile
    MemSwapUsagePeak,         ## !< Peak space allocated for the pagefile
    MemHeapUsage,             ## !< Total space allocated from the heap
    MemCounterNB              ## !< Indicates total counters number


proc constructOSD_MemInfo*(theImmediateUpdate: bool = true): OSD_MemInfo {.
    constructor, importcpp: "OSD_MemInfo(@)", header: "OSD_MemInfo.hxx".}
proc isActive*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): bool {.
    noSideEffect, importcpp: "IsActive", header: "OSD_MemInfo.hxx".}
proc setActive*(this: var OSD_MemInfo; theActive: bool) {.importcpp: "SetActive",
    header: "OSD_MemInfo.hxx".}
proc setActive*(this: var OSD_MemInfo; theCounter: OSD_MemInfoCounter; theActive: bool) {.
    importcpp: "SetActive", header: "OSD_MemInfo.hxx".}
proc clear*(this: var OSD_MemInfo) {.importcpp: "Clear", header: "OSD_MemInfo.hxx".}
proc update*(this: var OSD_MemInfo) {.importcpp: "Update", header: "OSD_MemInfo.hxx".}
proc toString*(this: OSD_MemInfo): TCollectionAsciiString {.noSideEffect,
    importcpp: "ToString", header: "OSD_MemInfo.hxx".}
proc value*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): StandardSize {.
    noSideEffect, importcpp: "Value", header: "OSD_MemInfo.hxx".}
proc valueMiB*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): StandardSize {.
    noSideEffect, importcpp: "ValueMiB", header: "OSD_MemInfo.hxx".}
proc valuePreciseMiB*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): float {.
    noSideEffect, importcpp: "ValuePreciseMiB", header: "OSD_MemInfo.hxx".}
proc printInfo*(): TCollectionAsciiString {.importcpp: "OSD_MemInfo::PrintInfo(@)",
    header: "OSD_MemInfo.hxx".}
