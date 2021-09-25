##  Created on: 2016-11-10
##  Created by: Anton KOZULIN
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of XmlMDataXtd_TriangulationDriver"
type
  HandleXmlMDataXtdTriangulationDriver* = Handle[XmlMDataXtdTriangulationDriver]

## ! TDataStd_Mesh attribute XML Driver.

type
  XmlMDataXtdTriangulationDriver* {.importcpp: "XmlMDataXtd_TriangulationDriver", header: "XmlMDataXtd_TriangulationDriver.hxx",
                                   bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataXtdTriangulationDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataXtdTriangulationDriver {.
    constructor, importcpp: "XmlMDataXtd_TriangulationDriver(@)",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc newEmpty*(this: XmlMDataXtdTriangulationDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc paste*(this: XmlMDataXtdTriangulationDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc paste*(this: XmlMDataXtdTriangulationDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_TriangulationDriver.hxx".}
type
  XmlMDataXtdTriangulationDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataXtd_TriangulationDriver::get_type_name(@)",
                            header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataXtd_TriangulationDriver::get_type_descriptor(@)",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc dynamicType*(this: XmlMDataXtdTriangulationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
