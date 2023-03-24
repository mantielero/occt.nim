#import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types


##  Created on: 2007-07-31
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_AsciiString::GetID(@)",
                           header: "TDataStd_AsciiString.hxx".}
proc set*(label: TDF_Label; string: TCollectionAsciiString): Handle[
    TDataStdAsciiString] {.cdecl, importcpp: "TDataStd_AsciiString::Set(@)",
                          header: "TDataStd_AsciiString.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; string: TCollectionAsciiString): Handle[
    TDataStdAsciiString] {.cdecl, importcpp: "TDataStd_AsciiString::Set(@)",
                          header: "TDataStd_AsciiString.hxx".}
proc newTDataStdAsciiString*(): TDataStdAsciiString {.cdecl, constructor,
    importcpp: "TDataStd_AsciiString(@)", header: "TDataStd_AsciiString.hxx".}
proc set*(this: var TDataStdAsciiString; s: TCollectionAsciiString) {.cdecl,
    importcpp: "Set", header: "TDataStd_AsciiString.hxx".}
proc setID*(this: var TDataStdAsciiString; guid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_AsciiString.hxx".}
proc setID*(this: var TDataStdAsciiString) {.cdecl, importcpp: "SetID",
    header: "TDataStd_AsciiString.hxx".}
proc get*(this: TDataStdAsciiString): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Get", header: "TDataStd_AsciiString.hxx".}
proc isEmpty*(this: TDataStdAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_AsciiString.hxx".}
proc id*(this: TDataStdAsciiString): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_AsciiString.hxx".}
proc restore*(this: var TDataStdAsciiString; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_AsciiString.hxx".}
proc newEmpty*(this: TDataStdAsciiString): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_AsciiString.hxx".}
proc paste*(this: TDataStdAsciiString; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_AsciiString.hxx".}
proc dump*(this: TDataStdAsciiString; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_AsciiString.hxx".}
proc dumpJson*(this: TDataStdAsciiString; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_AsciiString.hxx".}

