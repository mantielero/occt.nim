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
discard "forward decl of XmlMXCAFDoc_MaterialDriver"
discard "forward decl of XmlMXCAFDoc_MaterialDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocMaterialDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocMaterialDriver* {.importcpp: "XmlMXCAFDoc_MaterialDriver",
                              header: "XmlMXCAFDoc_MaterialDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDocMaterialDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocMaterialDriver {.
    constructor, importcpp: "XmlMXCAFDoc_MaterialDriver(@)",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocMaterialDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc paste*(this: XmlMXCAFDocMaterialDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc paste*(this: XmlMXCAFDocMaterialDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
type
  XmlMXCAFDocMaterialDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_MaterialDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_MaterialDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocMaterialDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}

























