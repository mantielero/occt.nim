import ../tcollection/tcollection_types
import osd_types



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




proc newOSD_MemInfo*(theImmediateUpdate: bool = true): OSD_MemInfo {.cdecl,
    constructor, importcpp: "OSD_MemInfo(@)", header: "OSD_MemInfo.hxx".}
proc isActive*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): bool {.
    noSideEffect, cdecl, importcpp: "IsActive", header: "OSD_MemInfo.hxx".}
proc setActive*(this: var OSD_MemInfo; theActive: bool) {.cdecl,
    importcpp: "SetActive", header: "OSD_MemInfo.hxx".}
proc setActive*(this: var OSD_MemInfo; theCounter: OSD_MemInfoCounter; theActive: bool) {.
    cdecl, importcpp: "SetActive", header: "OSD_MemInfo.hxx".}
proc clear*(this: var OSD_MemInfo) {.cdecl, importcpp: "Clear",
                                 header: "OSD_MemInfo.hxx".}
proc update*(this: var OSD_MemInfo) {.cdecl, importcpp: "Update",
                                  header: "OSD_MemInfo.hxx".}
proc toString*(this: OSD_MemInfo): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "ToString", header: "OSD_MemInfo.hxx".}
proc value*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): csize_t {.
    noSideEffect, cdecl, importcpp: "Value", header: "OSD_MemInfo.hxx".}
proc valueMiB*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): csize_t {.
    noSideEffect, cdecl, importcpp: "ValueMiB", header: "OSD_MemInfo.hxx".}
proc valuePreciseMiB*(this: OSD_MemInfo; theCounter: OSD_MemInfoCounter): cfloat {.
    noSideEffect, cdecl, importcpp: "ValuePreciseMiB", header: "OSD_MemInfo.hxx".}
proc printInfo*(): TCollectionAsciiString {.cdecl,
    importcpp: "OSD_MemInfo::PrintInfo(@)", header: "OSD_MemInfo.hxx".}

