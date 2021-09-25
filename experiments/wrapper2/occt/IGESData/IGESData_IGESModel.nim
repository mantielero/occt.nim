##  Created on: 1992-04-06
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_GlobalSection"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESData_IGESModel"
type
  HandleIGESDataIGESModel* = Handle[IGESDataIGESModel]

## ! Defines the file header and
## ! entities for IGES files. These headers and entities result from
## ! a complete data translation using the IGES data exchange processor.
## ! Each entity is contained in a single model only and has a
## ! unique identifier. You can access this identifier using the method Number.
## ! Gives an access to the general data in the Start and the Global
## ! sections of an IGES file.
## ! The IGES file includes the following sections:
## ! -Start,
## ! -Global,
## ! -Directory Entry,
## ! -Parameter Data,
## ! -Terminate

type
  IGESDataIGESModel* {.importcpp: "IGESData_IGESModel",
                      header: "IGESData_IGESModel.hxx", bycopy.} = object of InterfaceInterfaceModel


proc constructIGESDataIGESModel*(): IGESDataIGESModel {.constructor,
    importcpp: "IGESData_IGESModel(@)", header: "IGESData_IGESModel.hxx".}
proc clearHeader*(this: var IGESDataIGESModel) {.importcpp: "ClearHeader",
    header: "IGESData_IGESModel.hxx".}
proc dumpHeader*(this: IGESDataIGESModel; s: var StandardOStream; level: int = 0) {.
    noSideEffect, importcpp: "DumpHeader", header: "IGESData_IGESModel.hxx".}
proc startSection*(this: IGESDataIGESModel): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "StartSection", header: "IGESData_IGESModel.hxx".}
proc nbStartLines*(this: IGESDataIGESModel): int {.noSideEffect,
    importcpp: "NbStartLines", header: "IGESData_IGESModel.hxx".}
proc startLine*(this: IGESDataIGESModel; num: int): StandardCString {.noSideEffect,
    importcpp: "StartLine", header: "IGESData_IGESModel.hxx".}
proc clearStartSection*(this: var IGESDataIGESModel) {.
    importcpp: "ClearStartSection", header: "IGESData_IGESModel.hxx".}
proc setStartSection*(this: var IGESDataIGESModel;
                     list: Handle[TColStdHSequenceOfHAsciiString];
                     copy: bool = true) {.importcpp: "SetStartSection",
                                      header: "IGESData_IGESModel.hxx".}
proc addStartLine*(this: var IGESDataIGESModel; line: StandardCString; atnum: int = 0) {.
    importcpp: "AddStartLine", header: "IGESData_IGESModel.hxx".}
proc globalSection*(this: IGESDataIGESModel): IGESDataGlobalSection {.noSideEffect,
    importcpp: "GlobalSection", header: "IGESData_IGESModel.hxx".}
proc setGlobalSection*(this: var IGESDataIGESModel; header: IGESDataGlobalSection) {.
    importcpp: "SetGlobalSection", header: "IGESData_IGESModel.hxx".}
proc applyStatic*(this: var IGESDataIGESModel; param: StandardCString = ""): bool {.
    importcpp: "ApplyStatic", header: "IGESData_IGESModel.hxx".}
proc entity*(this: IGESDataIGESModel; num: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Entity", header: "IGESData_IGESModel.hxx".}
proc dNum*(this: IGESDataIGESModel; ent: Handle[IGESDataIGESEntity]): int {.
    noSideEffect, importcpp: "DNum", header: "IGESData_IGESModel.hxx".}
proc getFromAnother*(this: var IGESDataIGESModel;
                    other: Handle[InterfaceInterfaceModel]) {.
    importcpp: "GetFromAnother", header: "IGESData_IGESModel.hxx".}
proc newEmptyModel*(this: IGESDataIGESModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewEmptyModel", header: "IGESData_IGESModel.hxx".}
proc verifyCheck*(this: IGESDataIGESModel; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "IGESData_IGESModel.hxx".}
proc setLineWeights*(this: var IGESDataIGESModel; defw: float) {.
    importcpp: "SetLineWeights", header: "IGESData_IGESModel.hxx".}
proc clearLabels*(this: var IGESDataIGESModel) {.importcpp: "ClearLabels",
    header: "IGESData_IGESModel.hxx".}
proc printLabel*(this: IGESDataIGESModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintLabel",
                                       header: "IGESData_IGESModel.hxx".}
proc printToLog*(this: IGESDataIGESModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintToLog",
                                       header: "IGESData_IGESModel.hxx".}
proc printInfo*(this: IGESDataIGESModel; ent: Handle[StandardTransient];
               s: var StandardOStream) {.noSideEffect, importcpp: "PrintInfo",
                                      header: "IGESData_IGESModel.hxx".}
proc stringLabel*(this: IGESDataIGESModel; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "StringLabel",
                              header: "IGESData_IGESModel.hxx".}
type
  IGESDataIGESModelbaseType* = InterfaceInterfaceModel

proc getTypeName*(): cstring {.importcpp: "IGESData_IGESModel::get_type_name(@)",
                            header: "IGESData_IGESModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_IGESModel::get_type_descriptor(@)",
    header: "IGESData_IGESModel.hxx".}
proc dynamicType*(this: IGESDataIGESModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_IGESModel.hxx".}
