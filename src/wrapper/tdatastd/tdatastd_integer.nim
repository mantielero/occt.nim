import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


##  Created on: 1997-02-06
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Integer::GetID(@)",
                           header: "TDataStd_Integer.hxx".}
proc set*(label: TDF_Label; value: cint): Handle[TDataStdInteger] {.cdecl,
    importcpp: "TDataStd_Integer::Set(@)", header: "TDataStd_Integer.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; value: cint): Handle[TDataStdInteger] {.
    cdecl, importcpp: "TDataStd_Integer::Set(@)", header: "TDataStd_Integer.hxx".}
proc set*(this: var TDataStdInteger; v: cint) {.cdecl, importcpp: "Set",
    header: "TDataStd_Integer.hxx".}
proc setID*(this: var TDataStdInteger; guid: StandardGUID) {.cdecl, importcpp: "SetID",
    header: "TDataStd_Integer.hxx".}
proc setID*(this: var TDataStdInteger) {.cdecl, importcpp: "SetID",
                                     header: "TDataStd_Integer.hxx".}
proc get*(this: TDataStdInteger): cint {.noSideEffect, cdecl, importcpp: "Get",
                                     header: "TDataStd_Integer.hxx".}
proc isCaptured*(this: TDataStdInteger): bool {.noSideEffect, cdecl,
    importcpp: "IsCaptured", header: "TDataStd_Integer.hxx".}
proc id*(this: TDataStdInteger): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_Integer.hxx".}
proc restore*(this: var TDataStdInteger; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_Integer.hxx".}
proc newEmpty*(this: TDataStdInteger): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_Integer.hxx".}
proc paste*(this: TDataStdInteger; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_Integer.hxx".}
proc dump*(this: TDataStdInteger; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Integer.hxx".}
proc newTDataStdInteger*(): TDataStdInteger {.cdecl, constructor,
    importcpp: "TDataStd_Integer(@)", header: "TDataStd_Integer.hxx".}
proc dumpJson*(this: TDataStdInteger; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_Integer.hxx".}

