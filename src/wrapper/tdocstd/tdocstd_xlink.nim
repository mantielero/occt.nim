import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types
import ../tcollection/tcollection_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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





proc set*(atLabel: TDF_Label): Handle[TDocStdXLink] {.cdecl,
    importcpp: "TDocStd_XLink::Set(@)", header: "TDocStd_XLink.hxx".}
proc newTDocStdXLink*(): TDocStdXLink {.cdecl, constructor,
                                     importcpp: "TDocStd_XLink(@)",
                                     header: "TDocStd_XLink.hxx".}
proc update*(this: var TDocStdXLink): Handle[TDF_Reference] {.cdecl,
    importcpp: "Update", header: "TDocStd_XLink.hxx".}
proc id*(this: TDocStdXLink): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDocStd_XLink.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "TDocStd_XLink::GetID(@)",
                           header: "TDocStd_XLink.hxx".}
proc documentEntry*(this: var TDocStdXLink; aDocEntry: TCollectionAsciiString) {.
    cdecl, importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc documentEntry*(this: TDocStdXLink): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: var TDocStdXLink; aLabel: TDF_Label) {.cdecl,
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: var TDocStdXLink; aLabEntry: TCollectionAsciiString) {.cdecl,
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: TDocStdXLink): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc afterAddition*(this: var TDocStdXLink) {.cdecl, importcpp: "AfterAddition",
    header: "TDocStd_XLink.hxx".}
proc beforeRemoval*(this: var TDocStdXLink) {.cdecl, importcpp: "BeforeRemoval",
    header: "TDocStd_XLink.hxx".}
proc beforeUndo*(this: var TDocStdXLink; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.cdecl, importcpp: "BeforeUndo",
    header: "TDocStd_XLink.hxx".}
proc afterUndo*(this: var TDocStdXLink; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.cdecl, importcpp: "AfterUndo",
    header: "TDocStd_XLink.hxx".}
proc backupCopy*(this: TDocStdXLink): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "BackupCopy", header: "TDocStd_XLink.hxx".}
proc restore*(this: var TDocStdXLink; anAttribute: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDocStd_XLink.hxx".}
proc newEmpty*(this: TDocStdXLink): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDocStd_XLink.hxx".}
proc paste*(this: TDocStdXLink; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDocStd_XLink.hxx".}
proc dump*(this: TDocStdXLink; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDocStd_XLink.hxx".}

