##  Created on: 1995-03-22
##  Created by: Jean-Louis  Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of CDM_Document"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDM_MetaData"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDF_StoreList"
discard "forward decl of CDF_StoreList"
type
  HandleCDF_StoreList* = Handle[CDF_StoreList]
  CDF_StoreList* {.importcpp: "CDF_StoreList", header: "CDF_StoreList.hxx", bycopy.} = object of StandardTransient


proc constructCDF_StoreList*(aDocument: Handle[CDM_Document]): CDF_StoreList {.
    constructor, importcpp: "CDF_StoreList(@)", header: "CDF_StoreList.hxx".}
proc isConsistent*(this: CDF_StoreList): StandardBoolean {.noSideEffect,
    importcpp: "IsConsistent", header: "CDF_StoreList.hxx".}
proc store*(this: var CDF_StoreList; aMetaData: var Handle[CDM_MetaData];
           aStatusAssociatedText: var TCollectionExtendedString;
           theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "Store", header: "CDF_StoreList.hxx".}
proc init*(this: var CDF_StoreList) {.importcpp: "Init", header: "CDF_StoreList.hxx".}
proc more*(this: CDF_StoreList): StandardBoolean {.noSideEffect, importcpp: "More",
    header: "CDF_StoreList.hxx".}
proc next*(this: var CDF_StoreList) {.importcpp: "Next", header: "CDF_StoreList.hxx".}
proc value*(this: CDF_StoreList): Handle[CDM_Document] {.noSideEffect,
    importcpp: "Value", header: "CDF_StoreList.hxx".}
type
  CDF_StoreListbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDF_StoreList::get_type_name(@)",
                            header: "CDF_StoreList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_StoreList::get_type_descriptor(@)",
    header: "CDF_StoreList.hxx".}
proc dynamicType*(this: CDF_StoreList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_StoreList.hxx".}

