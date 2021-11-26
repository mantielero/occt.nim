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

type
  StandardJsonKey* {.size: sizeof(cint), importcpp: "Standard_JsonKey",
                    header: "Standard_Dump.hxx".} = enum
    StandardJsonKeyNone,      ## !< no key
    StandardJsonKeyOpenChild, ## !< "{"
    StandardJsonKeyCloseChild, ## !< "}"
    StandardJsonKeyOpenContainer, ## !< "["
    StandardJsonKeyCloseContainer, ## !< "]"
    StandardJsonKeyQuote,     ## !< "\""
    StandardJsonKeySeparatorKeyToValue, ## !< ": "
    StandardJsonKeySeparatorValueToValue ## !< ", "


## ! Type for storing a dump value with the stream position

type
  StandardDumpValue* {.importcpp: "Standard_DumpValue",
                      header: "Standard_Dump.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: TCollectionAsciiString ## !< current string value
    myStartPosition* {.importc: "myStartPosition".}: cint ## !< position of the value first char in the whole stream


proc constructStandardDumpValue*(): StandardDumpValue {.cdecl, constructor,
    importcpp: "Standard_DumpValue(@)", dynlib: tkernel.}
proc constructStandardDumpValue*(theValue: TCollectionAsciiString;
                                theStartPos: cint): StandardDumpValue {.cdecl,
    constructor, importcpp: "Standard_DumpValue(@)", dynlib: tkernel.}
## ! This interface has some tool methods for stream (in JSON format) processing.

type
  StandardDump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Converts
                                                                                     ## stream
                                                                                     ## value
                                                                                     ## to
                                                                                     ## string
                                                                                     ## value.
                                                                                     ## The
                                                                                     ## result
                                                                                     ## is
                                                                                     ## original
                                                                                     ## stream
                                                                                     ## value.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theStream
                                                                                     ## source
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## @return
                                                                                     ## text
                                                                                     ## presentation
                                                                                     ##
                                                                                     ## !
                                                                                     ## Extracts
                                                                                     ## from
                                                                                     ## the
                                                                                     ## string
                                                                                     ## value
                                                                                     ## a
                                                                                     ## pair
                                                                                     ## (key,
                                                                                     ## value),
                                                                                     ## add
                                                                                     ## it
                                                                                     ## into
                                                                                     ## output
                                                                                     ## container,
                                                                                     ## update
                                                                                     ## index
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## Example:
                                                                                     ##
                                                                                     ## !
                                                                                     ## stream
                                                                                     ## string
                                                                                     ## starting
                                                                                     ## the
                                                                                     ## index
                                                                                     ## position
                                                                                     ## contains:
                                                                                     ## ..."key":
                                                                                     ## <value>...
                                                                                     ##
                                                                                     ## !
                                                                                     ## a
                                                                                     ## pair
                                                                                     ## key,
                                                                                     ## value
                                                                                     ## will
                                                                                     ## be
                                                                                     ## added
                                                                                     ## into
                                                                                     ## theValues
                                                                                     ##
                                                                                     ## !
                                                                                     ## at
                                                                                     ## beginning
                                                                                     ## theIndex
                                                                                     ## is
                                                                                     ## the
                                                                                     ## position
                                                                                     ## of
                                                                                     ## the
                                                                                     ## quota
                                                                                     ## before
                                                                                     ## <key>,
                                                                                     ## after
                                                                                     ## the
                                                                                     ## index
                                                                                     ## is
                                                                                     ## the
                                                                                     ## next
                                                                                     ## position
                                                                                     ## after
                                                                                     ## the
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## splitDumped(aString)
                                                                                     ## gives
                                                                                     ## theSplitValue
                                                                                     ## =
                                                                                     ## "abc",
                                                                                     ## theTailValue
                                                                                     ## =
                                                                                     ## "defg",
                                                                                     ## theKey
                                                                                     ## =
                                                                                     ## "key"


proc text*(theStream: StandardSStream): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::Text(@)", dynlib: tkernel.}
proc formatJson*(theStream: StandardSStream; theIndent: cint = 3): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::FormatJson(@)", dynlib: tkernel.}
proc splitJson*(theStreamStr: TCollectionAsciiString; theKeyToValues: var NCollectionIndexedDataMap[
    TCollectionAsciiString, StandardDumpValue]): bool {.cdecl,
    importcpp: "Standard_Dump::SplitJson(@)", dynlib: tkernel.}
proc hierarchicalValueIndices*(theValues: NCollectionIndexedDataMap[
    TCollectionAsciiString, TCollectionAsciiString]): NCollectionList[cint] {.
    cdecl, importcpp: "Standard_Dump::HierarchicalValueIndices(@)", dynlib: tkernel.}
proc hasChildKey*(theSourceValue: TCollectionAsciiString): bool {.cdecl,
    importcpp: "Standard_Dump::HasChildKey(@)", dynlib: tkernel.}
proc jsonKeyToString*(theKey: StandardJsonKey): cstring {.cdecl,
    importcpp: "Standard_Dump::JsonKeyToString(@)", dynlib: tkernel.}
proc jsonKeyLength*(theKey: StandardJsonKey): cint {.cdecl,
    importcpp: "Standard_Dump::JsonKeyLength(@)", dynlib: tkernel.}
proc addValuesSeparator*(theOStream: var StandardOStream) {.cdecl,
    importcpp: "Standard_Dump::AddValuesSeparator(@)", dynlib: tkernel.}
proc getPointerPrefix*(): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerPrefix(@)", dynlib: tkernel.}
proc getPointerInfo*(thePointer: Handle[StandardTransient];
                    isShortInfo: bool = true): TCollectionAsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerInfo(@)", dynlib: tkernel.}
proc getPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::GetPointerInfo(@)", dynlib: tkernel.}
proc dumpKeyToClass*(theOStream: var StandardOStream;
                    theKey: TCollectionAsciiString;
                    theField: TCollectionAsciiString) {.cdecl,
    importcpp: "Standard_Dump::DumpKeyToClass(@)", dynlib: tkernel.}
proc dumpCharacterValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    cdecl, importcpp: "Standard_Dump::DumpCharacterValues(@)", dynlib: tkernel.}
proc dumpRealValues*(theOStream: var StandardOStream; theCount: cint) {.varargs, cdecl,
    importcpp: "Standard_Dump::DumpRealValues(@)", dynlib: tkernel.}
proc processStreamName*(theStreamStr: TCollectionAsciiString;
                       theName: TCollectionAsciiString; theStreamPos: var cint): bool {.
    cdecl, importcpp: "Standard_Dump::ProcessStreamName(@)", dynlib: tkernel.}
proc processFieldName*(theStreamStr: TCollectionAsciiString;
                      theName: TCollectionAsciiString; theStreamPos: var cint): bool {.
    cdecl, importcpp: "Standard_Dump::ProcessFieldName(@)", dynlib: tkernel.}
proc initRealValues*(theStreamStr: TCollectionAsciiString; theStreamPos: var cint;
                    theCount: cint): bool {.varargs, cdecl,
    importcpp: "Standard_Dump::InitRealValues(@)", dynlib: tkernel.}
proc initValue*(theStreamStr: TCollectionAsciiString; theStreamPos: var cint;
               theValue: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "Standard_Dump::InitValue(@)", dynlib: tkernel.}
proc dumpFieldToName*(theField: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, importcpp: "Standard_Dump::DumpFieldToName(@)", dynlib: tkernel.}