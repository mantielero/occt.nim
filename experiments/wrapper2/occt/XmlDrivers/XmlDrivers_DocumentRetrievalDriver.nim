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
  ../XmlLDrivers/XmlLDrivers_DocumentRetrievalDriver,
  ../XmlObjMgt/XmlObjMgt_Element, ../Standard/Standard_Integer

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlDrivers_DocumentRetrievalDriver"
discard "forward decl of XmlDrivers_DocumentRetrievalDriver"
type
  Handle_XmlDrivers_DocumentRetrievalDriver* = handle[
      XmlDrivers_DocumentRetrievalDriver]
  XmlDrivers_DocumentRetrievalDriver* {.importcpp: "XmlDrivers_DocumentRetrievalDriver", header: "XmlDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of XmlLDrivers_DocumentRetrievalDriver


proc constructXmlDrivers_DocumentRetrievalDriver*(): XmlDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "XmlDrivers_DocumentRetrievalDriver(@)",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var XmlDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc ReadShapeSection*(this: var XmlDrivers_DocumentRetrievalDriver;
                      thePDoc: XmlObjMgt_Element;
                      theMsgDriver: handle[Message_Messenger];
                      theRange: Message_ProgressRange = Message_ProgressRange()): handle[
    XmlMDF_ADriver] {.importcpp: "ReadShapeSection",
                     header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc ShapeSetCleaning*(this: var XmlDrivers_DocumentRetrievalDriver;
                      theDriver: handle[XmlMDF_ADriver]) {.
    importcpp: "ShapeSetCleaning",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
type
  XmlDrivers_DocumentRetrievalDriverbase_type* = XmlLDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "XmlDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: XmlDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}