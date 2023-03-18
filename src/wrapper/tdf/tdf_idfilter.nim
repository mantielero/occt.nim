import tdf_types
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



proc newTDF_IDFilter*(ignoreMode: bool = true): TDF_IDFilter {.cdecl, constructor,
    importcpp: "TDF_IDFilter(@)", header: "TDF_IDFilter.hxx".}
proc ignoreAll*(this: var TDF_IDFilter; ignore: bool) {.cdecl, importcpp: "IgnoreAll",
    header: "TDF_IDFilter.hxx".}
proc ignoreAll*(this: TDF_IDFilter): bool {.noSideEffect, cdecl,
                                        importcpp: "IgnoreAll",
                                        header: "TDF_IDFilter.hxx".}
proc keep*(this: var TDF_IDFilter; anID: StandardGUID) {.cdecl, importcpp: "Keep",
    header: "TDF_IDFilter.hxx".}
proc keep*(this: var TDF_IDFilter; anIDList: TDF_IDList) {.cdecl, importcpp: "Keep",
    header: "TDF_IDFilter.hxx".}
proc ignore*(this: var TDF_IDFilter; anID: StandardGUID) {.cdecl, importcpp: "Ignore",
    header: "TDF_IDFilter.hxx".}
proc ignore*(this: var TDF_IDFilter; anIDList: TDF_IDList) {.cdecl,
    importcpp: "Ignore", header: "TDF_IDFilter.hxx".}
proc isKept*(this: TDF_IDFilter; anID: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsKept", header: "TDF_IDFilter.hxx".}
proc isKept*(this: TDF_IDFilter; anAtt: Handle[TDF_Attribute]): bool {.noSideEffect,
    cdecl, importcpp: "IsKept", header: "TDF_IDFilter.hxx".}
proc isIgnored*(this: TDF_IDFilter; anID: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsIgnored", header: "TDF_IDFilter.hxx".}
proc isIgnored*(this: TDF_IDFilter; anAtt: Handle[TDF_Attribute]): bool {.
    noSideEffect, cdecl, importcpp: "IsIgnored", header: "TDF_IDFilter.hxx".}
proc iDList*(this: TDF_IDFilter; anIDList: var TDF_IDList) {.noSideEffect, cdecl,
    importcpp: "IDList", header: "TDF_IDFilter.hxx".}
proc copy*(this: var TDF_IDFilter; fromFilter: TDF_IDFilter) {.cdecl,
    importcpp: "Copy", header: "TDF_IDFilter.hxx".}
proc dump*(this: TDF_IDFilter; anOS: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "TDF_IDFilter.hxx".}
proc assign*(this: var TDF_IDFilter; theFilter: TDF_IDFilter) {.cdecl,
    importcpp: "Assign", header: "TDF_IDFilter.hxx".}

