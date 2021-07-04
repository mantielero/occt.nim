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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_ExtendedString, ../PCDM/PCDM_StoreStatus,
  CDF_TryStoreStatus, ../Standard/Standard_ExtString, CDF_StoreSetNameStatus,
  CDF_SubComponentStatus, ../TCollection/TCollection_HExtendedString,
  ../Message/Message_ProgressRange

discard "forward decl of CDF_StoreList"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
type
  CDF_Store* {.importcpp: "CDF_Store", header: "CDF_Store.hxx", bycopy.} = object ## !
                                                                          ## creates a store list  from the
                                                                          ## document of the
                                                                          ## current
                                                                          ## selection.


proc constructCDF_Store*(aDocument: handle[CDM_Document]): CDF_Store {.constructor,
    importcpp: "CDF_Store(@)", header: "CDF_Store.hxx".}
proc Folder*(this: CDF_Store): handle[TCollection_HExtendedString] {.noSideEffect,
    importcpp: "Folder", header: "CDF_Store.hxx".}
proc Name*(this: CDF_Store): handle[TCollection_HExtendedString] {.noSideEffect,
    importcpp: "Name", header: "CDF_Store.hxx".}
proc IsStored*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "IsStored", header: "CDF_Store.hxx".}
proc IsModified*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "IsModified", header: "CDF_Store.hxx".}
proc CurrentIsConsistent*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "CurrentIsConsistent", header: "CDF_Store.hxx".}
proc IsConsistent*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "IsConsistent", header: "CDF_Store.hxx".}
proc HasAPreviousVersion*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "HasAPreviousVersion", header: "CDF_Store.hxx".}
proc PreviousVersion*(this: CDF_Store): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "PreviousVersion", header: "CDF_Store.hxx".}
proc IsMainDocument*(this: CDF_Store): Standard_Boolean {.noSideEffect,
    importcpp: "IsMainDocument", header: "CDF_Store.hxx".}
proc SetFolder*(this: var CDF_Store; aFolder: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "SetFolder", header: "CDF_Store.hxx".}
proc SetName*(this: var CDF_Store; aName: Standard_ExtString): CDF_StoreSetNameStatus {.
    importcpp: "SetName", header: "CDF_Store.hxx".}
proc SetComment*(this: var CDF_Store; aComment: Standard_ExtString) {.
    importcpp: "SetComment", header: "CDF_Store.hxx".}
proc Comment*(this: CDF_Store): handle[TCollection_HExtendedString] {.noSideEffect,
    importcpp: "Comment", header: "CDF_Store.hxx".}
proc RecheckName*(this: var CDF_Store): CDF_StoreSetNameStatus {.
    importcpp: "RecheckName", header: "CDF_Store.hxx".}
proc SetPreviousVersion*(this: var CDF_Store; aPreviousVersion: Standard_ExtString): Standard_Boolean {.
    importcpp: "SetPreviousVersion", header: "CDF_Store.hxx".}
proc Realize*(this: var CDF_Store;
             theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Realize", header: "CDF_Store.hxx".}
proc Path*(this: CDF_Store): Standard_ExtString {.noSideEffect, importcpp: "Path",
    header: "CDF_Store.hxx".}
proc MetaDataPath*(this: CDF_Store): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "MetaDataPath", header: "CDF_Store.hxx".}
proc Description*(this: CDF_Store): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "Description", header: "CDF_Store.hxx".}
proc SetCurrent*(this: var CDF_Store; aPresentation: Standard_ExtString) {.
    importcpp: "SetCurrent", header: "CDF_Store.hxx".}
proc SetMain*(this: var CDF_Store) {.importcpp: "SetMain", header: "CDF_Store.hxx".}
proc StoreStatus*(this: CDF_Store): PCDM_StoreStatus {.noSideEffect,
    importcpp: "StoreStatus", header: "CDF_Store.hxx".}
proc AssociatedStatusText*(this: CDF_Store): Standard_ExtString {.noSideEffect,
    importcpp: "AssociatedStatusText", header: "CDF_Store.hxx".}
proc SetName*(this: var CDF_Store; aName: TCollection_ExtendedString): CDF_StoreSetNameStatus {.
    importcpp: "SetName", header: "CDF_Store.hxx".}
proc SetFolder*(this: var CDF_Store; aFolder: Standard_ExtString): Standard_Boolean {.
    importcpp: "SetFolder", header: "CDF_Store.hxx".}