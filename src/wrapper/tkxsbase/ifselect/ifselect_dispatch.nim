import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1992-11-17
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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





proc setRootName*(this: var IFSelectDispatch; name: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetRootName", header: "IFSelect_Dispatch.hxx".}
proc hasRootName*(this: IFSelectDispatch): bool {.noSideEffect, cdecl,
    importcpp: "HasRootName", header: "IFSelect_Dispatch.hxx".}
proc rootName*(this: IFSelectDispatch): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "RootName", header: "IFSelect_Dispatch.hxx".}
proc setFinalSelection*(this: var IFSelectDispatch; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetFinalSelection", header: "IFSelect_Dispatch.hxx".}
proc finalSelection*(this: IFSelectDispatch): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "FinalSelection", header: "IFSelect_Dispatch.hxx".}
proc selections*(this: IFSelectDispatch): IFSelectSelectionIterator {.noSideEffect,
    cdecl, importcpp: "Selections", header: "IFSelect_Dispatch.hxx".}
proc canHaveRemainder*(this: IFSelectDispatch): bool {.noSideEffect, cdecl,
    importcpp: "CanHaveRemainder", header: "IFSelect_Dispatch.hxx".}
proc limitedMax*(this: IFSelectDispatch; nbent: cint; max: var cint): bool {.
    noSideEffect, cdecl, importcpp: "LimitedMax", header: "IFSelect_Dispatch.hxx".}
proc label*(this: IFSelectDispatch): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Dispatch.hxx".}
proc getEntities*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "GetEntities", header: "IFSelect_Dispatch.hxx".}
proc packets*(this: IFSelectDispatch; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect, cdecl,
    importcpp: "Packets", header: "IFSelect_Dispatch.hxx".}
proc packeted*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Packeted", header: "IFSelect_Dispatch.hxx".}
proc remainder*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Remainder", header: "IFSelect_Dispatch.hxx".}


