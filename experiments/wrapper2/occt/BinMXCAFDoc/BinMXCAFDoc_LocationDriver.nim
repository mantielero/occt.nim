##  Created on: 2005-05-17
##  Created by: Eugeny NAPALKOV <eugeny.napalkov@opencascade.com>
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
discard "forward decl of TopLoc_Location"
discard "forward decl of BinMXCAFDoc_LocationDriver"
discard "forward decl of BinMXCAFDoc_LocationDriver"
type
  HandleBinMXCAFDocLocationDriver* = Handle[BinMXCAFDocLocationDriver]
  BinMXCAFDocLocationDriver* {.importcpp: "BinMXCAFDoc_LocationDriver",
                              header: "BinMXCAFDoc_LocationDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDocLocationDriver*(theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocLocationDriver {.
    constructor, importcpp: "BinMXCAFDoc_LocationDriver(@)",
    header: "BinMXCAFDoc_LocationDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocLocationDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc paste*(this: BinMXCAFDocLocationDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc paste*(this: BinMXCAFDocLocationDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc translate*(this: BinMXCAFDocLocationDriver; theSource: BinObjMgtPersistent;
               theLoc: var TopLocLocation; theMap: var BinObjMgtRRelocationTable): bool {.
    noSideEffect, importcpp: "Translate", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc translate*(this: BinMXCAFDocLocationDriver; theLoc: TopLocLocation;
               theTarget: var BinObjMgtPersistent;
               theMap: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Translate", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc setSharedLocations*(this: var BinMXCAFDocLocationDriver;
                        theLocations: BinToolsLocationSetPtr) {.
    importcpp: "SetSharedLocations", header: "BinMXCAFDoc_LocationDriver.hxx".}
type
  BinMXCAFDocLocationDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_LocationDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_LocationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_LocationDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_LocationDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocLocationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_LocationDriver.hxx".}
