##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
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
##  The original implementation Copyright: (C) RINA S.p.A

##   Block of comments describing class XmlTObjDrivers_DocumentStorageDriver
##

type
  XmlTObjDriversDocumentStorageDriver* {.importcpp: "XmlTObjDrivers_DocumentStorageDriver", header: "XmlTObjDrivers_DocumentStorageDriver.hxx",
                                        bycopy.} = object of XmlLDriversDocumentStorageDriver ##  ---------- PUBLIC METHODS ----------
                                                                                         ##  Declaration of CASCADE RTTI


proc constructXmlTObjDriversDocumentStorageDriver*(
    theCopyright: TCollectionExtendedString): XmlTObjDriversDocumentStorageDriver {.
    constructor, importcpp: "XmlTObjDrivers_DocumentStorageDriver(@)",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var XmlTObjDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
type
  XmlTObjDriversDocumentStorageDriverbaseType* = XmlLDriversDocumentStorageDriver

proc getTypeName*(): cstring {.importcpp: "XmlTObjDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlTObjDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: XmlTObjDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of XmlTObjDrivers_DocumentStorageDriver"
type
  HandleC1C1* = Handle[XmlTObjDriversDocumentStorageDriver]

# when defined(_MSC_VER):
#   discard

























