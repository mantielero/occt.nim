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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Interface/Interface_Graph,
  ../TCollection/TCollection_AsciiString, ../Interface/Interface_CheckIterator,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

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
  IFSelect_ContextModif* {.importcpp: "IFSelect_ContextModif",
                          header: "IFSelect_ContextModif.hxx", bycopy.} = object ## !
                                                                            ## Prepares a
                                                                            ## ContextModif with
                                                                            ## these
                                                                            ## informations :
                                                                            ## ! - the
                                                                            ## graph
                                                                            ## established from
                                                                            ## original
                                                                            ## model
                                                                            ## (target
                                                                            ## passed
                                                                            ## !
                                                                            ## directly to
                                                                            ## Modifier)
                                                                            ## ! - the
                                                                            ## CopyTool
                                                                            ## which
                                                                            ## detains the
                                                                            ## CopyControl,
                                                                            ## which maps
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


proc constructIFSelect_ContextModif*(graph: Interface_Graph;
                                    TC: Interface_CopyTool;
                                    filename: Standard_CString = ""): IFSelect_ContextModif {.
    constructor, importcpp: "IFSelect_ContextModif(@)",
    header: "IFSelect_ContextModif.hxx".}
proc constructIFSelect_ContextModif*(graph: Interface_Graph;
                                    filename: Standard_CString = ""): IFSelect_ContextModif {.
    constructor, importcpp: "IFSelect_ContextModif(@)",
    header: "IFSelect_ContextModif.hxx".}
proc Select*(this: var IFSelect_ContextModif; list: var Interface_EntityIterator) {.
    importcpp: "Select", header: "IFSelect_ContextModif.hxx".}
proc OriginalGraph*(this: IFSelect_ContextModif): Interface_Graph {.noSideEffect,
    importcpp: "OriginalGraph", header: "IFSelect_ContextModif.hxx".}
proc OriginalModel*(this: IFSelect_ContextModif): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "OriginalModel", header: "IFSelect_ContextModif.hxx".}
proc SetProtocol*(this: var IFSelect_ContextModif; proto: handle[Interface_Protocol]) {.
    importcpp: "SetProtocol", header: "IFSelect_ContextModif.hxx".}
proc Protocol*(this: IFSelect_ContextModif): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IFSelect_ContextModif.hxx".}
proc HasFileName*(this: IFSelect_ContextModif): Standard_Boolean {.noSideEffect,
    importcpp: "HasFileName", header: "IFSelect_ContextModif.hxx".}
proc FileName*(this: IFSelect_ContextModif): Standard_CString {.noSideEffect,
    importcpp: "FileName", header: "IFSelect_ContextModif.hxx".}
proc Control*(this: IFSelect_ContextModif): handle[Interface_CopyControl] {.
    noSideEffect, importcpp: "Control", header: "IFSelect_ContextModif.hxx".}
proc IsForNone*(this: IFSelect_ContextModif): Standard_Boolean {.noSideEffect,
    importcpp: "IsForNone", header: "IFSelect_ContextModif.hxx".}
proc IsForAll*(this: IFSelect_ContextModif): Standard_Boolean {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_ContextModif.hxx".}
proc IsTransferred*(this: IFSelect_ContextModif; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsTransferred", header: "IFSelect_ContextModif.hxx".}
proc IsSelected*(this: IFSelect_ContextModif; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelected", header: "IFSelect_ContextModif.hxx".}
proc Search*(this: IFSelect_ContextModif; ent: handle[Standard_Transient];
            res: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Search", header: "IFSelect_ContextModif.hxx".}
proc SelectedOriginal*(this: IFSelect_ContextModif): Interface_EntityIterator {.
    noSideEffect, importcpp: "SelectedOriginal",
    header: "IFSelect_ContextModif.hxx".}
proc SelectedResult*(this: IFSelect_ContextModif): Interface_EntityIterator {.
    noSideEffect, importcpp: "SelectedResult", header: "IFSelect_ContextModif.hxx".}
proc SelectedCount*(this: IFSelect_ContextModif): Standard_Integer {.noSideEffect,
    importcpp: "SelectedCount", header: "IFSelect_ContextModif.hxx".}
proc Start*(this: var IFSelect_ContextModif) {.importcpp: "Start",
    header: "IFSelect_ContextModif.hxx".}
proc More*(this: IFSelect_ContextModif): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "IFSelect_ContextModif.hxx".}
proc Next*(this: var IFSelect_ContextModif) {.importcpp: "Next",
    header: "IFSelect_ContextModif.hxx".}
proc ValueOriginal*(this: IFSelect_ContextModif): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ValueOriginal", header: "IFSelect_ContextModif.hxx".}
proc ValueResult*(this: IFSelect_ContextModif): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ValueResult", header: "IFSelect_ContextModif.hxx".}
proc TraceModifier*(this: var IFSelect_ContextModif;
                   modif: handle[IFSelect_GeneralModifier]) {.
    importcpp: "TraceModifier", header: "IFSelect_ContextModif.hxx".}
proc Trace*(this: var IFSelect_ContextModif; mess: Standard_CString = "") {.
    importcpp: "Trace", header: "IFSelect_ContextModif.hxx".}
proc AddCheck*(this: var IFSelect_ContextModif; check: handle[Interface_Check]) {.
    importcpp: "AddCheck", header: "IFSelect_ContextModif.hxx".}
proc AddWarning*(this: var IFSelect_ContextModif; start: handle[Standard_Transient];
                mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddWarning", header: "IFSelect_ContextModif.hxx".}
proc AddFail*(this: var IFSelect_ContextModif; start: handle[Standard_Transient];
             mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddFail", header: "IFSelect_ContextModif.hxx".}
proc CCheck*(this: var IFSelect_ContextModif; num: Standard_Integer = 0): handle[
    Interface_Check] {.importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc CCheck*(this: var IFSelect_ContextModif; start: handle[Standard_Transient]): handle[
    Interface_Check] {.importcpp: "CCheck", header: "IFSelect_ContextModif.hxx".}
proc CheckList*(this: IFSelect_ContextModif): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "IFSelect_ContextModif.hxx".}