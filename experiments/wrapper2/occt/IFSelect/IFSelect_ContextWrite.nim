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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString,
  ../Interface/Interface_CheckIterator, ../Standard/Standard_Integer,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

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
  IFSelect_ContextWrite* {.importcpp: "IFSelect_ContextWrite",
                          header: "IFSelect_ContextWrite.hxx", bycopy.} = object ## !
                                                                            ## Prepares a
                                                                            ## ContextWrite with
                                                                            ## these
                                                                            ## informations :
                                                                            ## ! - the
                                                                            ## model
                                                                            ## which is to be
                                                                            ## written
                                                                            ## ! - the
                                                                            ## protocol to be used
                                                                            ## ! - the
                                                                            ## filename
                                                                            ## ! - an
                                                                            ## object
                                                                            ## AppliedModifiers to
                                                                            ## work. It
                                                                            ## gives a list of
                                                                            ## !
                                                                            ## FileModifiers to be ran, and for each one it can give
                                                                            ## ! a
                                                                            ## restricted list of
                                                                            ## entities (in the
                                                                            ## model), else all
                                                                            ## ! the
                                                                            ## model is
                                                                            ## considered


proc constructIFSelect_ContextWrite*(model: handle[Interface_InterfaceModel];
                                    proto: handle[Interface_Protocol]; applieds: handle[
    IFSelect_AppliedModifiers]; filename: Standard_CString): IFSelect_ContextWrite {.
    constructor, importcpp: "IFSelect_ContextWrite(@)",
    header: "IFSelect_ContextWrite.hxx".}
proc constructIFSelect_ContextWrite*(hgraph: handle[Interface_HGraph];
                                    proto: handle[Interface_Protocol]; applieds: handle[
    IFSelect_AppliedModifiers]; filename: Standard_CString): IFSelect_ContextWrite {.
    constructor, importcpp: "IFSelect_ContextWrite(@)",
    header: "IFSelect_ContextWrite.hxx".}
proc Model*(this: IFSelect_ContextWrite): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_ContextWrite.hxx".}
proc Protocol*(this: IFSelect_ContextWrite): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IFSelect_ContextWrite.hxx".}
proc FileName*(this: IFSelect_ContextWrite): Standard_CString {.noSideEffect,
    importcpp: "FileName", header: "IFSelect_ContextWrite.hxx".}
proc AppliedModifiers*(this: IFSelect_ContextWrite): handle[
    IFSelect_AppliedModifiers] {.noSideEffect, importcpp: "AppliedModifiers",
                                header: "IFSelect_ContextWrite.hxx".}
proc Graph*(this: var IFSelect_ContextWrite): Interface_Graph {.importcpp: "Graph",
    header: "IFSelect_ContextWrite.hxx".}
proc NbModifiers*(this: IFSelect_ContextWrite): Standard_Integer {.noSideEffect,
    importcpp: "NbModifiers", header: "IFSelect_ContextWrite.hxx".}
proc SetModifier*(this: var IFSelect_ContextWrite; numod: Standard_Integer): Standard_Boolean {.
    importcpp: "SetModifier", header: "IFSelect_ContextWrite.hxx".}
proc FileModifier*(this: IFSelect_ContextWrite): handle[IFSelect_GeneralModifier] {.
    noSideEffect, importcpp: "FileModifier", header: "IFSelect_ContextWrite.hxx".}
proc IsForNone*(this: IFSelect_ContextWrite): Standard_Boolean {.noSideEffect,
    importcpp: "IsForNone", header: "IFSelect_ContextWrite.hxx".}
proc IsForAll*(this: IFSelect_ContextWrite): Standard_Boolean {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_ContextWrite.hxx".}
proc NbEntities*(this: IFSelect_ContextWrite): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IFSelect_ContextWrite.hxx".}
proc Start*(this: var IFSelect_ContextWrite) {.importcpp: "Start",
    header: "IFSelect_ContextWrite.hxx".}
proc More*(this: IFSelect_ContextWrite): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "IFSelect_ContextWrite.hxx".}
proc Next*(this: var IFSelect_ContextWrite) {.importcpp: "Next",
    header: "IFSelect_ContextWrite.hxx".}
proc Value*(this: IFSelect_ContextWrite): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Value", header: "IFSelect_ContextWrite.hxx".}
proc AddCheck*(this: var IFSelect_ContextWrite; check: handle[Interface_Check]) {.
    importcpp: "AddCheck", header: "IFSelect_ContextWrite.hxx".}
proc AddWarning*(this: var IFSelect_ContextWrite; start: handle[Standard_Transient];
                mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddWarning", header: "IFSelect_ContextWrite.hxx".}
proc AddFail*(this: var IFSelect_ContextWrite; start: handle[Standard_Transient];
             mess: Standard_CString; orig: Standard_CString = "") {.
    importcpp: "AddFail", header: "IFSelect_ContextWrite.hxx".}
proc CCheck*(this: var IFSelect_ContextWrite; num: Standard_Integer = 0): handle[
    Interface_Check] {.importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc CCheck*(this: var IFSelect_ContextWrite; start: handle[Standard_Transient]): handle[
    Interface_Check] {.importcpp: "CCheck", header: "IFSelect_ContextWrite.hxx".}
proc CheckList*(this: IFSelect_ContextWrite): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "IFSelect_ContextWrite.hxx".}