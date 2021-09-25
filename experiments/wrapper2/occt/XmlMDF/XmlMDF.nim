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


proc fromTo*(aSource: Handle[TDF_Data]; aTarget: var XmlObjMgtElement;
            aReloc: var XmlObjMgtSRelocationTable;
            aDrivers: Handle[XmlMDF_ADriverTable];
            theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "XmlMDF::FromTo(@)", header: "XmlMDF.hxx".}
proc fromTo*(aSource: XmlObjMgtElement; aTarget: var Handle[TDF_Data];
            aReloc: var XmlObjMgtRRelocationTable;
            aDrivers: Handle[XmlMDF_ADriverTable];
            theRange: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "XmlMDF::FromTo(@)", header: "XmlMDF.hxx".}
proc addDrivers*(aDriverTable: Handle[XmlMDF_ADriverTable];
                theMessageDriver: Handle[MessageMessenger]) {.
    importcpp: "XmlMDF::AddDrivers(@)", header: "XmlMDF.hxx".}
