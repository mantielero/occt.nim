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

import
  ../TObj/TObj_Common, ../XmlLDrivers/XmlLDrivers_DocumentStorageDriver,
  ../XmlMDF/XmlMDF_ADriverTable

##   Block of comments describing class XmlTObjDrivers_DocumentStorageDriver
##

type
  XmlTObjDrivers_DocumentStorageDriver* {.
      importcpp: "XmlTObjDrivers_DocumentStorageDriver",
      header: "XmlTObjDrivers_DocumentStorageDriver.hxx", bycopy.} = object of XmlLDrivers_DocumentStorageDriver ##  ---------- PUBLIC METHODS ----------
                                                                                                          ##  Declaration of CASCADE RTTI


proc constructXmlTObjDrivers_DocumentStorageDriver*(
    theCopyright: TCollection_ExtendedString): XmlTObjDrivers_DocumentStorageDriver {.
    constructor, importcpp: "XmlTObjDrivers_DocumentStorageDriver(@)",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var XmlTObjDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
type
  XmlTObjDrivers_DocumentStorageDriverbase_type* = XmlLDrivers_DocumentStorageDriver

proc get_type_name*(): cstring {.importcpp: "XmlTObjDrivers_DocumentStorageDriver::get_type_name(@)", header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlTObjDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: XmlTObjDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_DocumentStorageDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of XmlTObjDrivers_DocumentStorageDriver"
type
  Handle_XmlTObjDrivers_DocumentStorageDriver* = handle[
      XmlTObjDrivers_DocumentStorageDriver]

when defined(_MSC_VER):
  discard