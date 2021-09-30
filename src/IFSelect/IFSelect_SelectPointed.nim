##  Created on: 1994-05-30
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyControl"
discard "forward decl of IFSelect_Transformer"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectPointed"
discard "forward decl of IFSelect_SelectPointed"
type
  HandleC1C1* = Handle[IFSelectSelectPointed]

## ! This type of Selection is intended to describe a direct
## ! selection without an explicit criterium, for instance the
## ! result of picking viewed entities on a graphic screen
## !
## ! It can also be used to provide a list as internal alternate
## ! input : this use implies to clear the list once queried

type
  IFSelectSelectPointed* {.importcpp: "IFSelect_SelectPointed",
                          header: "IFSelect_SelectPointed.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## SelectPointed


proc constructIFSelectSelectPointed*(): IFSelectSelectPointed {.constructor,
    importcpp: "IFSelect_SelectPointed(@)", header: "IFSelect_SelectPointed.hxx".}
proc clear*(this: var IFSelectSelectPointed) {.importcpp: "Clear",
    header: "IFSelect_SelectPointed.hxx".}
proc isSet*(this: IFSelectSelectPointed): bool {.noSideEffect, importcpp: "IsSet",
    header: "IFSelect_SelectPointed.hxx".}
proc setEntity*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]) {.
    importcpp: "SetEntity", header: "IFSelect_SelectPointed.hxx".}
proc setList*(this: var IFSelectSelectPointed;
             list: Handle[TColStdHSequenceOfTransient]) {.importcpp: "SetList",
    header: "IFSelect_SelectPointed.hxx".}
proc add*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    importcpp: "Add", header: "IFSelect_SelectPointed.hxx".}
proc remove*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    importcpp: "Remove", header: "IFSelect_SelectPointed.hxx".}
proc toggle*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    importcpp: "Toggle", header: "IFSelect_SelectPointed.hxx".}
proc addList*(this: var IFSelectSelectPointed;
             list: Handle[TColStdHSequenceOfTransient]): bool {.
    importcpp: "AddList", header: "IFSelect_SelectPointed.hxx".}
proc removeList*(this: var IFSelectSelectPointed;
                list: Handle[TColStdHSequenceOfTransient]): bool {.
    importcpp: "RemoveList", header: "IFSelect_SelectPointed.hxx".}
proc toggleList*(this: var IFSelectSelectPointed;
                list: Handle[TColStdHSequenceOfTransient]): bool {.
    importcpp: "ToggleList", header: "IFSelect_SelectPointed.hxx".}
proc rank*(this: IFSelectSelectPointed; item: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "Rank", header: "IFSelect_SelectPointed.hxx".}
proc nbItems*(this: IFSelectSelectPointed): cint {.noSideEffect,
    importcpp: "NbItems", header: "IFSelect_SelectPointed.hxx".}
proc item*(this: IFSelectSelectPointed; num: cint): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Item", header: "IFSelect_SelectPointed.hxx".}
proc update*(this: var IFSelectSelectPointed; control: Handle[InterfaceCopyControl]) {.
    importcpp: "Update", header: "IFSelect_SelectPointed.hxx".}
proc update*(this: var IFSelectSelectPointed; trf: Handle[IFSelectTransformer]) {.
    importcpp: "Update", header: "IFSelect_SelectPointed.hxx".}
proc rootResult*(this: IFSelectSelectPointed; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectPointed.hxx".}
proc label*(this: IFSelectSelectPointed): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectPointed.hxx".}
type
  IFSelectSelectPointedbaseType* = IFSelectSelectBase

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectPointed::get_type_name(@)",
                            header: "IFSelect_SelectPointed.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectPointed::get_type_descriptor(@)",
    header: "IFSelect_SelectPointed.hxx".}
proc dynamicType*(this: IFSelectSelectPointed): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectPointed.hxx".}

























