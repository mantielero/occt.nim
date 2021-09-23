##  Created on: 2004-04-08
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../BinTools/BinTools_ShapeSet,
  ../Standard/Standard_Integer, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable, ../Standard/Standard_IStream,
  ../Standard/Standard_OStream

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinTools_LocationSet"
discard "forward decl of BinMNaming_NamedShapeDriver"
discard "forward decl of BinMNaming_NamedShapeDriver"
type
  Handle_BinMNaming_NamedShapeDriver* = handle[BinMNaming_NamedShapeDriver]

## ! NamedShape  Attribute Driver.

type
  BinMNaming_NamedShapeDriver* {.importcpp: "BinMNaming_NamedShapeDriver",
                                header: "BinMNaming_NamedShapeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMNaming_NamedShapeDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMNaming_NamedShapeDriver {.
    constructor, importcpp: "BinMNaming_NamedShapeDriver(@)",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc NewEmpty*(this: BinMNaming_NamedShapeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMNaming_NamedShapeDriver.hxx".}
proc Paste*(this: BinMNaming_NamedShapeDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMNaming_NamedShapeDriver.hxx".}
proc Paste*(this: BinMNaming_NamedShapeDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMNaming_NamedShapeDriver.hxx".}
proc ReadShapeSection*(this: var BinMNaming_NamedShapeDriver;
                      theIS: var Standard_IStream;
                      therange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadShapeSection", header: "BinMNaming_NamedShapeDriver.hxx".}
proc WriteShapeSection*(this: var BinMNaming_NamedShapeDriver;
                       theOS: var Standard_OStream; therange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "WriteShapeSection", header: "BinMNaming_NamedShapeDriver.hxx".}
proc Clear*(this: var BinMNaming_NamedShapeDriver) {.importcpp: "Clear",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc IsWithTriangles*(this: BinMNaming_NamedShapeDriver): Standard_Boolean {.
    noSideEffect, importcpp: "IsWithTriangles",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc SetWithTriangles*(this: var BinMNaming_NamedShapeDriver;
                      isWithTriangles: Standard_Boolean) {.
    importcpp: "SetWithTriangles", header: "BinMNaming_NamedShapeDriver.hxx".}
proc SetFormatNb*(this: var BinMNaming_NamedShapeDriver; theFormat: Standard_Integer) {.
    importcpp: "SetFormatNb", header: "BinMNaming_NamedShapeDriver.hxx".}
proc GetFormatNb*(this: BinMNaming_NamedShapeDriver): Standard_Integer {.
    noSideEffect, importcpp: "GetFormatNb",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc GetShapesLocations*(this: var BinMNaming_NamedShapeDriver): var BinTools_LocationSet {.
    importcpp: "GetShapesLocations", header: "BinMNaming_NamedShapeDriver.hxx".}
type
  BinMNaming_NamedShapeDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMNaming_NamedShapeDriver::get_type_name(@)",
                              header: "BinMNaming_NamedShapeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMNaming_NamedShapeDriver::get_type_descriptor(@)",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc DynamicType*(this: BinMNaming_NamedShapeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMNaming_NamedShapeDriver.hxx".}