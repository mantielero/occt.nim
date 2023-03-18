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





proc newTDF_Delta*(): TDF_Delta {.cdecl, constructor, importcpp: "TDF_Delta(@)",
                               header: "TDF_Delta.hxx".}
proc isEmpty*(this: TDF_Delta): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                   header: "TDF_Delta.hxx".}
proc isApplicable*(this: TDF_Delta; aCurrentTime: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsApplicable", header: "TDF_Delta.hxx".}
proc beginTime*(this: TDF_Delta): cint {.noSideEffect, cdecl, importcpp: "BeginTime",
                                     header: "TDF_Delta.hxx".}
proc endTime*(this: TDF_Delta): cint {.noSideEffect, cdecl, importcpp: "EndTime",
                                   header: "TDF_Delta.hxx".}
proc labels*(this: TDF_Delta; aLabelList: var TDF_LabelList) {.noSideEffect, cdecl,
    importcpp: "Labels", header: "TDF_Delta.hxx".}
proc attributeDeltas*(this: TDF_Delta): TDF_AttributeDeltaList {.noSideEffect, cdecl,
    importcpp: "AttributeDeltas", header: "TDF_Delta.hxx".}
proc name*(this: TDF_Delta): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Name", header: "TDF_Delta.hxx".}
proc setName*(this: var TDF_Delta; theName: TCollectionExtendedString) {.cdecl,
    importcpp: "SetName", header: "TDF_Delta.hxx".}
proc dump*(this: TDF_Delta; os: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "TDF_Delta.hxx".}
proc dumpJson*(this: TDF_Delta; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "TDF_Delta.hxx".}

