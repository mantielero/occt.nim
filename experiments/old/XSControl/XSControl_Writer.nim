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
discard "forward decl of TopoDS_Shape"
type
  XSControlWriter* {.importcpp: "XSControl_Writer", header: "XSControl_Writer.hxx",
                    bycopy.} = object ## ! Creates a Writer from scratch


proc constructXSControlWriter*(): XSControlWriter {.constructor,
    importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc constructXSControlWriter*(norm: StandardCString): XSControlWriter {.
    constructor, importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc constructXSControlWriter*(ws: Handle[XSControlWorkSession];
                              scratch: bool = true): XSControlWriter {.constructor,
    importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc setNorm*(this: var XSControlWriter; norm: StandardCString): bool {.
    importcpp: "SetNorm", header: "XSControl_Writer.hxx".}
proc setWS*(this: var XSControlWriter; ws: Handle[XSControlWorkSession];
           scratch: bool = true) {.importcpp: "SetWS", header: "XSControl_Writer.hxx".}
proc ws*(this: XSControlWriter): Handle[XSControlWorkSession] {.noSideEffect,
    importcpp: "WS", header: "XSControl_Writer.hxx".}
proc model*(this: var XSControlWriter; newone: bool = false): Handle[
    InterfaceInterfaceModel] {.importcpp: "Model", header: "XSControl_Writer.hxx".}
#[ proc transferShape*(this: var XSControlWriter; sh: TopoDS_Shape; mode: cint = 0;
                   theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    importcpp: "TransferShape", header: "XSControl_Writer.hxx".}
proc writeFile*(this: var XSControlWriter; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "WriteFile", header: "XSControl_Writer.hxx".}
proc printStatsTransfer*(this: XSControlWriter; what: cint; mode: cint = 0) {.
    noSideEffect, importcpp: "PrintStatsTransfer", header: "XSControl_Writer.hxx".}











 ]#













