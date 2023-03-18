import tdf_types
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





proc newTDF_Data*(): TDF_Data {.cdecl, constructor, importcpp: "TDF_Data(@)",
                             header: "TDF_Data.hxx".}
proc root*(this: TDF_Data): TDF_Label {.noSideEffect, cdecl, importcpp: "Root",
                                    header: "TDF_Data.hxx".}
proc transaction*(this: TDF_Data): cint {.noSideEffect, cdecl,
                                      importcpp: "Transaction",
                                      header: "TDF_Data.hxx".}
proc time*(this: TDF_Data): cint {.noSideEffect, cdecl, importcpp: "Time",
                               header: "TDF_Data.hxx".}
proc isApplicable*(this: TDF_Data; aDelta: Handle[TDF_Delta]): bool {.noSideEffect,
    cdecl, importcpp: "IsApplicable", header: "TDF_Data.hxx".}
proc undo*(this: var TDF_Data; aDelta: Handle[TDF_Delta]; withDelta: bool = false): Handle[
    TDF_Delta] {.cdecl, importcpp: "Undo", header: "TDF_Data.hxx".}
proc destroy*(this: var TDF_Data) {.cdecl, importcpp: "Destroy", header: "TDF_Data.hxx".}
proc destroyTDF_Data*(this: var TDF_Data) {.cdecl, importcpp: "#.~TDF_Data()",
                                        header: "TDF_Data.hxx".}
proc notUndoMode*(this: TDF_Data): bool {.noSideEffect, cdecl,
                                      importcpp: "NotUndoMode",
                                      header: "TDF_Data.hxx".}
proc dump*(this: TDF_Data; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_Data.hxx".}
proc `<<`*(this: TDF_Data; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "(# << #)", header: "TDF_Data.hxx".}
proc allowModification*(this: var TDF_Data; isAllowed: bool) {.cdecl,
    importcpp: "AllowModification", header: "TDF_Data.hxx".}
proc isModificationAllowed*(this: TDF_Data): bool {.noSideEffect, cdecl,
    importcpp: "IsModificationAllowed", header: "TDF_Data.hxx".}
proc setAccessByEntries*(this: var TDF_Data; aSet: bool) {.cdecl,
    importcpp: "SetAccessByEntries", header: "TDF_Data.hxx".}
proc isAccessByEntries*(this: TDF_Data): bool {.noSideEffect, cdecl,
    importcpp: "IsAccessByEntries", header: "TDF_Data.hxx".}
proc getLabel*(this: var TDF_Data; anEntry: TCollectionAsciiString;
              aLabel: var TDF_Label): bool {.cdecl, importcpp: "GetLabel",
    header: "TDF_Data.hxx".}
proc registerLabel*(this: var TDF_Data; aLabel: TDF_Label) {.cdecl,
    importcpp: "RegisterLabel", header: "TDF_Data.hxx".}
proc labelNodeAllocator*(this: TDF_Data): TDF_HAllocator {.noSideEffect, cdecl,
    importcpp: "LabelNodeAllocator", header: "TDF_Data.hxx".}
proc dumpJson*(this: TDF_Data; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "TDF_Data.hxx".}

