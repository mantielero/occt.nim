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

import
  ../TColStd/TColStd_HSequenceOfHAsciiString, IGESData_GlobalSection,
  ../Interface/Interface_InterfaceModel

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
  Handle_IGESData_IGESModel* = handle[IGESData_IGESModel]

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
  IGESData_IGESModel* {.importcpp: "IGESData_IGESModel",
                       header: "IGESData_IGESModel.hxx", bycopy.} = object of Interface_InterfaceModel


proc constructIGESData_IGESModel*(): IGESData_IGESModel {.constructor,
    importcpp: "IGESData_IGESModel(@)", header: "IGESData_IGESModel.hxx".}
proc ClearHeader*(this: var IGESData_IGESModel) {.importcpp: "ClearHeader",
    header: "IGESData_IGESModel.hxx".}
proc DumpHeader*(this: IGESData_IGESModel; S: var Standard_OStream;
                level: Standard_Integer = 0) {.noSideEffect, importcpp: "DumpHeader",
    header: "IGESData_IGESModel.hxx".}
proc StartSection*(this: IGESData_IGESModel): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "StartSection",
                                      header: "IGESData_IGESModel.hxx".}
proc NbStartLines*(this: IGESData_IGESModel): Standard_Integer {.noSideEffect,
    importcpp: "NbStartLines", header: "IGESData_IGESModel.hxx".}
proc StartLine*(this: IGESData_IGESModel; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "StartLine", header: "IGESData_IGESModel.hxx".}
proc ClearStartSection*(this: var IGESData_IGESModel) {.
    importcpp: "ClearStartSection", header: "IGESData_IGESModel.hxx".}
proc SetStartSection*(this: var IGESData_IGESModel;
                     list: handle[TColStd_HSequenceOfHAsciiString];
                     copy: Standard_Boolean = Standard_True) {.
    importcpp: "SetStartSection", header: "IGESData_IGESModel.hxx".}
proc AddStartLine*(this: var IGESData_IGESModel; line: Standard_CString;
                  atnum: Standard_Integer = 0) {.importcpp: "AddStartLine",
    header: "IGESData_IGESModel.hxx".}
proc GlobalSection*(this: IGESData_IGESModel): IGESData_GlobalSection {.
    noSideEffect, importcpp: "GlobalSection", header: "IGESData_IGESModel.hxx".}
proc SetGlobalSection*(this: var IGESData_IGESModel; header: IGESData_GlobalSection) {.
    importcpp: "SetGlobalSection", header: "IGESData_IGESModel.hxx".}
proc ApplyStatic*(this: var IGESData_IGESModel; param: Standard_CString = ""): Standard_Boolean {.
    importcpp: "ApplyStatic", header: "IGESData_IGESModel.hxx".}
proc Entity*(this: IGESData_IGESModel; num: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Entity",
                          header: "IGESData_IGESModel.hxx".}
proc DNum*(this: IGESData_IGESModel; ent: handle[IGESData_IGESEntity]): Standard_Integer {.
    noSideEffect, importcpp: "DNum", header: "IGESData_IGESModel.hxx".}
proc GetFromAnother*(this: var IGESData_IGESModel;
                    other: handle[Interface_InterfaceModel]) {.
    importcpp: "GetFromAnother", header: "IGESData_IGESModel.hxx".}
proc NewEmptyModel*(this: IGESData_IGESModel): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewEmptyModel", header: "IGESData_IGESModel.hxx".}
proc VerifyCheck*(this: IGESData_IGESModel; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "IGESData_IGESModel.hxx".}
proc SetLineWeights*(this: var IGESData_IGESModel; defw: Standard_Real) {.
    importcpp: "SetLineWeights", header: "IGESData_IGESModel.hxx".}
proc ClearLabels*(this: var IGESData_IGESModel) {.importcpp: "ClearLabels",
    header: "IGESData_IGESModel.hxx".}
proc PrintLabel*(this: IGESData_IGESModel; ent: handle[Standard_Transient];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintLabel",
                                        header: "IGESData_IGESModel.hxx".}
proc PrintToLog*(this: IGESData_IGESModel; ent: handle[Standard_Transient];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintToLog",
                                        header: "IGESData_IGESModel.hxx".}
proc PrintInfo*(this: IGESData_IGESModel; ent: handle[Standard_Transient];
               S: var Standard_OStream) {.noSideEffect, importcpp: "PrintInfo",
                                       header: "IGESData_IGESModel.hxx".}
proc StringLabel*(this: IGESData_IGESModel; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "StringLabel",
                               header: "IGESData_IGESModel.hxx".}
type
  IGESData_IGESModelbase_type* = Interface_InterfaceModel

proc get_type_name*(): cstring {.importcpp: "IGESData_IGESModel::get_type_name(@)",
                              header: "IGESData_IGESModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_IGESModel::get_type_descriptor(@)",
    header: "IGESData_IGESModel.hxx".}
proc DynamicType*(this: IGESData_IGESModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_IGESModel.hxx".}