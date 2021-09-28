##  Created on: 1996-01-30
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

discard "forward decl of Transfer_FinderProcess"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
type
  IGESControlWriter* {.importcpp: "IGESControl_Writer",
                      header: "IGESControl_Writer.hxx", bycopy.} = object ## ! Creates a writer object with the
                                                                     ## ! default unit
                                                                     ## (millimeters) and write mode (Face).
                                                                     ## !
                                                                     ## IGESControl_Writer (const
                                                                     ## Standard_CString unit,
                                                                     ## ! const
                                                                     ## Standard_Integer modecr = 0);


proc constructIGESControlWriter*(): IGESControlWriter {.constructor,
    importcpp: "IGESControl_Writer(@)", header: "IGESControl_Writer.hxx".}
proc constructIGESControlWriter*(unit: StandardCString; modecr: cint = 0): IGESControlWriter {.
    constructor, importcpp: "IGESControl_Writer(@)",
    header: "IGESControl_Writer.hxx".}
proc constructIGESControlWriter*(model: Handle[IGESDataIGESModel]; modecr: cint = 0): IGESControlWriter {.
    constructor, importcpp: "IGESControl_Writer(@)",
    header: "IGESControl_Writer.hxx".}
proc model*(this: IGESControlWriter): Handle[IGESDataIGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESControl_Writer.hxx".}
proc transferProcess*(this: IGESControlWriter): Handle[TransferFinderProcess] {.
    noSideEffect, importcpp: "TransferProcess", header: "IGESControl_Writer.hxx".}
proc setTransferProcess*(this: var IGESControlWriter;
                        tp: Handle[TransferFinderProcess]) {.
    importcpp: "SetTransferProcess", header: "IGESControl_Writer.hxx".}
proc addShape*(this: var IGESControlWriter; sh: TopoDS_Shape;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "AddShape", header: "IGESControl_Writer.hxx".}
proc addGeom*(this: var IGESControlWriter; geom: Handle[StandardTransient]): bool {.
    importcpp: "AddGeom", header: "IGESControl_Writer.hxx".}
proc addEntity*(this: var IGESControlWriter; ent: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "AddEntity", header: "IGESControl_Writer.hxx".}
proc computeModel*(this: var IGESControlWriter) {.importcpp: "ComputeModel",
    header: "IGESControl_Writer.hxx".}
proc write*(this: var IGESControlWriter; s: var StandardOStream; fnes: bool = false): bool {.
    importcpp: "Write", header: "IGESControl_Writer.hxx".}
proc write*(this: var IGESControlWriter; file: StandardCString; fnes: bool = false): bool {.
    importcpp: "Write", header: "IGESControl_Writer.hxx".}

























