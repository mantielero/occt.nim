##  Created on: 2017-02-16
##  Created by: Sergey NIKONOV
##  Copyright (c) 2008-2017 OPEN CASCADE SAS
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
discard "forward decl of XmlMXCAFDoc_AssemblyItemRefDriver"
discard "forward decl of XmlMXCAFDoc_AssemblyItemRefDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocAssemblyItemRefDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocAssemblyItemRefDriver* {.importcpp: "XmlMXCAFDoc_AssemblyItemRefDriver", header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx",
                                     bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDocAssemblyItemRefDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocAssemblyItemRefDriver {.
    constructor, importcpp: "XmlMXCAFDoc_AssemblyItemRefDriver(@)",
    header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocAssemblyItemRefDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc paste*(this: XmlMXCAFDocAssemblyItemRefDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc paste*(this: XmlMXCAFDocAssemblyItemRefDriver;
           theSource: Handle[TDF_Attribute]; theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
type
  XmlMXCAFDocAssemblyItemRefDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_AssemblyItemRefDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_AssemblyItemRefDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocAssemblyItemRefDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_AssemblyItemRefDriver.hxx".}

























