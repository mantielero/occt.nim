import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types


##  Copyright (c) 2020 OPEN CASCADE SAS
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





proc set*(this: var TDataStdGenericExtString; s: TCollectionExtendedString) {.cdecl,
    importcpp: "Set", header: "TDataStd_GenericExtString.hxx".}
proc setID*(this: var TDataStdGenericExtString; guid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_GenericExtString.hxx".}
proc get*(this: TDataStdGenericExtString): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "Get", header: "TDataStd_GenericExtString.hxx".}
proc id*(this: TDataStdGenericExtString): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_GenericExtString.hxx".}
proc restore*(this: var TDataStdGenericExtString; with: Handle[TDF_Attribute]) {.
    cdecl, importcpp: "Restore", header: "TDataStd_GenericExtString.hxx".}
proc paste*(this: TDataStdGenericExtString; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_GenericExtString.hxx".}
proc dumpJson*(this: TDataStdGenericExtString; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_GenericExtString.hxx".}

