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

import
  ../Standard/Standard, ../Standard/Standard_Type, TDocStd_SequenceOfDocument,
  ../TCollection/TCollection_ExtendedString, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_ApplicationDelta"
discard "forward decl of TDocStd_ApplicationDelta"
type
  Handle_TDocStd_ApplicationDelta* = handle[TDocStd_ApplicationDelta]
  TDocStd_ApplicationDelta* {.importcpp: "TDocStd_ApplicationDelta",
                             header: "TDocStd_ApplicationDelta.hxx", bycopy.} = object of Standard_Transient


proc constructTDocStd_ApplicationDelta*(): TDocStd_ApplicationDelta {.constructor,
    importcpp: "TDocStd_ApplicationDelta(@)",
    header: "TDocStd_ApplicationDelta.hxx".}
proc GetDocuments*(this: var TDocStd_ApplicationDelta): var TDocStd_SequenceOfDocument {.
    importcpp: "GetDocuments", header: "TDocStd_ApplicationDelta.hxx".}
proc GetName*(this: TDocStd_ApplicationDelta): TCollection_ExtendedString {.
    noSideEffect, importcpp: "GetName", header: "TDocStd_ApplicationDelta.hxx".}
proc SetName*(this: var TDocStd_ApplicationDelta;
             theName: TCollection_ExtendedString) {.importcpp: "SetName",
    header: "TDocStd_ApplicationDelta.hxx".}
proc Dump*(this: TDocStd_ApplicationDelta; anOS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TDocStd_ApplicationDelta.hxx".}
type
  TDocStd_ApplicationDeltabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDocStd_ApplicationDelta::get_type_name(@)",
                              header: "TDocStd_ApplicationDelta.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_ApplicationDelta::get_type_descriptor(@)",
    header: "TDocStd_ApplicationDelta.hxx".}
proc DynamicType*(this: TDocStd_ApplicationDelta): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDocStd_ApplicationDelta.hxx".}