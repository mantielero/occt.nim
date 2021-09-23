##  Created on: 2001-09-04
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
  ../Standard/Standard, ../Standard/Standard_Type, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMXCAFDoc_CentroidDriver"
discard "forward decl of XmlMXCAFDoc_CentroidDriver"
type
  Handle_XmlMXCAFDoc_CentroidDriver* = handle[XmlMXCAFDoc_CentroidDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_CentroidDriver* {.importcpp: "XmlMXCAFDoc_CentroidDriver",
                               header: "XmlMXCAFDoc_CentroidDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDoc_CentroidDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_CentroidDriver {.
    constructor, importcpp: "XmlMXCAFDoc_CentroidDriver(@)",
    header: "XmlMXCAFDoc_CentroidDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_CentroidDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_CentroidDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_CentroidDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_CentroidDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_CentroidDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_CentroidDriver.hxx".}
type
  XmlMXCAFDoc_CentroidDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_CentroidDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_CentroidDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_CentroidDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_CentroidDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_CentroidDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_CentroidDriver.hxx".}