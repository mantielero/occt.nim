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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlXCAFDrivers_DocumentStorageDriver"
discard "forward decl of XmlXCAFDrivers_DocumentStorageDriver"
type
  HandleC1C1* = Handle[XmlXCAFDriversDocumentStorageDriver]

## ! storage driver of a  XS document

type
  XmlXCAFDriversDocumentStorageDriver* {.importcpp: "XmlXCAFDrivers_DocumentStorageDriver", header: "XmlXCAFDrivers_DocumentStorageDriver.hxx",
                                        bycopy.} = object of XmlDriversDocumentStorageDriver


proc constructXmlXCAFDriversDocumentStorageDriver*(
    theCopyright: TCollectionExtendedString): XmlXCAFDriversDocumentStorageDriver {.
    constructor, importcpp: "XmlXCAFDrivers_DocumentStorageDriver(@)",
    header: "XmlXCAFDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var XmlXCAFDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlXCAFDrivers_DocumentStorageDriver.hxx".}
type
  XmlXCAFDriversDocumentStorageDriverbaseType* = XmlDriversDocumentStorageDriver

proc getTypeName*(): cstring {.importcpp: "XmlXCAFDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "XmlXCAFDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlXCAFDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlXCAFDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: XmlXCAFDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlXCAFDrivers_DocumentStorageDriver.hxx".}

























