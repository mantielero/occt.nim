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

## !!!Ignored construct:  # _Standard_Dump_HeaderFile [NewLine] # _Standard_Dump_HeaderFile [NewLine] # < NCollection_IndexedDataMap . hxx > [NewLine] # < NCollection_List . hxx > [NewLine] # < Standard_SStream . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] !@file
## ! The file contains interface to prepare dump output for OCCT objects. Format of the dump is JSON.
## !
## ! To prepare this output, implement method DumpJson in the object and use macro functions from this file.
## ! Macros have one parameter for both, key and the value. It is a field of the current class. Macro has internal analyzer that
## ! uses the variable name to generate key. If the parameter has prefix symbols "&", "*" and "my", it is cut.
## !
## ! - OCCT_DUMP_FIELD_VALUE_NUMERICAL. Use it for fields of numerical C++ types, like int, float, double. It creates a pair "key", "value",
## ! - OCCT_DUMP_FIELD_VALUE_STRING. Use it for char* type. It creates a pair "key", "value",
## ! - OCCT_DUMP_FIELD_VALUE_POINTER. Use it for pointer fields. It creates a pair "key", "value", where the value is the pointer address,
## ! - OCCT_DUMP_FIELD_VALUES_DUMPED. Use it for fields that has own Dump implementation. It expects the pointer to the class instance.
## !     It creates "key": { result of dump of the field }
## ! - OCCT_DUMP_FIELD_VALUES_NUMERICAL. Use it for unlimited list of fields of C++ double type.
## !     It creates massive of values [value_1, value_2, ...]
## ! - OCCT_DUMP_FIELD_VALUES_STRING. Use it for unlimited list of fields of TCollection_AsciiString types.
## !     It creates massive of values ["value_1", "value_2", ...]
## ! - OCCT_DUMP_BASE_CLASS. Use if Dump implementation of the class is virtual, to perform ClassName::Dump() of the parent class,
## !     expected parameter is the parent class name.
## !     It creates "key": { result of dump of the field }
## ! - OCCT_DUMP_VECTOR_CLASS. Use it as a single row in some object dump to have one row in output.
## !     It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call.
## !     It creates massive of values [value_1, value_2, ...]
## !
## ! The Dump result prepared by these macros is an output stream, it is not arranged with spaces and line feed.
## ! To have output in a more readable way, use ConvertToAlignedString method for obtained stream. ! Converts the class type into a string value # OCCT_CLASS_NAME ( theClass ) # [NewLine] ! @def OCCT_DUMP_CLASS_BEGIN
## ! Creates an instance of Sentry to cover the current Dump implementation with keys of start and end.
## ! This row should be inserted before other macros. The end key will be added by the sentry remove,
## ! (exit of the method). # OCCT_DUMP_CLASS_BEGIN ( theOStream , theField ) { const char * className = OCCT_CLASS_NAME ( theField ) ; OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , className ) } [NewLine] ! @def OCCT_DUMP_TRANSIENT_CLASS_BEGIN
## ! Creates an instance of Sentry to cover the current Dump implementation with keys of start and end.
## ! This row should be inserted before other macros. The end key will be added by the sentry remove,
## ! (exit of the method). # OCCT_DUMP_TRANSIENT_CLASS_BEGIN ( theOStream ) { const char * className = get_type_name ( ) ; OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , className ) } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_NUMERICAL
## ! Append into output value: "Name": Field # OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ":  << theField ; } [NewLine] ! @def OCCT_INIT_FIELD_VALUE_REAL
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_FIELD_VALUE_REAL ( theOStream , theStreamPos , theField ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessFieldName ( theOStream , # , aStreamPos ) ) return Standard_False ; TCollection_AsciiString aValueText ; if ( ! Standard_Dump :: InitValue ( theOStream , aStreamPos , aValueText ) || ! aValueText . IsRealValue ( ) ) return Standard_False ; theField = aValueText . RealValue ( ) ; theStreamPos = aStreamPos ; } [NewLine] ! @def OCCT_INIT_FIELD_VALUE_NUMERICAL
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_FIELD_VALUE_INTEGER ( theOStream , theStreamPos , theField ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessFieldName ( theOStream , # , aStreamPos ) ) return Standard_False ; TCollection_AsciiString aValueText ; if ( ! Standard_Dump :: InitValue ( theOStream , aStreamPos , aValueText ) || ! aValueText . IsIntegerValue ( ) ) return Standard_False ; theField = aValueText . IntegerValue ( ) ; theStreamPos = aStreamPos ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_STRING
## ! Append into output value: "Name": "Field" # OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ": " << theField << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_POINTER
## ! Append into output value: "Name": "address of the pointer" # OCCT_DUMP_FIELD_VALUE_POINTER ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ": " << Standard_Dump :: GetPointerInfo ( theField ) << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_STRING
## ! Append into output value: "Name": "Field" # OCCT_DUMP_FIELD_VALUE_GUID ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; char aStr [ Standard_GUID_SIZE_ALLOC ] ; theField . ToCString ( aStr ) ; theOStream << " << aName << ": " << aStr << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_DUMPED
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the fields. The expected field is a pointer.
## ! Use this macro for fields of the dumped class which has own Dump implementation.
## ! The macros is recursive. Recursion is stopped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , theField ) { if ( theDepth != 0 && ( void * ) ( theField ) != NULL ) { Standard_SStream aFieldStream ; ( theField ) -> DumpJson ( aFieldStream , theDepth - 1 ) ; TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: DumpKeyToClass ( theOStream , aName , Standard_Dump :: Text ( aFieldStream ) ) ; } } [NewLine] ! @def OCCT_INIT_FIELD_VALUES_DUMPED
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the fields. The expected field is a pointer.
## ! Use this macro for fields of the dumped class which has own Dump implementation.
## ! The macros is recursive. Recursion is stopped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_INIT_FIELD_VALUES_DUMPED ( theSStream , theStreamPos , theField ) { if ( ( theField ) == NULL || ! ( theField ) -> InitFromJson ( theSStream , theStreamPos ) ) return Standard_False ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_NUMERICAL
## ! Append real values into output values in an order: [value_1, value_2, ...]
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump. # OCCT_DUMP_FIELD_VALUES_NUMERICAL ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpRealValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_STRING
## ! Append real values into output values in an order: ["value_1", "value_2", ...]
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump. # OCCT_DUMP_FIELD_VALUES_STRING ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpCharacterValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_DUMP_BASE_CLASS
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump.
## ! Use this macro for parent of the current class.
## ! The macros is recursive. Recursive is stoped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_DUMP_BASE_CLASS ( theOStream , theDepth , theField ) { if ( theDepth != 0 ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theField :: DumpJson ( theOStream , theDepth - 1 ) ; } } [NewLine] ! @def OCCT_DUMP_VECTOR_CLASS
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_DUMP_VECTOR_CLASS ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpRealValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_INIT_VECTOR_CLASS
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_VECTOR_CLASS ( theOStream , theName , theStreamPos , theCount , ... ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessStreamName ( theOStream , theName , aStreamPos ) ) return Standard_False ; if ( ! Standard_Dump :: InitRealValues ( theOStream , aStreamPos , theCount , __VA_ARGS__ ) ) return Standard_False ; theStreamPos = aStreamPos ; } [NewLine] ! Kind of key in Json string enum Standard_JsonKey { Standard_JsonKey_None , !< no key Standard_JsonKey_OpenChild , !< "{" Standard_JsonKey_CloseChild , !< "}" Standard_JsonKey_OpenContainer , !< "[" Standard_JsonKey_CloseContainer , !< "]" Standard_JsonKey_Quote , !< "\"" Standard_JsonKey_SeparatorKeyToValue , !< ": " Standard_JsonKey_SeparatorValueToValue !< ", " } ;
## Error: did not expect #!!!

## ! Type for storing a dump value with the stream position

type
  StandardDumpValue* {.importcpp: "Standard_DumpValue",
                      header: "Standard_Dump.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: TCollectionAsciiString ## !< current string value
    myStartPosition* {.importc: "myStartPosition".}: int ## !< position of the value first char in the whole stream


proc constructStandardDumpValue*(): StandardDumpValue {.constructor,
    importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
proc constructStandardDumpValue*(theValue: TCollectionAsciiString; theStartPos: int): StandardDumpValue {.
    constructor, importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
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


proc text*(theStream: StandardSStream): TCollectionAsciiString {.
    importcpp: "Standard_Dump::Text(@)", header: "Standard_Dump.hxx".}
proc formatJson*(theStream: StandardSStream; theIndent: int = 3): TCollectionAsciiString {.
    importcpp: "Standard_Dump::FormatJson(@)", header: "Standard_Dump.hxx".}
proc splitJson*(theStreamStr: TCollectionAsciiString; theKeyToValues: var NCollectionIndexedDataMap[
    TCollectionAsciiString, StandardDumpValue]): bool {.
    importcpp: "Standard_Dump::SplitJson(@)", header: "Standard_Dump.hxx".}
proc hierarchicalValueIndices*(theValues: NCollectionIndexedDataMap[
    TCollectionAsciiString, TCollectionAsciiString]): NCollectionList[int] {.
    importcpp: "Standard_Dump::HierarchicalValueIndices(@)",
    header: "Standard_Dump.hxx".}
proc hasChildKey*(theSourceValue: TCollectionAsciiString): bool {.
    importcpp: "Standard_Dump::HasChildKey(@)", header: "Standard_Dump.hxx".}
proc jsonKeyToString*(theKey: StandardJsonKey): StandardCString {.
    importcpp: "Standard_Dump::JsonKeyToString(@)", header: "Standard_Dump.hxx".}
proc jsonKeyLength*(theKey: StandardJsonKey): int {.
    importcpp: "Standard_Dump::JsonKeyLength(@)", header: "Standard_Dump.hxx".}
proc addValuesSeparator*(theOStream: var StandardOStream) {.
    importcpp: "Standard_Dump::AddValuesSeparator(@)", header: "Standard_Dump.hxx".}
proc getPointerPrefix*(): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerPrefix(@)", header: "Standard_Dump.hxx".}
proc getPointerInfo*(thePointer: Handle[StandardTransient];
                    isShortInfo: bool = true): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc getPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollectionAsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc dumpKeyToClass*(theOStream: var StandardOStream;
                    theKey: TCollectionAsciiString;
                    theField: TCollectionAsciiString) {.
    importcpp: "Standard_Dump::DumpKeyToClass(@)", header: "Standard_Dump.hxx".}
proc dumpCharacterValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpCharacterValues(@)",
    header: "Standard_Dump.hxx".}
proc dumpRealValues*(theOStream: var StandardOStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpRealValues(@)", header: "Standard_Dump.hxx".}
proc processStreamName*(theStreamStr: TCollectionAsciiString;
                       theName: TCollectionAsciiString; theStreamPos: var int): bool {.
    importcpp: "Standard_Dump::ProcessStreamName(@)", header: "Standard_Dump.hxx".}
proc processFieldName*(theStreamStr: TCollectionAsciiString;
                      theName: TCollectionAsciiString; theStreamPos: var int): bool {.
    importcpp: "Standard_Dump::ProcessFieldName(@)", header: "Standard_Dump.hxx".}
proc initRealValues*(theStreamStr: TCollectionAsciiString; theStreamPos: var int;
                    theCount: cint): bool {.varargs,
    importcpp: "Standard_Dump::InitRealValues(@)", header: "Standard_Dump.hxx".}
proc initValue*(theStreamStr: TCollectionAsciiString; theStreamPos: var int;
               theValue: var TCollectionAsciiString): bool {.
    importcpp: "Standard_Dump::InitValue(@)", header: "Standard_Dump.hxx".}
proc dumpFieldToName*(theField: TCollectionAsciiString): TCollectionAsciiString {.
    importcpp: "Standard_Dump::DumpFieldToName(@)", header: "Standard_Dump.hxx".}














































