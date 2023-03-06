import standard_types

##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Kind of key in Json string






proc constructStandardDumpValue*(): StandardDumpValue {.cdecl, constructor,
    importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
proc constructStandardDumpValue*(theValue: TCollectionAsciiString;
                                theStartPos: cint): StandardDumpValue {.cdecl,
    constructor, importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
## ! This interface has some tool methods for stream (in JSON format) processing.



proc text*(theStream: StandardSStream): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::Text(@)", header: "Standard_Dump.hxx".}
proc formatJson*(theStream: StandardSStream; theIndent: cint = 3): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::FormatJson(@)", header: "Standard_Dump.hxx".}
proc splitJson*(theStreamStr: TCollectionAsciiString; theKeyToValues: var NCollectionIndexedDataMap[
    TCollectionAsciiString, StandardDumpValue]): bool {.cdecl,
    importcpp: "Standard_Dump::SplitJson(@)", header: "Standard_Dump.hxx".}
proc hierarchicalValueIndices*(theValues: NCollectionIndexedDataMap[
    TCollectionAsciiString, TCollectionAsciiString]): NCollectionList[cint] {.
    cdecl, importcpp: "Standard_Dump::HierarchicalValueIndices(@)", header: "Standard_Dump.hxx".}
proc hasChildKey*(theSourceValue: TCollectionAsciiString): bool {.cdecl,
    importcpp: "Standard_Dump::HasChildKey(@)", header: "Standard_Dump.hxx".}
proc jsonKeyToString*(theKey: StandardJsonKey): cstring {.cdecl,
    importcpp: "Standard_Dump::JsonKeyToString(@)", header: "Standard_Dump.hxx".}
proc jsonKeyLength*(theKey: StandardJsonKey): cint {.cdecl,
    importcpp: "Standard_Dump::JsonKeyLength(@)", header: "Standard_Dump.hxx".}
proc addValuesSeparator*(theOStream: var StandardOStream) {.cdecl,
    importcpp: "Standard_Dump::AddValuesSeparator(@)", header: "Standard_Dump.hxx".}
proc getPointerPrefix*(): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerPrefix(@)", header: "Standard_Dump.hxx".}
proc getPointerInfo*(thePointer: Handle[StandardTransient];
                    isShortInfo: bool = true): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc getPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc dumpKeyToClass*(theOStream: var StandardOStream;
                    theKey: TCollectionAsciiString;
                    theField: TCollectionAsciiString) {.cdecl,
    importcpp: "Standard_Dump::DumpKeyToClass(@)", header: "Standard_Dump.hxx".}
proc dumpCharacterValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    cdecl, importcpp: "Standard_Dump::DumpCharacterValues(@)", header: "Standard_Dump.hxx".}
proc dumpRealValues*(theOStream: var StandardOStream; theCount: cint) {.varargs, cdecl,
    importcpp: "Standard_Dump::DumpRealValues(@)", header: "Standard_Dump.hxx".}
proc processStreamName*(theStreamStr: TCollectionAsciiString;
                       theName: TCollectionAsciiString; theStreamPos: var cint): bool {.
    cdecl, importcpp: "Standard_Dump::ProcessStreamName(@)", header: "Standard_Dump.hxx".}
proc processFieldName*(theStreamStr: TCollectionAsciiString;
                      theName: TCollectionAsciiString; theStreamPos: var cint): bool {.
    cdecl, importcpp: "Standard_Dump::ProcessFieldName(@)", header: "Standard_Dump.hxx".}
proc initRealValues*(theStreamStr: TCollectionAsciiString; theStreamPos: var cint;
                    theCount: cint): bool {.varargs, cdecl,
    importcpp: "Standard_Dump::InitRealValues(@)", header: "Standard_Dump.hxx".}
proc initValue*(theStreamStr: TCollectionAsciiString; theStreamPos: var cint;
               theValue: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "Standard_Dump::InitValue(@)", header: "Standard_Dump.hxx".}
proc dumpFieldToName*(theField: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::DumpFieldToName(@)", header: "Standard_Dump.hxx".}
