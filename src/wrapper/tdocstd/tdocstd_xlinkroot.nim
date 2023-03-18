import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDocStd_XLinkRoot::GetID(@)",
                           header: "TDocStd_XLinkRoot.hxx".}
proc set*(aDF: Handle[TDF_Data]): Handle[TDocStdXLinkRoot] {.cdecl,
    importcpp: "TDocStd_XLinkRoot::Set(@)", header: "TDocStd_XLinkRoot.hxx".}
proc insert*(anXLinkPtr: TDocStdXLinkPtr) {.cdecl,
    importcpp: "TDocStd_XLinkRoot::Insert(@)", header: "TDocStd_XLinkRoot.hxx".}
proc remove*(anXLinkPtr: TDocStdXLinkPtr) {.cdecl,
    importcpp: "TDocStd_XLinkRoot::Remove(@)", header: "TDocStd_XLinkRoot.hxx".}
proc id*(this: TDocStdXLinkRoot): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDocStd_XLinkRoot.hxx".}
proc backupCopy*(this: TDocStdXLinkRoot): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "BackupCopy", header: "TDocStd_XLinkRoot.hxx".}
proc restore*(this: var TDocStdXLinkRoot; anAttribute: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDocStd_XLinkRoot.hxx".}
proc newEmpty*(this: TDocStdXLinkRoot): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDocStd_XLinkRoot.hxx".}
proc paste*(this: TDocStdXLinkRoot; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDocStd_XLinkRoot.hxx".}
proc dump*(this: TDocStdXLinkRoot; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDocStd_XLinkRoot.hxx".}

