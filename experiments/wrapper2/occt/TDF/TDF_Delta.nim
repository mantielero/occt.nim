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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_Delta"
type
  HandleTDF_Delta* = Handle[TDF_Delta]

## ! A set of AttributeDelta for a given transaction
## ! number and reference time number.
## ! A delta set is available at <aSourceTime>. If
## ! applied, it restores the TDF_Data in the state it
## ! was at <aTargetTime>.

type
  TDF_Delta* {.importcpp: "TDF_Delta", header: "TDF_Delta.hxx", bycopy.} = object of StandardTransient ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## delta.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Validates
                                                                                             ## <me>
                                                                                             ## at
                                                                                             ## <aBeginTime>.
                                                                                             ## If
                                                                                             ## applied,
                                                                                             ## it
                                                                                             ##
                                                                                             ## !
                                                                                             ## restores
                                                                                             ## the
                                                                                             ## TDF_Data
                                                                                             ## in
                                                                                             ## the
                                                                                             ## state
                                                                                             ## it
                                                                                             ## was
                                                                                             ## at
                                                                                             ##
                                                                                             ## !
                                                                                             ## <anEndTime>.
                                                                                             ## Reserved
                                                                                             ## to
                                                                                             ## TDF_Data.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Replaces
                                                                                             ## Attribute
                                                                                             ## Delta
                                                                                             ## List


proc constructTDF_Delta*(): TDF_Delta {.constructor, importcpp: "TDF_Delta(@)",
                                     header: "TDF_Delta.hxx".}
proc isEmpty*(this: TDF_Delta): bool {.noSideEffect, importcpp: "IsEmpty",
                                   header: "TDF_Delta.hxx".}
proc isApplicable*(this: TDF_Delta; aCurrentTime: int): bool {.noSideEffect,
    importcpp: "IsApplicable", header: "TDF_Delta.hxx".}
proc beginTime*(this: TDF_Delta): int {.noSideEffect, importcpp: "BeginTime",
                                    header: "TDF_Delta.hxx".}
proc endTime*(this: TDF_Delta): int {.noSideEffect, importcpp: "EndTime",
                                  header: "TDF_Delta.hxx".}
proc labels*(this: TDF_Delta; aLabelList: var TDF_LabelList) {.noSideEffect,
    importcpp: "Labels", header: "TDF_Delta.hxx".}
proc attributeDeltas*(this: TDF_Delta): TDF_AttributeDeltaList {.noSideEffect,
    importcpp: "AttributeDeltas", header: "TDF_Delta.hxx".}
proc name*(this: TDF_Delta): TCollectionExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDF_Delta.hxx".}
proc setName*(this: var TDF_Delta; theName: TCollectionExtendedString) {.
    importcpp: "SetName", header: "TDF_Delta.hxx".}
proc dump*(this: TDF_Delta; os: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "TDF_Delta.hxx".}
proc dumpJson*(this: TDF_Delta; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "TDF_Delta.hxx".}
type
  TDF_DeltabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDF_Delta::get_type_name(@)",
                            header: "TDF_Delta.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_Delta::get_type_descriptor(@)", header: "TDF_Delta.hxx".}
proc dynamicType*(this: TDF_Delta): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Delta.hxx".}
