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

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlDrivers_DocumentRetrievalDriver"
discard "forward decl of XmlDrivers_DocumentRetrievalDriver"
type
  HandleC1C1* = Handle[XmlDriversDocumentRetrievalDriver]
  XmlDriversDocumentRetrievalDriver* {.importcpp: "XmlDrivers_DocumentRetrievalDriver", header: "XmlDrivers_DocumentRetrievalDriver.hxx",
                                      bycopy.} = object of XmlLDriversDocumentRetrievalDriver


proc constructXmlDriversDocumentRetrievalDriver*(): XmlDriversDocumentRetrievalDriver {.
    constructor, importcpp: "XmlDrivers_DocumentRetrievalDriver(@)",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var XmlDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc readShapeSection*(this: var XmlDriversDocumentRetrievalDriver;
                      thePDoc: XmlObjMgtElement;
                      theMsgDriver: Handle[MessageMessenger];
                      theRange: MessageProgressRange = messageProgressRange()): Handle[
    XmlMDF_ADriver] {.importcpp: "ReadShapeSection",
                     header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc shapeSetCleaning*(this: var XmlDriversDocumentRetrievalDriver;
                      theDriver: Handle[XmlMDF_ADriver]) {.
    importcpp: "ShapeSetCleaning",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
type
  XmlDriversDocumentRetrievalDriverbaseType* = XmlLDriversDocumentRetrievalDriver

proc getTypeName*(): cstring {.importcpp: "XmlDrivers_DocumentRetrievalDriver::get_type_name(@)",
                            header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: XmlDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlDrivers_DocumentRetrievalDriver.hxx".}

























