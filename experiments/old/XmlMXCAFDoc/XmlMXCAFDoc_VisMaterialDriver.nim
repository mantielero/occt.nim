##  Copyright (c) 2019 OPEN CASCADE SAS
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

discard "forward decl of XmlMXCAFDoc_VisMaterialDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocVisMaterialDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocVisMaterialDriver* {.importcpp: "XmlMXCAFDoc_VisMaterialDriver",
                                 header: "XmlMXCAFDoc_VisMaterialDriver.hxx",
                                 bycopy.} = object of XmlMDF_ADriver ## ! Main constructor.

  XmlMXCAFDocVisMaterialDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_VisMaterialDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_VisMaterialDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocVisMaterialDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc constructXmlMXCAFDocVisMaterialDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocVisMaterialDriver {.
    constructor, importcpp: "XmlMXCAFDoc_VisMaterialDriver(@)",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocVisMaterialDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc paste*(this: XmlMXCAFDocVisMaterialDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc paste*(this: XmlMXCAFDocVisMaterialDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}

























