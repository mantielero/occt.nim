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
  XmlLDrivers_SequenceOfNamespaceDef, ../TCollection/TCollection_ExtendedString,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable, ../PCDM/PCDM_StorageDriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_Element,
  ../Standard/Standard_Integer

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlLDrivers_DocumentStorageDriver"
discard "forward decl of XmlLDrivers_DocumentStorageDriver"
type
  Handle_XmlLDrivers_DocumentStorageDriver* = handle[
      XmlLDrivers_DocumentStorageDriver]
  XmlLDrivers_DocumentStorageDriver* {.importcpp: "XmlLDrivers_DocumentStorageDriver", header: "XmlLDrivers_DocumentStorageDriver.hxx",
                                      bycopy.} = object of PCDM_StorageDriver


proc constructXmlLDrivers_DocumentStorageDriver*(
    theCopyright: TCollection_ExtendedString): XmlLDrivers_DocumentStorageDriver {.
    constructor, importcpp: "XmlLDrivers_DocumentStorageDriver(@)",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc Write*(this: var XmlLDrivers_DocumentStorageDriver;
           theDocument: handle[CDM_Document];
           theFileName: TCollection_ExtendedString;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Write", header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc Write*(this: var XmlLDrivers_DocumentStorageDriver;
           theDocument: handle[CDM_Document]; theOStream: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Write", header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var XmlLDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlLDrivers_DocumentStorageDriver.hxx".}
type
  XmlLDrivers_DocumentStorageDriverbase_type* = PCDM_StorageDriver

proc get_type_name*(): cstring {.importcpp: "XmlLDrivers_DocumentStorageDriver::get_type_name(@)",
                              header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlLDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: XmlLDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlLDrivers_DocumentStorageDriver.hxx".}