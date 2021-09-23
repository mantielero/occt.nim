##  Created on: 1994-11-15
##  Created by: Marie Jose MARTZ
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Message/Message_ProgressRange

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
type
  BRepToIGES_BREntity* {.importcpp: "BRepToIGES_BREntity",
                        header: "BRepToIGES_BREntity.hxx", bycopy.} = object ## ! Creates a tool BREntity


proc constructBRepToIGES_BREntity*(): BRepToIGES_BREntity {.constructor,
    importcpp: "BRepToIGES_BREntity(@)", header: "BRepToIGES_BREntity.hxx".}
proc Init*(this: var BRepToIGES_BREntity) {.importcpp: "Init",
                                        header: "BRepToIGES_BREntity.hxx".}
proc SetModel*(this: var BRepToIGES_BREntity; model: handle[IGESData_IGESModel]) {.
    importcpp: "SetModel", header: "BRepToIGES_BREntity.hxx".}
proc GetModel*(this: BRepToIGES_BREntity): handle[IGESData_IGESModel] {.
    noSideEffect, importcpp: "GetModel", header: "BRepToIGES_BREntity.hxx".}
proc GetUnit*(this: BRepToIGES_BREntity): Standard_Real {.noSideEffect,
    importcpp: "GetUnit", header: "BRepToIGES_BREntity.hxx".}
proc SetTransferProcess*(this: var BRepToIGES_BREntity;
                        TP: handle[Transfer_FinderProcess]) {.
    importcpp: "SetTransferProcess", header: "BRepToIGES_BREntity.hxx".}
proc GetTransferProcess*(this: BRepToIGES_BREntity): handle[Transfer_FinderProcess] {.
    noSideEffect, importcpp: "GetTransferProcess",
    header: "BRepToIGES_BREntity.hxx".}
proc TransferShape*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferShape",
                          header: "BRepToIGES_BREntity.hxx".}
proc AddFail*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
             amess: Standard_CString) {.importcpp: "AddFail",
                                      header: "BRepToIGES_BREntity.hxx".}
proc AddWarning*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                amess: Standard_CString) {.importcpp: "AddWarning",
    header: "BRepToIGES_BREntity.hxx".}
proc AddFail*(this: var BRepToIGES_BREntity; start: handle[Standard_Transient];
             amess: Standard_CString) {.importcpp: "AddFail",
                                      header: "BRepToIGES_BREntity.hxx".}
proc AddWarning*(this: var BRepToIGES_BREntity; start: handle[Standard_Transient];
                amess: Standard_CString) {.importcpp: "AddWarning",
    header: "BRepToIGES_BREntity.hxx".}
proc HasShapeResult*(this: BRepToIGES_BREntity; start: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc GetShapeResult*(this: BRepToIGES_BREntity; start: TopoDS_Shape): handle[
    Standard_Transient] {.noSideEffect, importcpp: "GetShapeResult",
                         header: "BRepToIGES_BREntity.hxx".}
proc SetShapeResult*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                    result: handle[Standard_Transient]) {.
    importcpp: "SetShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc HasShapeResult*(this: BRepToIGES_BREntity; start: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "HasShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc GetShapeResult*(this: BRepToIGES_BREntity; start: handle[Standard_Transient]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "GetShapeResult",
                         header: "BRepToIGES_BREntity.hxx".}
proc SetShapeResult*(this: var BRepToIGES_BREntity;
                    start: handle[Standard_Transient];
                    result: handle[Standard_Transient]) {.
    importcpp: "SetShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc GetConvertSurfaceMode*(this: BRepToIGES_BREntity): Standard_Boolean {.
    noSideEffect, importcpp: "GetConvertSurfaceMode",
    header: "BRepToIGES_BREntity.hxx".}
proc GetPCurveMode*(this: BRepToIGES_BREntity): Standard_Boolean {.noSideEffect,
    importcpp: "GetPCurveMode", header: "BRepToIGES_BREntity.hxx".}
proc destroyBRepToIGES_BREntity*(this: var BRepToIGES_BREntity) {.
    importcpp: "#.~BRepToIGES_BREntity()", header: "BRepToIGES_BREntity.hxx".}