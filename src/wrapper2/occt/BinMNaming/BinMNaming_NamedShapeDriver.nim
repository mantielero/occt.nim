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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinTools_LocationSet"
discard "forward decl of BinMNaming_NamedShapeDriver"
discard "forward decl of BinMNaming_NamedShapeDriver"
type
  HandleBinMNamingNamedShapeDriver* = Handle[BinMNamingNamedShapeDriver]

## ! NamedShape  Attribute Driver.

type
  BinMNamingNamedShapeDriver* {.importcpp: "BinMNaming_NamedShapeDriver",
                               header: "BinMNaming_NamedShapeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMNamingNamedShapeDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMNamingNamedShapeDriver {.
    constructor, importcpp: "BinMNaming_NamedShapeDriver(@)",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc newEmpty*(this: BinMNamingNamedShapeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMNaming_NamedShapeDriver.hxx".}
proc paste*(this: BinMNamingNamedShapeDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMNaming_NamedShapeDriver.hxx".}
proc paste*(this: BinMNamingNamedShapeDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMNaming_NamedShapeDriver.hxx".}
proc readShapeSection*(this: var BinMNamingNamedShapeDriver;
                      theIS: var StandardIStream;
                      therange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadShapeSection", header: "BinMNaming_NamedShapeDriver.hxx".}
proc writeShapeSection*(this: var BinMNamingNamedShapeDriver;
                       theOS: var StandardOStream;
                       therange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "WriteShapeSection", header: "BinMNaming_NamedShapeDriver.hxx".}
proc clear*(this: var BinMNamingNamedShapeDriver) {.importcpp: "Clear",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc isWithTriangles*(this: BinMNamingNamedShapeDriver): StandardBoolean {.
    noSideEffect, importcpp: "IsWithTriangles",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc setWithTriangles*(this: var BinMNamingNamedShapeDriver;
                      isWithTriangles: StandardBoolean) {.
    importcpp: "SetWithTriangles", header: "BinMNaming_NamedShapeDriver.hxx".}
proc setFormatNb*(this: var BinMNamingNamedShapeDriver; theFormat: StandardInteger) {.
    importcpp: "SetFormatNb", header: "BinMNaming_NamedShapeDriver.hxx".}
proc getFormatNb*(this: BinMNamingNamedShapeDriver): StandardInteger {.noSideEffect,
    importcpp: "GetFormatNb", header: "BinMNaming_NamedShapeDriver.hxx".}
proc getShapesLocations*(this: var BinMNamingNamedShapeDriver): var BinToolsLocationSet {.
    importcpp: "GetShapesLocations", header: "BinMNaming_NamedShapeDriver.hxx".}
type
  BinMNamingNamedShapeDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMNaming_NamedShapeDriver::get_type_name(@)",
                            header: "BinMNaming_NamedShapeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMNaming_NamedShapeDriver::get_type_descriptor(@)",
    header: "BinMNaming_NamedShapeDriver.hxx".}
proc dynamicType*(this: BinMNamingNamedShapeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMNaming_NamedShapeDriver.hxx".}

