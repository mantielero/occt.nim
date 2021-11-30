##  Created on: 1996-01-26
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of Interface_HGraph"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CheckIterator"
type
  IFSelectContextWrite* {.importcpp: "IFSelect_ContextWrite",
                         header: "IFSelect_ContextWrite.hxx", bycopy.} = object ## !
                                                                           ## Prepares a
                                                                           ## ContextWrite with these
                                                                           ## informations :
                                                                           ## ! - the model which is to be
                                                                           ## written
                                                                           ## ! - the
                                                                           ## protocol to be used
                                                                           ## ! - the
                                                                           ## filename
                                                                           ## ! - an
                                                                           ## object
                                                                           ## AppliedModifiers to work. It gives a list of
                                                                           ## !
                                                                           ## FileModifiers to be ran, and for each one it can give
                                                                           ## ! a
                                                                           ## restricted list of
                                                                           ## entities (in the
                                                                           ## model), else all
                                                                           ## ! the model is
                                                                           ## considered


proc newIFSelectContextWrite*(model: Handle[InterfaceInterfaceModel];
                             proto: Handle[InterfaceProtocol];
                             applieds: Handle[IFSelectAppliedModifiers];
                             filename: cstring): IFSelectContextWrite {.cdecl,
    constructor, importcpp: "IFSelect_ContextWrite(@)", header: "IFSelect_ContextWrite.hxx".}
proc newIFSelectContextWrite*(hgraph: Handle[InterfaceHGraph];
                             proto: Handle[InterfaceProtocol];
                             applieds: Handle[IFSelectAppliedModifiers];
                             filename: cstring): IFSelectContextWrite {.cdecl,
    constructor, importcpp: "IFSelect_ContextWrite(@)", header: "IFSelect_ContextWrite.hxx".}
proc model*(this: IFSelectContextWrite): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "IFSelect_ContextWrite.hxx".}
proc protocol*(this: IFSelectContextWrite): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "IFSelect_ContextWrite.hxx".}
proc fileName*(this: IFSelectContextWrite): cstring {.noSideEffect, cdecl,
    importcpp: "FileName", header: "IFSelect_ContextWrite.hxx".}
proc appliedModifiers*(this: IFSelectContextWrite): Handle[IFSelectAppliedModifiers] {.
    noSideEffect, cdecl, importcpp: "AppliedModifiers", header: "IFSelect_ContextWrite.hxx".}
proc graph*(this: var IFSelectContextWrite): InterfaceGraph {.cdecl,
    importcpp: "Graph", header: "IFSelect_ContextWrite.hxx".}
proc nbModifiers*(this: IFSelectContextWrite): cint {.noSideEffect, cdecl,
    importcpp: "NbModifiers", header: "IFSelect_ContextWrite.hxx".}
proc setModifier*(this: var IFSelectContextWrite; numod: cint): bool {.cdecl,
    importcpp: "SetModifier", header: "IFSelect_ContextWrite.hxx".}
proc fileModifier*(this: IFSelectContextWrite): Handle[IFSelectGeneralModifier] {.
    noSideEffect, cdecl, importcpp: "FileModifier", header: "IFSelect_ContextWrite.hxx".}
proc isForNone*(this: IFSelectContextWrite): bool {.noSideEffect, cdecl,
    importcpp: "IsForNone", header: "IFSelect_ContextWrite.hxx".}
proc isForAll*(this: IFSelectContextWrite): bool {.noSideEffect, cdecl,
    importcpp: "IsForAll", header: "IFSelect_ContextWrite.hxx".}
proc nbEntities*(this: IFSelectContextWrite): cint {.noSideEffect, cdecl,
    importcpp: "NbEntities", header: "IFSelect_ContextWrite.hxx".}
proc start*(this: var IFSelectContextWrite) {.cdecl, importcpp: "Start",
    header: "IFSelect_ContextWrite.hxx".}
proc more*(this: IFSelectContextWrite): bool {.noSideEffect, cdecl, importcpp: "More",
    header: "IFSelect_ContextWrite.hxx".}
proc next*(this: var IFSelectContextWrite) {.cdecl, importcpp: "Next", header: "IFSelect_ContextWrite.hxx".}
proc value*(this: IFSelectContextWrite): Handle[StandardTransient] {.noSideEffect,
    cdecl, importcpp: "Value", header: "IFSelect_ContextWrite.hxx".}
proc addCheck*(this: var IFSelectContextWrite; check: Handle[InterfaceCheck]) {.cdecl,
    importcpp: "AddCheck", header: "IFSelect_ContextWrite.hxx".}
proc addWarning*(this: var IFSelectContextWrite; start: Handle[StandardTransient];
                mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddWarning",
    header: "IFSelect_ContextWrite.hxx".}
proc addFail*(this: var IFSelectContextWrite; start: Handle[StandardTransient];
             mess: cstring; orig: cstring = "") {.cdecl, importcpp: "AddFail",
    header: "IFSelect_ContextWrite.hxx".}
proc cCheck*(this: var IFSelectContextWrite; num: cint = 0): Handle[InterfaceCheck] {.
    cdecl, importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc cCheck*(this: var IFSelectContextWrite; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.cdecl, importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc checkList*(this: IFSelectContextWrite): InterfaceCheckIterator {.noSideEffect,
    cdecl, importcpp: "CheckList", header: "IFSelect_ContextWrite.hxx".}