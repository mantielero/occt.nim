##  Created on: 2008-06-22
##  Created by: Vladislav ROMASHKO
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  TFunction_DoubleMapOfIntegerLabel, TFunction_Logbook,
  ../Standard/Standard_Integer, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TFunction_Scope"
discard "forward decl of TFunction_Scope"
type
  Handle_TFunction_Scope* = handle[TFunction_Scope]

## ! Keeps a scope of functions.

type
  TFunction_Scope* {.importcpp: "TFunction_Scope", header: "TFunction_Scope.hxx",
                    bycopy.} = object of TDF_Attribute ## ! Static methods
                                                  ## ! ==============
                                                  ## ! Finds or Creates a TFunction_Scope attribute at the root label accessed by <Access>.
                                                  ## ! Returns the attribute.


proc Set*(Access: TDF_Label): handle[TFunction_Scope] {.
    importcpp: "TFunction_Scope::Set(@)", header: "TFunction_Scope.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TFunction_Scope::GetID(@)",
                            header: "TFunction_Scope.hxx".}
proc constructTFunction_Scope*(): TFunction_Scope {.constructor,
    importcpp: "TFunction_Scope(@)", header: "TFunction_Scope.hxx".}
proc AddFunction*(this: var TFunction_Scope; L: TDF_Label): Standard_Boolean {.
    importcpp: "AddFunction", header: "TFunction_Scope.hxx".}
proc RemoveFunction*(this: var TFunction_Scope; L: TDF_Label): Standard_Boolean {.
    importcpp: "RemoveFunction", header: "TFunction_Scope.hxx".}
proc RemoveFunction*(this: var TFunction_Scope; ID: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveFunction", header: "TFunction_Scope.hxx".}
proc RemoveAllFunctions*(this: var TFunction_Scope) {.
    importcpp: "RemoveAllFunctions", header: "TFunction_Scope.hxx".}
proc HasFunction*(this: TFunction_Scope; ID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasFunction", header: "TFunction_Scope.hxx".}
proc HasFunction*(this: TFunction_Scope; L: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "HasFunction", header: "TFunction_Scope.hxx".}
proc GetFunction*(this: TFunction_Scope; L: TDF_Label): Standard_Integer {.
    noSideEffect, importcpp: "GetFunction", header: "TFunction_Scope.hxx".}
proc GetFunction*(this: TFunction_Scope; ID: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "GetFunction", header: "TFunction_Scope.hxx".}
proc GetLogbook*(this: TFunction_Scope): handle[TFunction_Logbook] {.noSideEffect,
    importcpp: "GetLogbook", header: "TFunction_Scope.hxx".}
proc ID*(this: TFunction_Scope): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Scope.hxx".}
proc Restore*(this: var TFunction_Scope; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Scope.hxx".}
proc Paste*(this: TFunction_Scope; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Scope.hxx".}
proc NewEmpty*(this: TFunction_Scope): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Scope.hxx".}
proc Dump*(this: TFunction_Scope; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Scope.hxx".}
proc GetFunctions*(this: TFunction_Scope): TFunction_DoubleMapOfIntegerLabel {.
    noSideEffect, importcpp: "GetFunctions", header: "TFunction_Scope.hxx".}
proc ChangeFunctions*(this: var TFunction_Scope): var TFunction_DoubleMapOfIntegerLabel {.
    importcpp: "ChangeFunctions", header: "TFunction_Scope.hxx".}
proc SetFreeID*(this: var TFunction_Scope; ID: Standard_Integer) {.
    importcpp: "SetFreeID", header: "TFunction_Scope.hxx".}
proc GetFreeID*(this: TFunction_Scope): Standard_Integer {.noSideEffect,
    importcpp: "GetFreeID", header: "TFunction_Scope.hxx".}
type
  TFunction_Scopebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TFunction_Scope::get_type_name(@)",
                              header: "TFunction_Scope.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TFunction_Scope::get_type_descriptor(@)",
    header: "TFunction_Scope.hxx".}
proc DynamicType*(this: TFunction_Scope): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Scope.hxx".}