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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../CDM/CDM_MapOfDocument,
  ../CDM/CDM_ListOfDocument, ../CDM/CDM_MapIteratorOfMapOfDocument,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../PCDM/PCDM_StoreStatus, ../Message/Message_ProgressIndicator

discard "forward decl of CDM_Document"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDM_MetaData"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDF_StoreList"
discard "forward decl of CDF_StoreList"
type
  Handle_CDF_StoreList* = handle[CDF_StoreList]
  CDF_StoreList* {.importcpp: "CDF_StoreList", header: "CDF_StoreList.hxx", bycopy.} = object of Standard_Transient


proc constructCDF_StoreList*(aDocument: handle[CDM_Document]): CDF_StoreList {.
    constructor, importcpp: "CDF_StoreList(@)", header: "CDF_StoreList.hxx".}
proc IsConsistent*(this: CDF_StoreList): Standard_Boolean {.noSideEffect,
    importcpp: "IsConsistent", header: "CDF_StoreList.hxx".}
proc Store*(this: var CDF_StoreList; aMetaData: var handle[CDM_MetaData];
           aStatusAssociatedText: var TCollection_ExtendedString;
           theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "Store", header: "CDF_StoreList.hxx".}
proc Init*(this: var CDF_StoreList) {.importcpp: "Init", header: "CDF_StoreList.hxx".}
proc More*(this: CDF_StoreList): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "CDF_StoreList.hxx".}
proc Next*(this: var CDF_StoreList) {.importcpp: "Next", header: "CDF_StoreList.hxx".}
proc Value*(this: CDF_StoreList): handle[CDM_Document] {.noSideEffect,
    importcpp: "Value", header: "CDF_StoreList.hxx".}
type
  CDF_StoreListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDF_StoreList::get_type_name(@)",
                              header: "CDF_StoreList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDF_StoreList::get_type_descriptor(@)",
    header: "CDF_StoreList.hxx".}
proc DynamicType*(this: CDF_StoreList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_StoreList.hxx".}