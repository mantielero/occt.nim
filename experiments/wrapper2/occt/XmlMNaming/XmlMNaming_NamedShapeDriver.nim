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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BRepTools/BRepTools_ShapeSet, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable, ../XmlObjMgt/XmlObjMgt_Element

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of TopTools_LocationSet"
discard "forward decl of XmlMNaming_NamedShapeDriver"
discard "forward decl of XmlMNaming_NamedShapeDriver"
type
  Handle_XmlMNaming_NamedShapeDriver* = handle[XmlMNaming_NamedShapeDriver]
  XmlMNaming_NamedShapeDriver* {.importcpp: "XmlMNaming_NamedShapeDriver",
                                header: "XmlMNaming_NamedShapeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMNaming_NamedShapeDriver*(
    aMessageDriver: handle[Message_Messenger]): XmlMNaming_NamedShapeDriver {.
    constructor, importcpp: "XmlMNaming_NamedShapeDriver(@)",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc NewEmpty*(this: XmlMNaming_NamedShapeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc Paste*(this: XmlMNaming_NamedShapeDriver; theSource: XmlObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc Paste*(this: XmlMNaming_NamedShapeDriver; theSource: handle[TDF_Attribute];
           theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc ReadShapeSection*(this: var XmlMNaming_NamedShapeDriver;
                      anElement: XmlObjMgt_Element;
                      theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadShapeSection", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc WriteShapeSection*(this: var XmlMNaming_NamedShapeDriver;
                       anElement: var XmlObjMgt_Element; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "WriteShapeSection", header: "XmlMNaming_NamedShapeDriver.hxx".}
proc Clear*(this: var XmlMNaming_NamedShapeDriver) {.importcpp: "Clear",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc GetShapesLocations*(this: var XmlMNaming_NamedShapeDriver): var TopTools_LocationSet {.
    importcpp: "GetShapesLocations", header: "XmlMNaming_NamedShapeDriver.hxx".}
type
  XmlMNaming_NamedShapeDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMNaming_NamedShapeDriver::get_type_name(@)",
                              header: "XmlMNaming_NamedShapeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMNaming_NamedShapeDriver::get_type_descriptor(@)",
    header: "XmlMNaming_NamedShapeDriver.hxx".}
proc DynamicType*(this: XmlMNaming_NamedShapeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMNaming_NamedShapeDriver.hxx".}