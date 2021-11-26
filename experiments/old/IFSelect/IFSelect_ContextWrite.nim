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


proc constructIFSelectContextWrite*(model: Handle[InterfaceInterfaceModel];
                                   proto: Handle[InterfaceProtocol];
                                   applieds: Handle[IFSelectAppliedModifiers];
                                   filename: StandardCString): IFSelectContextWrite {.
    constructor, importcpp: "IFSelect_ContextWrite(@)",
    header: "IFSelect_ContextWrite.hxx".}
proc constructIFSelectContextWrite*(hgraph: Handle[InterfaceHGraph];
                                   proto: Handle[InterfaceProtocol];
                                   applieds: Handle[IFSelectAppliedModifiers];
                                   filename: StandardCString): IFSelectContextWrite {.
    constructor, importcpp: "IFSelect_ContextWrite(@)",
    header: "IFSelect_ContextWrite.hxx".}
proc model*(this: IFSelectContextWrite): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_ContextWrite.hxx".}
proc protocol*(this: IFSelectContextWrite): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "IFSelect_ContextWrite.hxx".}
proc fileName*(this: IFSelectContextWrite): StandardCString {.noSideEffect,
    importcpp: "FileName", header: "IFSelect_ContextWrite.hxx".}
proc appliedModifiers*(this: IFSelectContextWrite): Handle[IFSelectAppliedModifiers] {.
    noSideEffect, importcpp: "AppliedModifiers",
    header: "IFSelect_ContextWrite.hxx".}
proc graph*(this: var IFSelectContextWrite): InterfaceGraph {.importcpp: "Graph",
    header: "IFSelect_ContextWrite.hxx".}
proc nbModifiers*(this: IFSelectContextWrite): cint {.noSideEffect,
    importcpp: "NbModifiers", header: "IFSelect_ContextWrite.hxx".}
proc setModifier*(this: var IFSelectContextWrite; numod: cint): bool {.
    importcpp: "SetModifier", header: "IFSelect_ContextWrite.hxx".}
proc fileModifier*(this: IFSelectContextWrite): Handle[IFSelectGeneralModifier] {.
    noSideEffect, importcpp: "FileModifier", header: "IFSelect_ContextWrite.hxx".}
proc isForNone*(this: IFSelectContextWrite): bool {.noSideEffect,
    importcpp: "IsForNone", header: "IFSelect_ContextWrite.hxx".}
proc isForAll*(this: IFSelectContextWrite): bool {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_ContextWrite.hxx".}
proc nbEntities*(this: IFSelectContextWrite): cint {.noSideEffect,
    importcpp: "NbEntities", header: "IFSelect_ContextWrite.hxx".}
proc start*(this: var IFSelectContextWrite) {.importcpp: "Start",
    header: "IFSelect_ContextWrite.hxx".}
proc more*(this: IFSelectContextWrite): bool {.noSideEffect, importcpp: "More",
    header: "IFSelect_ContextWrite.hxx".}
proc next*(this: var IFSelectContextWrite) {.importcpp: "Next",
    header: "IFSelect_ContextWrite.hxx".}
proc value*(this: IFSelectContextWrite): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Value", header: "IFSelect_ContextWrite.hxx".}
proc addCheck*(this: var IFSelectContextWrite; check: Handle[InterfaceCheck]) {.
    importcpp: "AddCheck", header: "IFSelect_ContextWrite.hxx".}
proc addWarning*(this: var IFSelectContextWrite; start: Handle[StandardTransient];
                mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddWarning", header: "IFSelect_ContextWrite.hxx".}
proc addFail*(this: var IFSelectContextWrite; start: Handle[StandardTransient];
             mess: StandardCString; orig: StandardCString = "") {.
    importcpp: "AddFail", header: "IFSelect_ContextWrite.hxx".}
proc cCheck*(this: var IFSelectContextWrite; num: cint = 0): Handle[InterfaceCheck] {.
    importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc cCheck*(this: var IFSelectContextWrite; start: Handle[StandardTransient]): Handle[
    InterfaceCheck] {.importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc checkList*(this: IFSelectContextWrite): InterfaceCheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "IFSelect_ContextWrite.hxx".}

























