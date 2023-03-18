import ../standard/standard_types
import ../tcollection/tcollection_types
import cdf_types
import ../cdm/cdm_types
import ../message/message_includes
import ../pcdm/pcdm_types




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



proc newCDF_StoreList*(aDocument: Handle[CDM_Document]): CDF_StoreList {.cdecl,
    constructor, importcpp: "CDF_StoreList(@)", header: "CDF_StoreList.hxx".}
proc isConsistent*(this: CDF_StoreList): bool {.noSideEffect, cdecl,
    importcpp: "IsConsistent", header: "CDF_StoreList.hxx".}
proc store*(this: var CDF_StoreList; aMetaData: var Handle[CDM_MetaData];
           aStatusAssociatedText: var TCollectionExtendedString;
           theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "Store", header: "CDF_StoreList.hxx".}
proc init*(this: var CDF_StoreList) {.cdecl, importcpp: "Init",
                                  header: "CDF_StoreList.hxx".}
proc more*(this: CDF_StoreList): bool {.noSideEffect, cdecl, importcpp: "More",
                                    header: "CDF_StoreList.hxx".}
proc next*(this: var CDF_StoreList) {.cdecl, importcpp: "Next",
                                  header: "CDF_StoreList.hxx".}
proc value*(this: CDF_StoreList): Handle[CDM_Document] {.noSideEffect, cdecl,
    importcpp: "Value", header: "CDF_StoreList.hxx".}


