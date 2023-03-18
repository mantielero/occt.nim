import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types



##  Created on: 1999-07-12
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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





proc isEmpty*(access: TDF_Label): bool {.cdecl,
                                     importcpp: "TDocStd_Modified::IsEmpty(@)",
                                     header: "TDocStd_Modified.hxx".}
proc add*(alabel: TDF_Label): bool {.cdecl, importcpp: "TDocStd_Modified::Add(@)",
                                 header: "TDocStd_Modified.hxx".}
proc remove*(alabel: TDF_Label): bool {.cdecl,
                                    importcpp: "TDocStd_Modified::Remove(@)",
                                    header: "TDocStd_Modified.hxx".}
proc contains*(alabel: TDF_Label): bool {.cdecl, importcpp: "TDocStd_Modified::Contains(@)",
                                      header: "TDocStd_Modified.hxx".}
proc get*(access: TDF_Label): TDF_LabelMap {.cdecl,
    importcpp: "TDocStd_Modified::Get(@)", header: "TDocStd_Modified.hxx".}
proc clear*(access: TDF_Label) {.cdecl, importcpp: "TDocStd_Modified::Clear(@)",
                              header: "TDocStd_Modified.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "TDocStd_Modified::GetID(@)",
                           header: "TDocStd_Modified.hxx".}
proc newTDocStdModified*(): TDocStdModified {.cdecl, constructor,
    importcpp: "TDocStd_Modified(@)", header: "TDocStd_Modified.hxx".}
proc isEmpty*(this: TDocStdModified): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDocStd_Modified.hxx".}
proc clear*(this: var TDocStdModified) {.cdecl, importcpp: "Clear",
                                     header: "TDocStd_Modified.hxx".}
proc addLabel*(this: var TDocStdModified; L: TDF_Label): bool {.cdecl,
    importcpp: "AddLabel", header: "TDocStd_Modified.hxx".}
proc removeLabel*(this: var TDocStdModified; L: TDF_Label): bool {.cdecl,
    importcpp: "RemoveLabel", header: "TDocStd_Modified.hxx".}
proc get*(this: TDocStdModified): TDF_LabelMap {.noSideEffect, cdecl,
    importcpp: "Get", header: "TDocStd_Modified.hxx".}
proc id*(this: TDocStdModified): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDocStd_Modified.hxx".}
proc restore*(this: var TDocStdModified; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDocStd_Modified.hxx".}
proc newEmpty*(this: TDocStdModified): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDocStd_Modified.hxx".}
proc paste*(this: TDocStdModified; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDocStd_Modified.hxx".}
proc dump*(this: TDocStdModified; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDocStd_Modified.hxx".}

