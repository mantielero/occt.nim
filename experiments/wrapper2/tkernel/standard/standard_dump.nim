when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  Standard_JsonKey* {.size: sizeof(cint), importcpp: "Standard_JsonKey",
                     header: "Standard_Dump.hxx".} = enum
    Standard_JsonKey_None,    ## !< no key
    Standard_JsonKey_OpenChild, ## !< "{"
    Standard_JsonKey_CloseChild, ## !< "}"
    Standard_JsonKey_OpenContainer, ## !< "["
    Standard_JsonKey_CloseContainer, ## !< "]"
    Standard_JsonKey_Quote,   ## !< "\""
    Standard_JsonKey_SeparatorKeyToValue, ## !< ": "
    Standard_JsonKey_SeparatorValueToValue ## !< ", "


## ! Type for storing a dump value with the stream position

type
  Standard_DumpValue* {.importcpp: "Standard_DumpValue",
                       header: "Standard_Dump.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: TCollection_AsciiString ## !< current string value
    myStartPosition* {.importc: "myStartPosition".}: cint ## !< position of the value first char in the whole stream


proc constructStandard_DumpValue*(): Standard_DumpValue {.cdecl, constructor,
    importcpp: "Standard_DumpValue(@)", dynlib: tkernel.}
proc constructStandard_DumpValue*(theValue: TCollection_AsciiString;
                                 theStartPos: cint): Standard_DumpValue {.cdecl,
    constructor, importcpp: "Standard_DumpValue(@)", dynlib: tkernel.}
## ! This interface has some tool methods for stream (in JSON format) processing.

type
  Standard_Dump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object ##
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


proc Text*(theStream: Standard_SStream): TCollection_AsciiString {.cdecl,
    importcpp: "Standard_Dump::Text(@)", dynlib: tkernel.}
proc FormatJson*(theStream: Standard_SStream; theIndent: cint = 3): TCollection_AsciiString {.
    cdecl, importcpp: "Standard_Dump::FormatJson(@)", dynlib: tkernel.}
proc SplitJson*(theStreamStr: TCollection_AsciiString; theKeyToValues: var NCollection_IndexedDataMap[
    TCollection_AsciiString, Standard_DumpValue]): Standard_Boolean {.cdecl,
    importcpp: "Standard_Dump::SplitJson(@)", dynlib: tkernel.}
proc HierarchicalValueIndices*(theValues: NCollection_IndexedDataMap[
    TCollection_AsciiString, TCollection_AsciiString]): NCollection_List[cint] {.
    cdecl, importcpp: "Standard_Dump::HierarchicalValueIndices(@)", dynlib: tkernel.}
proc HasChildKey*(theSourceValue: TCollection_AsciiString): Standard_Boolean {.
    cdecl, importcpp: "Standard_Dump::HasChildKey(@)", dynlib: tkernel.}
proc JsonKeyToString*(theKey: Standard_JsonKey): Standard_CString {.cdecl,
    importcpp: "Standard_Dump::JsonKeyToString(@)", dynlib: tkernel.}
proc JsonKeyLength*(theKey: Standard_JsonKey): cint {.cdecl,
    importcpp: "Standard_Dump::JsonKeyLength(@)", dynlib: tkernel.}
proc AddValuesSeparator*(theOStream: var Standard_OStream) {.cdecl,
    importcpp: "Standard_Dump::AddValuesSeparator(@)", dynlib: tkernel.}
proc GetPointerPrefix*(): TCollection_AsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerPrefix(@)", dynlib: tkernel.}
proc GetPointerInfo*(thePointer: handle[Standard_Transient];
                    isShortInfo: bool = true): TCollection_AsciiString {.cdecl,
    importcpp: "Standard_Dump::GetPointerInfo(@)", dynlib: tkernel.}
proc GetPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollection_AsciiString {.
    cdecl, importcpp: "Standard_Dump::GetPointerInfo(@)", dynlib: tkernel.}
proc DumpKeyToClass*(theOStream: var Standard_OStream;
                    theKey: TCollection_AsciiString;
                    theField: TCollection_AsciiString) {.cdecl,
    importcpp: "Standard_Dump::DumpKeyToClass(@)", dynlib: tkernel.}
proc DumpCharacterValues*(theOStream: var Standard_OStream; theCount: cint) {.varargs,
    cdecl, importcpp: "Standard_Dump::DumpCharacterValues(@)", dynlib: tkernel.}
proc DumpRealValues*(theOStream: var Standard_OStream; theCount: cint) {.varargs,
    cdecl, importcpp: "Standard_Dump::DumpRealValues(@)", dynlib: tkernel.}
proc ProcessStreamName*(theStreamStr: TCollection_AsciiString;
                       theName: TCollection_AsciiString; theStreamPos: var cint): Standard_Boolean {.
    cdecl, importcpp: "Standard_Dump::ProcessStreamName(@)", dynlib: tkernel.}
proc ProcessFieldName*(theStreamStr: TCollection_AsciiString;
                      theName: TCollection_AsciiString; theStreamPos: var cint): Standard_Boolean {.
    cdecl, importcpp: "Standard_Dump::ProcessFieldName(@)", dynlib: tkernel.}
proc InitRealValues*(theStreamStr: TCollection_AsciiString; theStreamPos: var cint;
                    theCount: cint): Standard_Boolean {.varargs, cdecl,
    importcpp: "Standard_Dump::InitRealValues(@)", dynlib: tkernel.}
proc InitValue*(theStreamStr: TCollection_AsciiString; theStreamPos: var cint;
               theValue: var TCollection_AsciiString): Standard_Boolean {.cdecl,
    importcpp: "Standard_Dump::InitValue(@)", dynlib: tkernel.}
proc DumpFieldToName*(theField: TCollection_AsciiString): TCollection_AsciiString {.
    cdecl, importcpp: "Standard_Dump::DumpFieldToName(@)", dynlib: tkernel.}