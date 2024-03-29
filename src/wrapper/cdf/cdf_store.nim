import ../standard/standard_types
import ../tcollection/tcollection_types
import cdf_types
import ../cdm/cdm_types
import ../message/message_includes
import ../pcdm/pcdm_types




##  Created on: 1995-11-13
##  Created by: Jean-Louis Frenkel
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



proc newCDF_Store*(aDocument: Handle[CDM_Document]): CDF_Store {.cdecl, constructor,
    importcpp: "CDF_Store(@)", header: "CDF_Store.hxx".}
proc folder*(this: CDF_Store): Handle[TCollectionHExtendedString] {.noSideEffect,
    cdecl, importcpp: "Folder", header: "CDF_Store.hxx".}
proc name*(this: CDF_Store): Handle[TCollectionHExtendedString] {.noSideEffect,
    cdecl, importcpp: "Name", header: "CDF_Store.hxx".}
proc isStored*(this: CDF_Store): bool {.noSideEffect, cdecl, importcpp: "IsStored",
                                    header: "CDF_Store.hxx".}
proc isModified*(this: CDF_Store): bool {.noSideEffect, cdecl,
                                      importcpp: "IsModified",
                                      header: "CDF_Store.hxx".}
proc currentIsConsistent*(this: CDF_Store): bool {.noSideEffect, cdecl,
    importcpp: "CurrentIsConsistent", header: "CDF_Store.hxx".}
proc isConsistent*(this: CDF_Store): bool {.noSideEffect, cdecl,
                                        importcpp: "IsConsistent",
                                        header: "CDF_Store.hxx".}
proc hasAPreviousVersion*(this: CDF_Store): bool {.noSideEffect, cdecl,
    importcpp: "HasAPreviousVersion", header: "CDF_Store.hxx".}
proc previousVersion*(this: CDF_Store): Handle[TCollectionHExtendedString] {.
    noSideEffect, cdecl, importcpp: "PreviousVersion", header: "CDF_Store.hxx".}
proc isMainDocument*(this: CDF_Store): bool {.noSideEffect, cdecl,
    importcpp: "IsMainDocument", header: "CDF_Store.hxx".}
proc setFolder*(this: var CDF_Store; aFolder: TCollectionExtendedString): bool {.cdecl,
    importcpp: "SetFolder", header: "CDF_Store.hxx".}
proc setName*(this: var CDF_Store; aName: StandardExtString): CDF_StoreSetNameStatus {.
    cdecl, importcpp: "SetName", header: "CDF_Store.hxx".}
proc setComment*(this: var CDF_Store; aComment: StandardExtString) {.cdecl,
    importcpp: "SetComment", header: "CDF_Store.hxx".}
proc comment*(this: CDF_Store): Handle[TCollectionHExtendedString] {.noSideEffect,
    cdecl, importcpp: "Comment", header: "CDF_Store.hxx".}
proc recheckName*(this: var CDF_Store): CDF_StoreSetNameStatus {.cdecl,
    importcpp: "RecheckName", header: "CDF_Store.hxx".}
proc setPreviousVersion*(this: var CDF_Store; aPreviousVersion: StandardExtString): bool {.
    cdecl, importcpp: "SetPreviousVersion", header: "CDF_Store.hxx".}
proc realize*(this: var CDF_Store;
             theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Realize", header: "CDF_Store.hxx".}
proc path*(this: CDF_Store): StandardExtString {.noSideEffect, cdecl,
    importcpp: "Path", header: "CDF_Store.hxx".}
proc metaDataPath*(this: CDF_Store): Handle[TCollectionHExtendedString] {.
    noSideEffect, cdecl, importcpp: "MetaDataPath", header: "CDF_Store.hxx".}
proc description*(this: CDF_Store): Handle[TCollectionHExtendedString] {.
    noSideEffect, cdecl, importcpp: "Description", header: "CDF_Store.hxx".}
proc setCurrent*(this: var CDF_Store; aPresentation: StandardExtString) {.cdecl,
    importcpp: "SetCurrent", header: "CDF_Store.hxx".}
proc setMain*(this: var CDF_Store) {.cdecl, importcpp: "SetMain",
                                 header: "CDF_Store.hxx".}
proc storeStatus*(this: CDF_Store): PCDM_StoreStatus {.noSideEffect, cdecl,
    importcpp: "StoreStatus", header: "CDF_Store.hxx".}
proc associatedStatusText*(this: CDF_Store): StandardExtString {.noSideEffect, cdecl,
    importcpp: "AssociatedStatusText", header: "CDF_Store.hxx".}
proc setName*(this: var CDF_Store; aName: TCollectionExtendedString): CDF_StoreSetNameStatus {.
    cdecl, importcpp: "SetName", header: "CDF_Store.hxx".}
proc setFolder*(this: var CDF_Store; aFolder: StandardExtString): bool {.cdecl,
    importcpp: "SetFolder", header: "CDF_Store.hxx".}


