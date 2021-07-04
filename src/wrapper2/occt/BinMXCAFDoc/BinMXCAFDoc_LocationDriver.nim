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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BinTools/BinTools_LocationSetPtr, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of TopLoc_Location"
discard "forward decl of BinMXCAFDoc_LocationDriver"
discard "forward decl of BinMXCAFDoc_LocationDriver"
type
  Handle_BinMXCAFDoc_LocationDriver* = handle[BinMXCAFDoc_LocationDriver]
  BinMXCAFDoc_LocationDriver* {.importcpp: "BinMXCAFDoc_LocationDriver",
                               header: "BinMXCAFDoc_LocationDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDoc_LocationDriver*(theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_LocationDriver {.
    constructor, importcpp: "BinMXCAFDoc_LocationDriver(@)",
    header: "BinMXCAFDoc_LocationDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_LocationDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_LocationDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_LocationDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc Translate*(this: BinMXCAFDoc_LocationDriver; theSource: BinObjMgt_Persistent;
               theLoc: var TopLoc_Location; theMap: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Translate", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc Translate*(this: BinMXCAFDoc_LocationDriver; theLoc: TopLoc_Location;
               theTarget: var BinObjMgt_Persistent;
               theMap: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Translate", header: "BinMXCAFDoc_LocationDriver.hxx".}
proc SetSharedLocations*(this: var BinMXCAFDoc_LocationDriver;
                        theLocations: BinTools_LocationSetPtr) {.
    importcpp: "SetSharedLocations", header: "BinMXCAFDoc_LocationDriver.hxx".}
type
  BinMXCAFDoc_LocationDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_LocationDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_LocationDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_LocationDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_LocationDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_LocationDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_LocationDriver.hxx".}