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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlDrivers_DocumentStorageDriver"
discard "forward decl of XmlDrivers_DocumentStorageDriver"
type
  HandleC1C1* = Handle[XmlDriversDocumentStorageDriver]
  XmlDriversDocumentStorageDriver* {.importcpp: "XmlDrivers_DocumentStorageDriver", header: "XmlDrivers_DocumentStorageDriver.hxx",
                                    bycopy.} = object of XmlLDriversDocumentStorageDriver


proc constructXmlDriversDocumentStorageDriver*(
    theCopyright: TCollectionExtendedString): XmlDriversDocumentStorageDriver {.
    constructor, importcpp: "XmlDrivers_DocumentStorageDriver(@)",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var XmlDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc writeShapeSection*(this: var XmlDriversDocumentStorageDriver;
                       thePDoc: var XmlObjMgtElement;
                       theRange: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "WriteShapeSection", header: "XmlDrivers_DocumentStorageDriver.hxx".}
type
  XmlDriversDocumentStorageDriverbaseType* = XmlLDriversDocumentStorageDriver

proc getTypeName*(): cstring {.importcpp: "XmlDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: XmlDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlDrivers_DocumentStorageDriver.hxx".}

























