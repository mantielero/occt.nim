##  Created on: 1997-05-14
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of TopoDS_Shape"
type
  XSControlReader* {.importcpp: "XSControl_Reader", header: "XSControl_Reader.hxx",
                    bycopy.} = object ## ! Creates a Reader from scratch (creates an empty WorkSession)
                                   ## ! A WorkSession or a Controller must be provided before running
                                   ## ! Returns a sequence of produced shapes


proc constructXSControlReader*(): XSControlReader {.constructor,
    importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc constructXSControlReader*(norm: StandardCString): XSControlReader {.
    constructor, importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc constructXSControlReader*(ws: Handle[XSControlWorkSession];
                              scratch: bool = true): XSControlReader {.constructor,
    importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc destroyXSControlReader*(this: var XSControlReader) {.
    importcpp: "#.~XSControl_Reader()", header: "XSControl_Reader.hxx".}
proc setNorm*(this: var XSControlReader; norm: StandardCString): bool {.
    importcpp: "SetNorm", header: "XSControl_Reader.hxx".}
proc setWS*(this: var XSControlReader; ws: Handle[XSControlWorkSession];
           scratch: bool = true) {.importcpp: "SetWS", header: "XSControl_Reader.hxx".}
proc ws*(this: XSControlReader): Handle[XSControlWorkSession] {.noSideEffect,
    importcpp: "WS", header: "XSControl_Reader.hxx".}
proc readFile*(this: var XSControlReader; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "ReadFile", header: "XSControl_Reader.hxx".}
proc readStream*(this: var XSControlReader; theName: StandardCString;
                theIStream: var Istream): IFSelectReturnStatus {.
    importcpp: "ReadStream", header: "XSControl_Reader.hxx".}
proc model*(this: XSControlReader): Handle[InterfaceInterfaceModel] {.noSideEffect,
    importcpp: "Model", header: "XSControl_Reader.hxx".}
proc giveList*(this: var XSControlReader; first: StandardCString = "";
              second: StandardCString = ""): Handle[TColStdHSequenceOfTransient] {.
    importcpp: "GiveList", header: "XSControl_Reader.hxx".}
proc giveList*(this: var XSControlReader; first: StandardCString;
              ent: Handle[StandardTransient]): Handle[TColStdHSequenceOfTransient] {.
    importcpp: "GiveList", header: "XSControl_Reader.hxx".}
proc nbRootsForTransfer*(this: var XSControlReader): cint {.
    importcpp: "NbRootsForTransfer", header: "XSControl_Reader.hxx".}
proc rootForTransfer*(this: var XSControlReader; num: cint = 1): Handle[
    StandardTransient] {.importcpp: "RootForTransfer",
                        header: "XSControl_Reader.hxx".}
proc transferOneRoot*(this: var XSControlReader; num: cint = 1;
                     theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "TransferOneRoot", header: "XSControl_Reader.hxx".}
proc transferOne*(this: var XSControlReader; num: cint;
                 theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "TransferOne", header: "XSControl_Reader.hxx".}
proc transferEntity*(this: var XSControlReader; start: Handle[StandardTransient];
                    theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "TransferEntity", header: "XSControl_Reader.hxx".}
proc transferList*(this: var XSControlReader;
                  list: Handle[TColStdHSequenceOfTransient];
                  theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferList", header: "XSControl_Reader.hxx".}
proc transferRoots*(this: var XSControlReader;
                   theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferRoots", header: "XSControl_Reader.hxx".}
proc clearShapes*(this: var XSControlReader) {.importcpp: "ClearShapes",
    header: "XSControl_Reader.hxx".}
proc nbShapes*(this: XSControlReader): cint {.noSideEffect, importcpp: "NbShapes",
    header: "XSControl_Reader.hxx".}
proc shape*(this: XSControlReader; num: cint = 1): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "XSControl_Reader.hxx".}
proc oneShape*(this: XSControlReader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "XSControl_Reader.hxx".}
proc printCheckLoad*(this: XSControlReader; failsonly: bool; mode: IFSelectPrintCount) {.
    noSideEffect, importcpp: "PrintCheckLoad", header: "XSControl_Reader.hxx".}
proc printCheckLoad*(this: XSControlReader; theStream: var StandardOStream;
                    failsonly: bool; mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintCheckLoad", header: "XSControl_Reader.hxx".}
proc printCheckTransfer*(this: XSControlReader; failsonly: bool;
                        mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintCheckTransfer", header: "XSControl_Reader.hxx".}
proc printCheckTransfer*(this: XSControlReader; theStream: var StandardOStream;
                        failsonly: bool; mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintCheckTransfer", header: "XSControl_Reader.hxx".}
proc printStatsTransfer*(this: XSControlReader; what: cint; mode: cint = 0) {.
    noSideEffect, importcpp: "PrintStatsTransfer", header: "XSControl_Reader.hxx".}
proc printStatsTransfer*(this: XSControlReader; theStream: var StandardOStream;
                        what: cint; mode: cint = 0) {.noSideEffect,
    importcpp: "PrintStatsTransfer", header: "XSControl_Reader.hxx".}
proc getStatsTransfer*(this: XSControlReader;
                      list: Handle[TColStdHSequenceOfTransient];
                      nbMapped: var cint; nbWithResult: var cint; nbWithFail: var cint) {.
    noSideEffect, importcpp: "GetStatsTransfer", header: "XSControl_Reader.hxx".}

























