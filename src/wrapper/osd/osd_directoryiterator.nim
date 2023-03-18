import ../selectmgr/selectmgr_types
import ../tcollection/tcollection_types
import osd_types



##  Created on: 1992-05-18
##  Created by: Stephan GARNAUD
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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



proc newOSD_DirectoryIterator*(): OSD_DirectoryIterator {.cdecl, constructor,
    importcpp: "OSD_DirectoryIterator(@)", header: "OSD_DirectoryIterator.hxx".}
proc newOSD_DirectoryIterator*(where: OSD_Path; mask: TCollectionAsciiString): OSD_DirectoryIterator {.
    cdecl, constructor, importcpp: "OSD_DirectoryIterator(@)",
    header: "OSD_DirectoryIterator.hxx".}
proc destroy*(this: var OSD_DirectoryIterator) {.cdecl, importcpp: "Destroy",
    header: "OSD_DirectoryIterator.hxx".}
proc destroyOSD_DirectoryIterator*(this: var OSD_DirectoryIterator) {.cdecl,
    importcpp: "#.~OSD_DirectoryIterator()", header: "OSD_DirectoryIterator.hxx".}
proc initialize*(this: var OSD_DirectoryIterator; where: OSD_Path;
                mask: TCollectionAsciiString) {.cdecl, importcpp: "Initialize",
    header: "OSD_DirectoryIterator.hxx".}
proc more*(this: var OSD_DirectoryIterator): bool {.cdecl, importcpp: "More",
    header: "OSD_DirectoryIterator.hxx".}
proc next*(this: var OSD_DirectoryIterator) {.cdecl, importcpp: "Next",
    header: "OSD_DirectoryIterator.hxx".}
proc values*(this: var OSD_DirectoryIterator): OSD_Directory {.cdecl,
    importcpp: "Values", header: "OSD_DirectoryIterator.hxx".}
proc failed*(this: OSD_DirectoryIterator): bool {.noSideEffect, cdecl,
    importcpp: "Failed", header: "OSD_DirectoryIterator.hxx".}
proc reset*(this: var OSD_DirectoryIterator) {.cdecl, importcpp: "Reset",
    header: "OSD_DirectoryIterator.hxx".}
proc perror*(this: var OSD_DirectoryIterator) {.cdecl, importcpp: "Perror",
    header: "OSD_DirectoryIterator.hxx".}
proc error*(this: OSD_DirectoryIterator): cint {.noSideEffect, cdecl,
    importcpp: "Error", header: "OSD_DirectoryIterator.hxx".}

