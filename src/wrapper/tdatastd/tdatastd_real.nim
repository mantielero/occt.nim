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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Real::GetID(@)",
                           header: "TDataStd_Real.hxx".}
proc set*(label: TDF_Label; value: cfloat): Handle[TDataStdReal] {.cdecl,
    importcpp: "TDataStd_Real::Set(@)", header: "TDataStd_Real.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; value: cfloat): Handle[TDataStdReal] {.
    cdecl, importcpp: "TDataStd_Real::Set(@)", header: "TDataStd_Real.hxx".}
proc newTDataStdReal*(): TDataStdReal {.cdecl, constructor,
                                     importcpp: "TDataStd_Real(@)",
                                     header: "TDataStd_Real.hxx".}
proc setDimension*(this: var TDataStdReal; dim: TDataStdRealEnum) {.cdecl,
    importcpp: "SetDimension", header: "TDataStd_Real.hxx".}
proc getDimension*(this: TDataStdReal): TDataStdRealEnum {.noSideEffect, cdecl,
    importcpp: "GetDimension", header: "TDataStd_Real.hxx".}
proc set*(this: var TDataStdReal; v: cfloat) {.cdecl, importcpp: "Set",
    header: "TDataStd_Real.hxx".}
proc setID*(this: var TDataStdReal; guid: StandardGUID) {.cdecl, importcpp: "SetID",
    header: "TDataStd_Real.hxx".}
proc setID*(this: var TDataStdReal) {.cdecl, importcpp: "SetID",
                                  header: "TDataStd_Real.hxx".}
proc get*(this: TDataStdReal): cfloat {.noSideEffect, cdecl, importcpp: "Get",
                                    header: "TDataStd_Real.hxx".}
proc isCaptured*(this: TDataStdReal): bool {.noSideEffect, cdecl,
    importcpp: "IsCaptured", header: "TDataStd_Real.hxx".}
proc id*(this: TDataStdReal): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_Real.hxx".}
proc restore*(this: var TDataStdReal; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_Real.hxx".}
proc newEmpty*(this: TDataStdReal): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_Real.hxx".}
proc paste*(this: TDataStdReal; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_Real.hxx".}
proc dump*(this: TDataStdReal; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Real.hxx".}
proc dumpJson*(this: TDataStdReal; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_Real.hxx".}

