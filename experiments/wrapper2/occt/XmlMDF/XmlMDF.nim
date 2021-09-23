##  Created on: 2001-07-09
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../XmlObjMgt/XmlObjMgt_Element,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  XmlMDF_MapOfDriver, ../Message/Message_ProgressRange

discard "forward decl of TDF_Data"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of TDF_Label"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlMDF_TagSourceDriver"
discard "forward decl of XmlMDF_ReferenceDriver"
discard "forward decl of XmlMDF_ADriverTable"
type
  XmlMDF* {.importcpp: "XmlMDF", header: "XmlMDF.hxx", bycopy.} = object ## ! Translates a transient <aSource> into a persistent
                                                                 ## ! <aTarget>.


proc FromTo*(aSource: handle[TDF_Data]; aTarget: var XmlObjMgt_Element;
            aReloc: var XmlObjMgt_SRelocationTable;
            aDrivers: handle[XmlMDF_ADriverTable];
            theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "XmlMDF::FromTo(@)", header: "XmlMDF.hxx".}
proc FromTo*(aSource: XmlObjMgt_Element; aTarget: var handle[TDF_Data];
            aReloc: var XmlObjMgt_RRelocationTable;
            aDrivers: handle[XmlMDF_ADriverTable];
            theRange: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "XmlMDF::FromTo(@)", header: "XmlMDF.hxx".}
proc AddDrivers*(aDriverTable: handle[XmlMDF_ADriverTable];
                theMessageDriver: handle[Message_Messenger]) {.
    importcpp: "XmlMDF::AddDrivers(@)", header: "XmlMDF.hxx".}