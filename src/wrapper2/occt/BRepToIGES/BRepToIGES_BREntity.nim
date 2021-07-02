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
proc init*(this: var BRepToIGES_BREntity) {.importcpp: "Init",
                                        header: "BRepToIGES_BREntity.hxx".}
proc setModel*(this: var BRepToIGES_BREntity; model: Handle[IGESDataIGESModel]) {.
    importcpp: "SetModel", header: "BRepToIGES_BREntity.hxx".}
proc getModel*(this: BRepToIGES_BREntity): Handle[IGESDataIGESModel] {.noSideEffect,
    importcpp: "GetModel", header: "BRepToIGES_BREntity.hxx".}
proc getUnit*(this: BRepToIGES_BREntity): StandardReal {.noSideEffect,
    importcpp: "GetUnit", header: "BRepToIGES_BREntity.hxx".}
proc setTransferProcess*(this: var BRepToIGES_BREntity;
                        tp: Handle[TransferFinderProcess]) {.
    importcpp: "SetTransferProcess", header: "BRepToIGES_BREntity.hxx".}
proc getTransferProcess*(this: BRepToIGES_BREntity): Handle[TransferFinderProcess] {.
    noSideEffect, importcpp: "GetTransferProcess",
    header: "BRepToIGES_BREntity.hxx".}
proc transferShape*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferShape",
                         header: "BRepToIGES_BREntity.hxx".}
proc addFail*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
             amess: StandardCString) {.importcpp: "AddFail",
                                     header: "BRepToIGES_BREntity.hxx".}
proc addWarning*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                amess: StandardCString) {.importcpp: "AddWarning",
                                        header: "BRepToIGES_BREntity.hxx".}
proc addFail*(this: var BRepToIGES_BREntity; start: Handle[StandardTransient];
             amess: StandardCString) {.importcpp: "AddFail",
                                     header: "BRepToIGES_BREntity.hxx".}
proc addWarning*(this: var BRepToIGES_BREntity; start: Handle[StandardTransient];
                amess: StandardCString) {.importcpp: "AddWarning",
                                        header: "BRepToIGES_BREntity.hxx".}
proc hasShapeResult*(this: BRepToIGES_BREntity; start: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "HasShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc getShapeResult*(this: BRepToIGES_BREntity; start: TopoDS_Shape): Handle[
    StandardTransient] {.noSideEffect, importcpp: "GetShapeResult",
                        header: "BRepToIGES_BREntity.hxx".}
proc setShapeResult*(this: var BRepToIGES_BREntity; start: TopoDS_Shape;
                    result: Handle[StandardTransient]) {.
    importcpp: "SetShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc hasShapeResult*(this: BRepToIGES_BREntity; start: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "HasShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc getShapeResult*(this: BRepToIGES_BREntity; start: Handle[StandardTransient]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "GetShapeResult",
                        header: "BRepToIGES_BREntity.hxx".}
proc setShapeResult*(this: var BRepToIGES_BREntity;
                    start: Handle[StandardTransient];
                    result: Handle[StandardTransient]) {.
    importcpp: "SetShapeResult", header: "BRepToIGES_BREntity.hxx".}
proc getConvertSurfaceMode*(this: BRepToIGES_BREntity): StandardBoolean {.
    noSideEffect, importcpp: "GetConvertSurfaceMode",
    header: "BRepToIGES_BREntity.hxx".}
proc getPCurveMode*(this: BRepToIGES_BREntity): StandardBoolean {.noSideEffect,
    importcpp: "GetPCurveMode", header: "BRepToIGES_BREntity.hxx".}
proc destroyBRepToIGES_BREntity*(this: var BRepToIGES_BREntity) {.
    importcpp: "#.~BRepToIGES_BREntity()", header: "BRepToIGES_BREntity.hxx".}

