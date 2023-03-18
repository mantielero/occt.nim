import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types


##  Created on: 1997-07-31
##  Created by: Denis PASCAL
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Name::GetID(@)",
                           header: "TDataStd_Name.hxx".}
proc set*(label: TDF_Label; string: TCollectionExtendedString): Handle[TDataStdName] {.
    cdecl, importcpp: "TDataStd_Name::Set(@)", header: "TDataStd_Name.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; string: TCollectionExtendedString): Handle[
    TDataStdName] {.cdecl, importcpp: "TDataStd_Name::Set(@)",
                   header: "TDataStd_Name.hxx".}
proc newTDataStdName*(): TDataStdName {.cdecl, constructor,
                                     importcpp: "TDataStd_Name(@)",
                                     header: "TDataStd_Name.hxx".}
proc set*(this: var TDataStdName; s: TCollectionExtendedString) {.cdecl,
    importcpp: "Set", header: "TDataStd_Name.hxx".}
proc setID*(this: var TDataStdName; guid: StandardGUID) {.cdecl, importcpp: "SetID",
    header: "TDataStd_Name.hxx".}
proc setID*(this: var TDataStdName) {.cdecl, importcpp: "SetID",
                                  header: "TDataStd_Name.hxx".}
proc dump*(this: TDataStdName; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Name.hxx".}

