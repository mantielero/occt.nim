import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1994-06-08
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



proc newIFSelectContextModif*(graph: InterfaceGraph; tc: InterfaceCopyTool;
                             filename: cstring = ""): IFSelectContextModif {.cdecl,
    constructor, importcpp: "IFSelect_ContextModif(@)", header: "IFSelect_ContextModif.hxx".}
proc newIFSelectContextModif*(graph: InterfaceGraph; filename: cstring = ""): IFSelectContextModif {.
    cdecl, constructor, importcpp: "IFSelect_ContextModif(@)", header: "IFSelect_ContextModif.hxx".}
proc select*(this: var IFSelectContextModif; list: var InterfaceEntityIterator) {.
    cdecl, importcpp: "Select", header: "IFSelect_ContextModif.hxx".}
proc originalGraph*(this: IFSelectContextModif): InterfaceGraph {.noSideEffect,
    cdecl, importcpp: "OriginalGraph", header: "IFSelect_ContextModif.hxx".}
proc originalModel*(this: IFSelectContextModif): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "OriginalModel", header: "IFSelect_ContextModif.hxx".}
proc setProtocol*(this: var IFSelectContextModif; proto: Handle[InterfaceProtocol]) {.
    cdecl, importcpp: "SetProtocol", header: "IFSelect_ContextModif.hxx".}
proc protocol*(this: IFSelectContextModif): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "IFSelect_ContextModif.hxx".}
proc hasFileName*(this: IFSelectContextModif): bool {.noSideEffect, cdecl,
    importcpp: "HasFileName", header: "IFSelect_ContextModif.hxx".}
proc fileName*(this: IFSelectContextModif): cstring {.noSideEffect, cdecl,
    importcpp: "FileName", header: "IFSelect_ContextModif.hxx".}
proc control*(this: IFSelectContextModif): Handle[InterfaceCopyControl] {.
    noSideEffect, cdecl, importcpp: "Control", header: "IFSelect_ContextModif.hxx".}
proc isForNone*(this: IFSelectContextModif): bool {.noSideEffect, cdecl,
    importcpp: "IsForNone", header: "IFSelect_ContextModif.hxx".}
proc isForAll*(this: IFSelectContextModif): bool {.noSideEffect, cdecl,
    importcpp: "IsForAll", header: "IFSelect_ContextModif.hxx".}
proc isTransferred*(this: IFSelectContextModif; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsTransferred", header: "IFSelect_ContextModif.hxx".}
proc isSelected*(this: IFSelectContextModif; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: "IFSelect_ContextModif.hxx".}
proc search*(this: IFSelectContextModif; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "IFSelect_ContextModif.hxx".}
proc selectedOriginal*(this: IFSelectContextModif): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "SelectedOriginal", header: "IFSelect_ContextModif.hxx".}
proc selectedResult*(this: IFSelectContextModif): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "SelectedResult", header: "IFSelect_ContextModif.hxx".}
proc selectedCount*(this: IFSelectContextModif): cint {.noSideEffect, cdecl,
    importcpp: "SelectedCount", header: "IFSelect_ContextModif.hxx".}
proc start*(this: var IFSelectContextModif) {.cdecl, importcpp: "Start",
    header: "IFSelect_ContextModif.hxx".}
proc more*(this: IFSelectContextModif): bool {.noSideEffect, cdecl, importcpp: "More",
    header: "IFSelect_ContextModif.hxx".}
proc next*(this: var IFSelectContextModif) {.cdecl, importcpp: "Next", header: "IFSelect_ContextModif.hxx".}
proc valueOriginal*(this: IFSelectContextModif): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "ValueOriginal", header: "IFSelect_ContextModif.hxx".}
proc valueResult*(this: IFSelectContextModif): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "ValueResult", header: "IFSelect_ContextModif.hxx".}
proc traceModifier*(this: var IFSelectContextModif;
                   modif: Handle[IFSelectGeneralModifier]) {.cdecl,
    importcpp: "TraceModifier", header: "IFSelect_ContextModif.hxx".}
proc trace*(this: var IFSelectContextModif; mess: cstring = "") {.cdecl,
    importcpp: "Trace", header: "IFSelect_ContextModif.hxx".}
proc addCheck*(this: var IFSelectContextModif; check: Handle[InterfaceCheck]) {.cdecl,
    importcpp: "AddCheck", header: "IFSelect_ContextModif.hxx".}
proc addWarning*(this: var IFSelectContextModif; start: Handle[StandardTransient];
                mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddWarning",
    header: "IFSelect_ContextModif.hxx".}
proc addFail*(this: var IFSelectContextModif; start: Handle[StandardTransient];
             mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddFail",
    header: "IFSelect_ContextModif.hxx".}
proc cCheck*(this: var IFSelectContextModif; num: cint = 0): Handle[InterfaceCheck] {.
    cdecl, importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc cCheck*(this: var IFSelectContextModif; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.cdecl, importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc checkList*(this: IFSelectContextModif): InterfaceCheckIterator {.noSideEffect,
    cdecl, importcpp: "CheckList", header: "IFSelect_ContextModif.hxx".}


