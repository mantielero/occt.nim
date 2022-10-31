import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types



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





proc newIFSelectSelectPointed*(): IFSelectSelectPointed {.cdecl, constructor,
    importcpp: "IFSelect_SelectPointed(@)", header: "IFSelect_SelectPointed.hxx".}
proc clear*(this: var IFSelectSelectPointed) {.cdecl, importcpp: "Clear",
    header: "IFSelect_SelectPointed.hxx".}
proc isSet*(this: IFSelectSelectPointed): bool {.noSideEffect, cdecl,
    importcpp: "IsSet", header: "IFSelect_SelectPointed.hxx".}
proc setEntity*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]) {.
    cdecl, importcpp: "SetEntity", header: "IFSelect_SelectPointed.hxx".}
proc setList*(this: var IFSelectSelectPointed;
             list: Handle[TColStdHSequenceOfTransient]) {.cdecl,
    importcpp: "SetList", header: "IFSelect_SelectPointed.hxx".}
proc add*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Add", header: "IFSelect_SelectPointed.hxx".}
proc remove*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Remove", header: "IFSelect_SelectPointed.hxx".}
proc toggle*(this: var IFSelectSelectPointed; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Toggle", header: "IFSelect_SelectPointed.hxx".}
proc addList*(this: var IFSelectSelectPointed;
             list: Handle[TColStdHSequenceOfTransient]): bool {.cdecl,
    importcpp: "AddList", header: "IFSelect_SelectPointed.hxx".}
proc removeList*(this: var IFSelectSelectPointed;
                list: Handle[TColStdHSequenceOfTransient]): bool {.cdecl,
    importcpp: "RemoveList", header: "IFSelect_SelectPointed.hxx".}
proc toggleList*(this: var IFSelectSelectPointed;
                list: Handle[TColStdHSequenceOfTransient]): bool {.cdecl,
    importcpp: "ToggleList", header: "IFSelect_SelectPointed.hxx".}
proc rank*(this: IFSelectSelectPointed; item: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "Rank", header: "IFSelect_SelectPointed.hxx".}
proc nbItems*(this: IFSelectSelectPointed): cint {.noSideEffect, cdecl,
    importcpp: "NbItems", header: "IFSelect_SelectPointed.hxx".}
proc item*(this: IFSelectSelectPointed; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Item", header: "IFSelect_SelectPointed.hxx".}
proc update*(this: var IFSelectSelectPointed; control: Handle[InterfaceCopyControl]) {.
    cdecl, importcpp: "Update", header: "IFSelect_SelectPointed.hxx".}
proc update*(this: var IFSelectSelectPointed; trf: Handle[IFSelectTransformer]) {.
    cdecl, importcpp: "Update", header: "IFSelect_SelectPointed.hxx".}
proc rootResult*(this: IFSelectSelectPointed; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectPointed.hxx".}
proc label*(this: IFSelectSelectPointed): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_SelectPointed.hxx".}

