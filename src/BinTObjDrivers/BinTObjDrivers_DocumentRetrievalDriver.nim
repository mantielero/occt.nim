##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

##  Retrieval driver of a TObj Bin document
##

type
  BinTObjDriversDocumentRetrievalDriver* {.
      importcpp: "BinTObjDrivers_DocumentRetrievalDriver",
      header: "BinTObjDrivers_DocumentRetrievalDriver.hxx", bycopy.} = object of BinLDriversDocumentRetrievalDriver ##  ---------- PUBLIC METHODS ----------
                                                                                                             ##  Declaration of CASCADE RTTI


proc constructBinTObjDriversDocumentRetrievalDriver*(): BinTObjDriversDocumentRetrievalDriver {.
    constructor, importcpp: "BinTObjDrivers_DocumentRetrievalDriver(@)",
    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var BinTObjDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
type
  BinTObjDriversDocumentRetrievalDriverbaseType* = BinLDriversDocumentRetrievalDriver

proc getTypeName*(): cstring {.importcpp: "BinTObjDrivers_DocumentRetrievalDriver::get_type_name(@)", header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "BinTObjDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: BinTObjDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of BinTObjDrivers_DocumentRetrievalDriver"
type
  HandleC1C1* = Handle[BinTObjDriversDocumentRetrievalDriver]

# when defined(_MSC_VER):
#   discard

























