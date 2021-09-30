##  Created on: 2002-11-19
##  Created by: Vladimir ANIKIN
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_ApplicationDelta"
discard "forward decl of TDocStd_ApplicationDelta"
type
  HandleC1C1* = Handle[TDocStdApplicationDelta]
  TDocStdApplicationDelta* {.importcpp: "TDocStd_ApplicationDelta",
                            header: "TDocStd_ApplicationDelta.hxx", bycopy.} = object of StandardTransient


proc constructTDocStdApplicationDelta*(): TDocStdApplicationDelta {.constructor,
    importcpp: "TDocStd_ApplicationDelta(@)",
    header: "TDocStd_ApplicationDelta.hxx".}
proc getDocuments*(this: var TDocStdApplicationDelta): var TDocStdSequenceOfDocument {.
    importcpp: "GetDocuments", header: "TDocStd_ApplicationDelta.hxx".}
proc getName*(this: TDocStdApplicationDelta): TCollectionExtendedString {.
    noSideEffect, importcpp: "GetName", header: "TDocStd_ApplicationDelta.hxx".}
proc setName*(this: var TDocStdApplicationDelta; theName: TCollectionExtendedString) {.
    importcpp: "SetName", header: "TDocStd_ApplicationDelta.hxx".}
proc dump*(this: TDocStdApplicationDelta; anOS: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "TDocStd_ApplicationDelta.hxx".}
type
  TDocStdApplicationDeltabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDocStd_ApplicationDelta::get_type_name(@)",
                            header: "TDocStd_ApplicationDelta.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_ApplicationDelta::get_type_descriptor(@)",
    header: "TDocStd_ApplicationDelta.hxx".}
proc dynamicType*(this: TDocStdApplicationDelta): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TDocStd_ApplicationDelta.hxx".}

























