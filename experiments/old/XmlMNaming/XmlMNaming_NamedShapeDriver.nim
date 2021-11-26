##  Created on: 2001-09-14
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
discard "forward decl of TopTools_LocationSet"
discard "forward decl of XmlMNaming_NamedShapeDriver"
discard "forward decl of XmlMNaming_NamedShapeDriver"
type
  HandleC1C1* = Handle[XmlMNamingNamedShapeDriver]
  XmlMNamingNamedShapeDriver* {.importcpp: "XmlMNaming_NamedShapeDriver",
                               header: "XmlMNaming_NamedShapeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMNamingNamedShapeDriver*(
    aMessageDriver: Handle[MessageMessenger]): XmlMNamingNamedShapeDriver {.
    constructor, importcpp: "XmlMNaming_NamedShapeDriver(@)",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc newEmpty*(this: XmlMNamingNamedShapeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc paste*(this: XmlMNamingNamedShapeDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc paste*(this: XmlMNamingNamedShapeDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc readShapeSection*(this: var XmlMNamingNamedShapeDriver;
                      anElement: XmlObjMgtElement;
                      theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadShapeSection", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc writeShapeSection*(this: var XmlMNamingNamedShapeDriver;
                       anElement: var XmlObjMgtElement;
                       theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "WriteShapeSection", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc clear*(this: var XmlMNamingNamedShapeDriver) {.importcpp: "Clear",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc getShapesLocations*(this: var XmlMNamingNamedShapeDriver): var TopToolsLocationSet {.
    importcpp: "GetShapesLocations", header: "XmlMNaming_NamedShapeDriver.hxx".}
type
  XmlMNamingNamedShapeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMNaming_NamedShapeDriver::get_type_name(@)",
                            header: "XmlMNaming_NamedShapeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMNaming_NamedShapeDriver::get_type_descriptor(@)",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc dynamicType*(this: XmlMNamingNamedShapeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMNaming_NamedShapeDriver.hxx".}

























