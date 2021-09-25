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

discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyControl"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CheckIterator"
type
  IFSelectContextModif* {.importcpp: "IFSelect_ContextModif",
                         header: "IFSelect_ContextModif.hxx", bycopy.} = object ## !
                                                                           ## Prepares a
                                                                           ## ContextModif with these
                                                                           ## informations :
                                                                           ## ! - the graph
                                                                           ## established from
                                                                           ## original model
                                                                           ## (target
                                                                           ## passed
                                                                           ## !
                                                                           ## directly to
                                                                           ## Modifier)
                                                                           ## ! - the
                                                                           ## CopyTool which
                                                                           ## detains the
                                                                           ## CopyControl, which maps
                                                                           ## !
                                                                           ## starting (in
                                                                           ## original) and
                                                                           ## result (in
                                                                           ## target)
                                                                           ## entities
                                                                           ## ! - an
                                                                           ## optional file name (for file
                                                                           ## output)
                                                                           ## !
                                                                           ## ! Such a
                                                                           ## ContextModif is
                                                                           ## considered to be
                                                                           ## applied on all
                                                                           ## !
                                                                           ## transferred
                                                                           ## entities (no
                                                                           ## filter
                                                                           ## active)


proc constructIFSelectContextModif*(graph: InterfaceGraph; tc: InterfaceCopyTool;
                                   filename: StandardCString = ""): IFSelectContextModif {.
    constructor, importcpp: "IFSelect_ContextModif(@)",
    header: "IFSelect_ContextModif.hxx".}
proc constructIFSelectContextModif*(graph: InterfaceGraph;
                                   filename: StandardCString = ""): IFSelectContextModif {.
    constructor, importcpp: "IFSelect_ContextModif(@)",
    header: "IFSelect_ContextModif.hxx".}
proc select*(this: var IFSelectContextModif; list: var InterfaceEntityIterator) {.
    importcpp: "Select", header: "IFSelect_ContextModif.hxx".}
proc originalGraph*(this: IFSelectContextModif): InterfaceGraph {.noSideEffect,
    importcpp: "OriginalGraph", header: "IFSelect_ContextModif.hxx".}
proc originalModel*(this: IFSelectContextModif): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "OriginalModel", header: "IFSelect_ContextModif.hxx".}
proc setProtocol*(this: var IFSelectContextModif; proto: Handle[InterfaceProtocol]) {.
    importcpp: "SetProtocol", header: "IFSelect_ContextModif.hxx".}
proc protocol*(this: IFSelectContextModif): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "IFSelect_ContextModif.hxx".}
proc hasFileName*(this: IFSelectContextModif): bool {.noSideEffect,
    importcpp: "HasFileName", header: "IFSelect_ContextModif.hxx".}
proc fileName*(this: IFSelectContextModif): StandardCString {.noSideEffect,
    importcpp: "FileName", header: "IFSelect_ContextModif.hxx".}
proc control*(this: IFSelectContextModif): Handle[InterfaceCopyControl] {.
    noSideEffect, importcpp: "Control", header: "IFSelect_ContextModif.hxx".}
proc isForNone*(this: IFSelectContextModif): bool {.noSideEffect,
    importcpp: "IsForNone", header: "IFSelect_ContextModif.hxx".}
proc isForAll*(this: IFSelectContextModif): bool {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_ContextModif.hxx".}
proc isTransferred*(this: IFSelectContextModif; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsTransferred", header: "IFSelect_ContextModif.hxx".}
proc isSelected*(this: IFSelectContextModif; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsSelected", header: "IFSelect_ContextModif.hxx".}
proc search*(this: IFSelectContextModif; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "Search", header: "IFSelect_ContextModif.hxx".}
proc selectedOriginal*(this: IFSelectContextModif): InterfaceEntityIterator {.
    noSideEffect, importcpp: "SelectedOriginal",
    header: "IFSelect_ContextModif.hxx".}
proc selectedResult*(this: IFSelectContextModif): InterfaceEntityIterator {.
    noSideEffect, importcpp: "SelectedResult", header: "IFSelect_ContextModif.hxx".}
proc selectedCount*(this: IFSelectContextModif): int {.noSideEffect,
    importcpp: "SelectedCount", header: "IFSelect_ContextModif.hxx".}
proc start*(this: var IFSelectContextModif) {.importcpp: "Start",
    header: "IFSelect_ContextModif.hxx".}
proc more*(this: IFSelectContextModif): bool {.noSideEffect, importcpp: "More",
    header: "IFSelect_ContextModif.hxx".}
proc next*(this: var IFSelectContextModif) {.importcpp: "Next",
    header: "IFSelect_ContextModif.hxx".}
proc valueOriginal*(this: IFSelectContextModif): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ValueOriginal", header: "IFSelect_ContextModif.hxx".}
proc valueResult*(this: IFSelectContextModif): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ValueResult", header: "IFSelect_ContextModif.hxx".}
proc traceModifier*(this: var IFSelectContextModif;
                   modif: Handle[IFSelectGeneralModifier]) {.
    importcpp: "TraceModifier", header: "IFSelect_ContextModif.hxx".}
proc trace*(this: var IFSelectContextModif; mess: StandardCString = "") {.
    importcpp: "Trace", header: "IFSelect_ContextModif.hxx".}
proc addCheck*(this: var IFSelectContextModif; check: Handle[InterfaceCheck]) {.
    importcpp: "AddCheck", header: "IFSelect_ContextModif.hxx".}
proc addWarning*(this: var IFSelectContextModif; start: Handle[StandardTransient];
                mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddWarning", header: "IFSelect_ContextModif.hxx".}
proc addFail*(this: var IFSelectContextModif; start: Handle[StandardTransient];
             mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddFail", header: "IFSelect_ContextModif.hxx".}
proc cCheck*(this: var IFSelectContextModif; num: int = 0): Handle[InterfaceCheck] {.
    importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc cCheck*(this: var IFSelectContextModif; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc checkList*(this: IFSelectContextModif): InterfaceCheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "IFSelect_ContextModif.hxx".}
