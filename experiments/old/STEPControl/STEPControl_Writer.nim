##  Created on: 1996-07-08
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepData_StepModel"
discard "forward decl of TopoDS_Shape"
type
  STEPControlWriter* {.importcpp: "STEPControl_Writer",
                      header: "STEPControl_Writer.hxx", bycopy.} = object


proc `new`*(this: var STEPControlWriter; theSize: csize_t): pointer {.
    importcpp: "STEPControl_Writer::operator new",
    header: "STEPControl_Writer.hxx".}
proc `delete`*(this: var STEPControlWriter; theAddress: pointer) {.
    importcpp: "STEPControl_Writer::operator delete",
    header: "STEPControl_Writer.hxx".}
proc `new[]`*(this: var STEPControlWriter; theSize: csize_t): pointer {.
    importcpp: "STEPControl_Writer::operator new[]",
    header: "STEPControl_Writer.hxx".}
proc `delete[]`*(this: var STEPControlWriter; theAddress: pointer) {.
    importcpp: "STEPControl_Writer::operator delete[]",
    header: "STEPControl_Writer.hxx".}
proc `new`*(this: var STEPControlWriter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPControl_Writer::operator new",
    header: "STEPControl_Writer.hxx".}
proc `delete`*(this: var STEPControlWriter; a2: pointer; a3: pointer) {.
    importcpp: "STEPControl_Writer::operator delete",
    header: "STEPControl_Writer.hxx".}
proc constructSTEPControlWriter*(): STEPControlWriter {.constructor,
    importcpp: "STEPControl_Writer(@)", header: "STEPControl_Writer.hxx".}
proc constructSTEPControlWriter*(ws: Handle[XSControlWorkSession];
                                scratch: StandardBoolean = true): STEPControlWriter {.
    constructor, importcpp: "STEPControl_Writer(@)",
    header: "STEPControl_Writer.hxx".}
proc setTolerance*(this: var STEPControlWriter; tol: StandardReal) {.
    importcpp: "SetTolerance", header: "STEPControl_Writer.hxx".}
proc unsetTolerance*(this: var STEPControlWriter) {.importcpp: "UnsetTolerance",
    header: "STEPControl_Writer.hxx".}
proc setWS*(this: var STEPControlWriter; ws: Handle[XSControlWorkSession];
           scratch: StandardBoolean = true) {.importcpp: "SetWS",
    header: "STEPControl_Writer.hxx".}
proc ws*(this: STEPControlWriter): Handle[XSControlWorkSession] {.noSideEffect,
    importcpp: "WS", header: "STEPControl_Writer.hxx".}
proc model*(this: var STEPControlWriter; newone: StandardBoolean = false): Handle[
    StepDataStepModel] {.importcpp: "Model", header: "STEPControl_Writer.hxx".}
#[ proc transfer*(this: var STEPControlWriter; sh: TopoDS_Shape;
              mode: STEPControlStepModelType; compgraph: StandardBoolean = true;
              theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    importcpp: "Transfer", header: "STEPControl_Writer.hxx".} ]#
proc write*(this: var STEPControlWriter; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "Write", header: "STEPControl_Writer.hxx".}
proc printStatsTransfer*(this: STEPControlWriter; what: int; mode: int = 0) {.
    noSideEffect, importcpp: "PrintStatsTransfer", header: "STEPControl_Writer.hxx".}