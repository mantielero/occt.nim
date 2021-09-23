##  Created on: 2001-07-25
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
  ../XmlLDrivers/XmlLDrivers_DocumentStorageDriver, ../Standard/Standard_Boolean,
  ../XmlObjMgt/XmlObjMgt_Element

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlDrivers_DocumentStorageDriver"
discard "forward decl of XmlDrivers_DocumentStorageDriver"
type
  Handle_XmlDrivers_DocumentStorageDriver* = handle[
      XmlDrivers_DocumentStorageDriver]
  XmlDrivers_DocumentStorageDriver* {.importcpp: "XmlDrivers_DocumentStorageDriver", header: "XmlDrivers_DocumentStorageDriver.hxx",
                                     bycopy.} = object of XmlLDrivers_DocumentStorageDriver


proc constructXmlDrivers_DocumentStorageDriver*(
    theCopyright: TCollection_ExtendedString): XmlDrivers_DocumentStorageDriver {.
    constructor, importcpp: "XmlDrivers_DocumentStorageDriver(@)",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var XmlDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc WriteShapeSection*(this: var XmlDrivers_DocumentStorageDriver;
                       thePDoc: var XmlObjMgt_Element; theRange: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "WriteShapeSection", header: "XmlDrivers_DocumentStorageDriver.hxx".}
type
  XmlDrivers_DocumentStorageDriverbase_type* = XmlLDrivers_DocumentStorageDriver

proc get_type_name*(): cstring {.importcpp: "XmlDrivers_DocumentStorageDriver::get_type_name(@)",
                              header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: XmlDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}