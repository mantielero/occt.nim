import ../tkernel/standard/standard_types
import ../tkxsbase/ifselect/ifselect_types
import ../tkbrep/topods/topods_types
import stepcontrol_types
import ../tkernel/message/[message_types, message_progressrange]




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



proc newSTEPControlWriter*(): STEPControlWriter {.cdecl, constructor,
    importcpp: "STEPControl_Writer(@)", header: "STEPControl_Writer.hxx".}
proc newSTEPControlWriter*(ws: Handle[XSControlWorkSession]; scratch: bool = true): STEPControlWriter {.
    cdecl, constructor, importcpp: "STEPControl_Writer(@)", header: "STEPControl_Writer.hxx".}
proc setTolerance*(this: var STEPControlWriter; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "STEPControl_Writer.hxx".}
proc unsetTolerance*(this: var STEPControlWriter) {.cdecl,
    importcpp: "UnsetTolerance", header: "STEPControl_Writer.hxx".}
proc setWS*(this: var STEPControlWriter; ws: Handle[XSControlWorkSession];
           scratch: bool = true) {.cdecl, importcpp: "SetWS", header: "STEPControl_Writer.hxx".}
proc ws*(this: STEPControlWriter): Handle[XSControlWorkSession] {.noSideEffect,
    cdecl, importcpp: "WS", header: "STEPControl_Writer.hxx".}
proc model*(this: var STEPControlWriter; newone: bool = false): Handle[StepDataStepModel] {.
    cdecl, importcpp: "Model", header: "STEPControl_Writer.hxx".}
proc transfer*(this: var STEPControlWriter; sh: TopoDS_Shape;
              mode: STEPControlStepModelType; compgraph: bool = true;
              theProgress: MessageProgressRange = newMessageProgressRange()): IFSelectReturnStatus {.
    cdecl, importcpp: "Transfer", header: "STEPControl_Writer.hxx".}
proc write*(this: var STEPControlWriter; filename: cstring): IFSelectReturnStatus {.
    cdecl, importcpp: "Write", header: "STEPControl_Writer.hxx".}
proc printStatsTransfer*(this: STEPControlWriter; what: cint; mode: cint = 0) {.
    noSideEffect, cdecl, importcpp: "PrintStatsTransfer", header: "STEPControl_Writer.hxx".}


