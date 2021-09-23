# /usr/include/opencascade/Standard_Dump.hxx --> occt/standard/Standard_Dump.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddump = "/usr/include/opencascade/Standard_Dump.hxx"
type
  StandardJsonKey* {.size: sizeof(cint), importcpp: "Standard_JsonKey",
                    header: headerStandarddump.} = enum
    StandardJsonKeyNone, StandardJsonKeyOpenChild, StandardJsonKeyCloseChild,
    StandardJsonKeyOpenContainer, StandardJsonKeyCloseContainer,
    StandardJsonKeyQuote, StandardJsonKeySeparatorKeyToValue,
    StandardJsonKeySeparatorValueToValue


type
  StandardDumpValue* {.importcpp: "Standard_DumpValue", header: headerStandarddump,
                      bycopy.} = object
    myValue* {.importc: "myValue".}: TCollectionAsciiString
    myStartPosition* {.importc: "myStartPosition".}: StandardInteger


proc constructStandardDumpValue*(): StandardDumpValue {.constructor,
    importcpp: "Standard_DumpValue(@)", header: headerStandarddump.}
proc constructStandardDumpValue*(theValue: TCollectionAsciiString;
                                theStartPos: StandardInteger): StandardDumpValue {.
    constructor, importcpp: "Standard_DumpValue(@)", header: headerStandarddump.}
type
  StandardDump* {.importcpp: "Standard_Dump", header: headerStandarddump, bycopy.} = object


proc text*(theStream: StandardSStream): TCollectionAsciiString {.
    importcpp: "Standard_Dump::Text(@)", header: headerStandarddump.}
proc formatJson*(theStream: StandardSStream; theIndent: StandardInteger = 3): TCollectionAsciiString {.
    importcpp: "Standard_Dump::FormatJson(@)", header: headerStandarddump.}
proc splitJson*(theStreamStr: TCollectionAsciiString; theKeyToValues: var NCollectionIndexedDataMap[
    TCollectionAsciiString, StandardDumpValue]): StandardBoolean {.
    importcpp: "Standard_Dump::SplitJson(@)", header: headerStandarddump.}
proc hierarchicalValueIndices*(theValues: NCollectionIndexedDataMap[
    TCollectionAsciiString, TCollectionAsciiString]): NCollectionList[
    StandardInteger] {.importcpp: "Standard_Dump::HierarchicalValueIndices(@)",
                      header: headerStandarddump.}
proc hasChildKey*(theSourceValue: TCollectionAsciiString): StandardBoolean {.
    importcpp: "Standard_Dump::HasChildKey(@)", header: headerStandarddump.}
proc jsonKeyToString*(theKey: StandardJsonKey): StandardCString {.
    importcpp: "Standard_Dump::JsonKeyToString(@)", header: headerStandarddump.}
proc jsonKeyLength*(theKey: StandardJsonKey): StandardInteger {.
    importcpp: "Standard_Dump::JsonKeyLength(@)", header: headerStandarddump.}
proc addValuesSeparator*(theOStream: var StandardOStream) {.
    importcpp: "Standard_Dump::AddValuesSeparator(@)", header: headerStandarddump.}
proc getPointerPrefix*(): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerPrefix(@)", header: headerStandarddump.}
proc getPointerInfo*(thePointer: Handle[StandardTransient];
                    isShortInfo: bool = true): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: headerStandarddump.}
proc getPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: headerStandarddump.}
proc dumpKeyToClass*(theOStream: var StandardOStream;
                    theKey: TCollectionAsciiString;
                    theField: TCollectionAsciiString) {.
    importcpp: "Standard_Dump::DumpKeyToClass(@)", header: headerStandarddump.}
proc dumpCharacterValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpCharacterValues(@)", header: headerStandarddump.}
proc dumpRealValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpRealValues(@)", header: headerStandarddump.}
proc processStreamName*(theStreamStr: TCollectionAsciiString;
                       theName: TCollectionAsciiString;
                       theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "Standard_Dump::ProcessStreamName(@)", header: headerStandarddump.}
proc processFieldName*(theStreamStr: TCollectionAsciiString;
                      theName: TCollectionAsciiString;
                      theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "Standard_Dump::ProcessFieldName(@)", header: headerStandarddump.}
proc initRealValues*(theStreamStr: TCollectionAsciiString;
                    theStreamPos: var StandardInteger; theCount: cint): StandardBoolean {.
    varargs, importcpp: "Standard_Dump::InitRealValues(@)",
    header: headerStandarddump.}
proc initValue*(theStreamStr: TCollectionAsciiString;
               theStreamPos: var StandardInteger;
               theValue: var TCollectionAsciiString): StandardBoolean {.
    importcpp: "Standard_Dump::InitValue(@)", header: headerStandarddump.}
proc dumpFieldToName*(theField: TCollectionAsciiString): TCollectionAsciiString {.
    importcpp: "Standard_Dump::DumpFieldToName(@)", header: headerStandarddump.}