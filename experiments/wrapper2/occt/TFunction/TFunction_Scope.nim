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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TFunction_Scope"
discard "forward decl of TFunction_Scope"
type
  HandleTFunctionScope* = Handle[TFunctionScope]

## ! Keeps a scope of functions.

type
  TFunctionScope* {.importcpp: "TFunction_Scope", header: "TFunction_Scope.hxx",
                   bycopy.} = object of TDF_Attribute ## ! Static methods
                                                 ## ! ==============
                                                 ## ! Finds or Creates a TFunction_Scope attribute at the root label accessed by <Access>.
                                                 ## ! Returns the attribute.


proc set*(access: TDF_Label): Handle[TFunctionScope] {.
    importcpp: "TFunction_Scope::Set(@)", header: "TFunction_Scope.hxx".}
proc getID*(): StandardGUID {.importcpp: "TFunction_Scope::GetID(@)",
                           header: "TFunction_Scope.hxx".}
proc constructTFunctionScope*(): TFunctionScope {.constructor,
    importcpp: "TFunction_Scope(@)", header: "TFunction_Scope.hxx".}
proc addFunction*(this: var TFunctionScope; L: TDF_Label): bool {.
    importcpp: "AddFunction", header: "TFunction_Scope.hxx".}
proc removeFunction*(this: var TFunctionScope; L: TDF_Label): bool {.
    importcpp: "RemoveFunction", header: "TFunction_Scope.hxx".}
proc removeFunction*(this: var TFunctionScope; id: int): bool {.
    importcpp: "RemoveFunction", header: "TFunction_Scope.hxx".}
proc removeAllFunctions*(this: var TFunctionScope) {.
    importcpp: "RemoveAllFunctions", header: "TFunction_Scope.hxx".}
proc hasFunction*(this: TFunctionScope; id: int): bool {.noSideEffect,
    importcpp: "HasFunction", header: "TFunction_Scope.hxx".}
proc hasFunction*(this: TFunctionScope; L: TDF_Label): bool {.noSideEffect,
    importcpp: "HasFunction", header: "TFunction_Scope.hxx".}
proc getFunction*(this: TFunctionScope; L: TDF_Label): int {.noSideEffect,
    importcpp: "GetFunction", header: "TFunction_Scope.hxx".}
proc getFunction*(this: TFunctionScope; id: int): TDF_Label {.noSideEffect,
    importcpp: "GetFunction", header: "TFunction_Scope.hxx".}
proc getLogbook*(this: TFunctionScope): Handle[TFunctionLogbook] {.noSideEffect,
    importcpp: "GetLogbook", header: "TFunction_Scope.hxx".}
proc id*(this: TFunctionScope): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Scope.hxx".}
proc restore*(this: var TFunctionScope; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Scope.hxx".}
proc paste*(this: TFunctionScope; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Scope.hxx".}
proc newEmpty*(this: TFunctionScope): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Scope.hxx".}
proc dump*(this: TFunctionScope; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Scope.hxx".}
proc getFunctions*(this: TFunctionScope): TFunctionDoubleMapOfIntegerLabel {.
    noSideEffect, importcpp: "GetFunctions", header: "TFunction_Scope.hxx".}
proc changeFunctions*(this: var TFunctionScope): var TFunctionDoubleMapOfIntegerLabel {.
    importcpp: "ChangeFunctions", header: "TFunction_Scope.hxx".}
proc setFreeID*(this: var TFunctionScope; id: int) {.importcpp: "SetFreeID",
    header: "TFunction_Scope.hxx".}
proc getFreeID*(this: TFunctionScope): int {.noSideEffect, importcpp: "GetFreeID",
    header: "TFunction_Scope.hxx".}
type
  TFunctionScopebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TFunction_Scope::get_type_name(@)",
                            header: "TFunction_Scope.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TFunction_Scope::get_type_descriptor(@)",
    header: "TFunction_Scope.hxx".}
proc dynamicType*(this: TFunctionScope): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Scope.hxx".}
