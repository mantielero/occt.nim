##  Created on: 2008-12-10
##  Created by: Pavel TELKOV
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMXCAFDoc_DatumDriver"
discard "forward decl of XmlMXCAFDoc_DatumDriver"
type
  HandleXmlMXCAFDocDatumDriver* = Handle[XmlMXCAFDocDatumDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocDatumDriver* {.importcpp: "XmlMXCAFDoc_DatumDriver",
                           header: "XmlMXCAFDoc_DatumDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDocDatumDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocDatumDriver {.
    constructor, importcpp: "XmlMXCAFDoc_DatumDriver(@)",
    header: "XmlMXCAFDoc_DatumDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocDatumDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMXCAFDoc_DatumDriver.hxx".}
proc paste*(this: XmlMXCAFDocDatumDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_DatumDriver.hxx".}
proc paste*(this: XmlMXCAFDocDatumDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_DatumDriver.hxx".}
type
  XmlMXCAFDocDatumDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_DatumDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_DatumDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_DatumDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_DatumDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocDatumDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMXCAFDoc_DatumDriver.hxx".}
