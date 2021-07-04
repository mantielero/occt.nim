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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_SequenceOfTransient, IFSelect_SelectBase,
  ../TColStd/TColStd_HSequenceOfTransient, ../Standard/Standard_Integer

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
  Handle_IFSelect_SelectPointed* = handle[IFSelect_SelectPointed]

## ! This type of Selection is intended to describe a direct
## ! selection without an explicit criterium, for instance the
## ! result of picking viewed entities on a graphic screen
## !
## ! It can also be used to provide a list as internal alternate
## ! input : this use implies to clear the list once queried

type
  IFSelect_SelectPointed* {.importcpp: "IFSelect_SelectPointed",
                           header: "IFSelect_SelectPointed.hxx", bycopy.} = object of IFSelect_SelectBase ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## SelectPointed


proc constructIFSelect_SelectPointed*(): IFSelect_SelectPointed {.constructor,
    importcpp: "IFSelect_SelectPointed(@)", header: "IFSelect_SelectPointed.hxx".}
proc Clear*(this: var IFSelect_SelectPointed) {.importcpp: "Clear",
    header: "IFSelect_SelectPointed.hxx".}
proc IsSet*(this: IFSelect_SelectPointed): Standard_Boolean {.noSideEffect,
    importcpp: "IsSet", header: "IFSelect_SelectPointed.hxx".}
proc SetEntity*(this: var IFSelect_SelectPointed; item: handle[Standard_Transient]) {.
    importcpp: "SetEntity", header: "IFSelect_SelectPointed.hxx".}
proc SetList*(this: var IFSelect_SelectPointed;
             list: handle[TColStd_HSequenceOfTransient]) {.importcpp: "SetList",
    header: "IFSelect_SelectPointed.hxx".}
proc Add*(this: var IFSelect_SelectPointed; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Add", header: "IFSelect_SelectPointed.hxx".}
proc Remove*(this: var IFSelect_SelectPointed; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Remove", header: "IFSelect_SelectPointed.hxx".}
proc Toggle*(this: var IFSelect_SelectPointed; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Toggle", header: "IFSelect_SelectPointed.hxx".}
proc AddList*(this: var IFSelect_SelectPointed;
             list: handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    importcpp: "AddList", header: "IFSelect_SelectPointed.hxx".}
proc RemoveList*(this: var IFSelect_SelectPointed;
                list: handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    importcpp: "RemoveList", header: "IFSelect_SelectPointed.hxx".}
proc ToggleList*(this: var IFSelect_SelectPointed;
                list: handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    importcpp: "ToggleList", header: "IFSelect_SelectPointed.hxx".}
proc Rank*(this: IFSelect_SelectPointed; item: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "Rank", header: "IFSelect_SelectPointed.hxx".}
proc NbItems*(this: IFSelect_SelectPointed): Standard_Integer {.noSideEffect,
    importcpp: "NbItems", header: "IFSelect_SelectPointed.hxx".}
proc Item*(this: IFSelect_SelectPointed; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Item",
                         header: "IFSelect_SelectPointed.hxx".}
proc Update*(this: var IFSelect_SelectPointed;
            control: handle[Interface_CopyControl]) {.importcpp: "Update",
    header: "IFSelect_SelectPointed.hxx".}
proc Update*(this: var IFSelect_SelectPointed; trf: handle[IFSelect_Transformer]) {.
    importcpp: "Update", header: "IFSelect_SelectPointed.hxx".}
proc RootResult*(this: IFSelect_SelectPointed; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectPointed.hxx".}
proc Label*(this: IFSelect_SelectPointed): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectPointed.hxx".}
type
  IFSelect_SelectPointedbase_type* = IFSelect_SelectBase

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectPointed::get_type_name(@)",
                              header: "IFSelect_SelectPointed.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectPointed::get_type_descriptor(@)",
    header: "IFSelect_SelectPointed.hxx".}
proc DynamicType*(this: IFSelect_SelectPointed): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectPointed.hxx".}