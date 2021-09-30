##  Created on: 2001-07-25
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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlLDrivers_DocumentStorageDriver"
discard "forward decl of XmlLDrivers_DocumentRetrievalDriver"
discard "forward decl of XmlLDrivers_NamespaceDef"
discard "forward decl of TDocStd_Application"
type
  XmlLDrivers* {.importcpp: "XmlLDrivers", header: "XmlLDrivers.hxx", bycopy.} = object


proc factory*(theGUID: StandardGUID): Handle[StandardTransient] {.
    importcpp: "XmlLDrivers::Factory(@)", header: "XmlLDrivers.hxx".}
proc creationDate*(): TCollectionAsciiString {.
    importcpp: "XmlLDrivers::CreationDate(@)", header: "XmlLDrivers.hxx".}
proc defineFormat*(theApp: Handle[TDocStdApplication]) {.
    importcpp: "XmlLDrivers::DefineFormat(@)", header: "XmlLDrivers.hxx".}
proc attributeDrivers*(theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "XmlLDrivers::AttributeDrivers(@)",
                          header: "XmlLDrivers.hxx".}
proc storageVersion*(): cint {.importcpp: "XmlLDrivers::StorageVersion(@)",
                            header: "XmlLDrivers.hxx".}

























