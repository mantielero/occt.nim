##  Created on: 2001-08-24
##  Created by: Alexander GRIGORIEV
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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDataXtd_GeometryDriver"
discard "forward decl of XmlMDataXtd_GeometryDriver"
type
  HandleXmlMDataXtdGeometryDriver* = Handle[XmlMDataXtdGeometryDriver]

## ! Attribute Driver.

type
  XmlMDataXtdGeometryDriver* {.importcpp: "XmlMDataXtd_GeometryDriver",
                              header: "XmlMDataXtd_GeometryDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataXtdGeometryDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDataXtdGeometryDriver {.
    constructor, importcpp: "XmlMDataXtd_GeometryDriver(@)",
    header: "XmlMDataXtd_GeometryDriver.hxx".}
proc newEmpty*(this: XmlMDataXtdGeometryDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataXtd_GeometryDriver.hxx".}
proc paste*(this: XmlMDataXtdGeometryDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_GeometryDriver.hxx".}
proc paste*(this: XmlMDataXtdGeometryDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_GeometryDriver.hxx".}
type
  XmlMDataXtdGeometryDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataXtd_GeometryDriver::get_type_name(@)",
                            header: "XmlMDataXtd_GeometryDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataXtd_GeometryDriver::get_type_descriptor(@)",
    header: "XmlMDataXtd_GeometryDriver.hxx".}
proc dynamicType*(this: XmlMDataXtdGeometryDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataXtd_GeometryDriver.hxx".}
