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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  TDF_AttributeDeltaList, ../TCollection/TCollection_ExtendedString,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean, TDF_LabelList,
  ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_Delta"
type
  Handle_TDF_Delta* = handle[TDF_Delta]

## ! A set of AttributeDelta for a given transaction
## ! number and reference time number.
## ! A delta set is available at <aSourceTime>. If
## ! applied, it restores the TDF_Data in the state it
## ! was at <aTargetTime>.

type
  TDF_Delta* {.importcpp: "TDF_Delta", header: "TDF_Delta.hxx", bycopy.} = object of Standard_Transient ##
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
proc IsEmpty*(this: TDF_Delta): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDF_Delta.hxx".}
proc IsApplicable*(this: TDF_Delta; aCurrentTime: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsApplicable", header: "TDF_Delta.hxx".}
proc BeginTime*(this: TDF_Delta): Standard_Integer {.noSideEffect,
    importcpp: "BeginTime", header: "TDF_Delta.hxx".}
proc EndTime*(this: TDF_Delta): Standard_Integer {.noSideEffect,
    importcpp: "EndTime", header: "TDF_Delta.hxx".}
proc Labels*(this: TDF_Delta; aLabelList: var TDF_LabelList) {.noSideEffect,
    importcpp: "Labels", header: "TDF_Delta.hxx".}
proc AttributeDeltas*(this: TDF_Delta): TDF_AttributeDeltaList {.noSideEffect,
    importcpp: "AttributeDeltas", header: "TDF_Delta.hxx".}
proc Name*(this: TDF_Delta): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDF_Delta.hxx".}
proc SetName*(this: var TDF_Delta; theName: TCollection_ExtendedString) {.
    importcpp: "SetName", header: "TDF_Delta.hxx".}
proc Dump*(this: TDF_Delta; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TDF_Delta.hxx".}
proc DumpJson*(this: TDF_Delta; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_Delta.hxx".}
type
  TDF_Deltabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDF_Delta::get_type_name(@)",
                              header: "TDF_Delta.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_Delta::get_type_descriptor(@)", header: "TDF_Delta.hxx".}
proc DynamicType*(this: TDF_Delta): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Delta.hxx".}