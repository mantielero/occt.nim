##  Created on: 2001-09-11
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../TopTools/TopTools_LocationSetPtr, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable, ../XmlObjMgt/XmlObjMgt_Element

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of TopLoc_Location"
discard "forward decl of XmlMXCAFDoc_LocationDriver"
discard "forward decl of XmlMXCAFDoc_LocationDriver"
type
  Handle_XmlMXCAFDoc_LocationDriver* = handle[XmlMXCAFDoc_LocationDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_LocationDriver* {.importcpp: "XmlMXCAFDoc_LocationDriver",
                               header: "XmlMXCAFDoc_LocationDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDoc_LocationDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_LocationDriver {.
    constructor, importcpp: "XmlMXCAFDoc_LocationDriver(@)",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_LocationDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_LocationDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_LocationDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc Translate*(this: XmlMXCAFDoc_LocationDriver; theLoc: TopLoc_Location;
               theParent: var XmlObjMgt_Element;
               theMap: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Translate", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc Translate*(this: XmlMXCAFDoc_LocationDriver; theParent: XmlObjMgt_Element;
               theLoc: var TopLoc_Location; theMap: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Translate", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc SetSharedLocations*(this: var XmlMXCAFDoc_LocationDriver;
                        theLocations: TopTools_LocationSetPtr) {.
    importcpp: "SetSharedLocations", header: "XmlMXCAFDoc_LocationDriver.hxx".}
type
  XmlMXCAFDoc_LocationDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_LocationDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_LocationDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_LocationDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}