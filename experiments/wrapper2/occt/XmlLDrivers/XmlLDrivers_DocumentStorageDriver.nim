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
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlLDrivers_DocumentStorageDriver"
discard "forward decl of XmlLDrivers_DocumentStorageDriver"
type
  HandleXmlLDriversDocumentStorageDriver* = Handle[
      XmlLDriversDocumentStorageDriver]
  XmlLDriversDocumentStorageDriver* {.importcpp: "XmlLDrivers_DocumentStorageDriver", header: "XmlLDrivers_DocumentStorageDriver.hxx",
                                     bycopy.} = object of PCDM_StorageDriver


proc constructXmlLDriversDocumentStorageDriver*(
    theCopyright: TCollectionExtendedString): XmlLDriversDocumentStorageDriver {.
    constructor, importcpp: "XmlLDrivers_DocumentStorageDriver(@)",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc write*(this: var XmlLDriversDocumentStorageDriver;
           theDocument: Handle[CDM_Document];
           theFileName: TCollectionExtendedString;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc write*(this: var XmlLDriversDocumentStorageDriver;
           theDocument: Handle[CDM_Document]; theOStream: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var XmlLDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlLDrivers_DocumentStorageDriver.hxx".}
type
  XmlLDriversDocumentStorageDriverbaseType* = PCDM_StorageDriver

proc getTypeName*(): cstring {.importcpp: "XmlLDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlLDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: XmlLDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}
