##  Created on: 1993-02-22
##  Created by: Mireille MERCIEN
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of TCollection_AsciiString"
type
  TCollectionExtendedString* {.importcpp: "TCollection_ExtendedString",
                              header: "TCollection_ExtendedString.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## a
                                                                                     ## ExtendedString
                                                                                     ## to
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## ExtendedString.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## true
                                                                                     ## if
                                                                                     ## the
                                                                                     ## input
                                                                                     ## CString
                                                                                     ## was
                                                                                     ## successfuly
                                                                                     ## converted
                                                                                     ##
                                                                                     ## !
                                                                                     ## to
                                                                                     ## UTF8
                                                                                     ## coding
    ## !< NULL-terminated string
    ## !< length in 16-bit code units (excluding terminating NULL symbol)


proc constructTCollectionExtendedString*(): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(astring: StandardCString;
                                        isMultiByte: bool = false): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(astring: StandardExtString): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # ! defined ( _MSC_VER ) || defined ( _NATIVE_WCHAR_T_DEFINED ) [NewLine] ! Initialize from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option. TCollection_ExtendedString ( const Standard_WideChar * theStringUtf ) ;
## Error: identifier expected, but got: ! Initialize from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option.!!!

proc constructTCollectionExtendedString*(aChar: StandardCharacter): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(aChar: StandardExtCharacter): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(length: int; filler: StandardExtCharacter): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(value: int): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(value: float): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollectionExtendedString*(astring: TCollectionExtendedString): TCollectionExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor TCollection_ExtendedString ( TCollection_ExtendedString && theOther ) : mystring ( theOther . mystring ) , mylength ( theOther . mylength ) { theOther . mystring = NULL ; theOther . mylength = 0 ; } # [NewLine] ! Creation by converting an Ascii string to an extended
## ! string. The string is treated as having UTF-8 coding.
## ! If it is not a UTF-8 or multi byte then
## ! each character is copied to ExtCharacter. TCollection_ExtendedString ( const TCollection_AsciiString & astring , const Standard_Boolean isMultiByte = Standard_True ) ;
## Error: identifier expected, but got: ! Move constructor!!!

proc assignCat*(this: var TCollectionExtendedString;
               other: TCollectionExtendedString) {.importcpp: "AssignCat",
    header: "TCollection_ExtendedString.hxx".}
proc `+=`*(this: var TCollectionExtendedString; other: TCollectionExtendedString) {.
    importcpp: "(# += #)", header: "TCollection_ExtendedString.hxx".}
proc assignCat*(this: var TCollectionExtendedString; theChar: StandardUtf16Char) {.
    importcpp: "AssignCat", header: "TCollection_ExtendedString.hxx".}
proc cat*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_ExtendedString.hxx".}
proc `+`*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_ExtendedString.hxx".}
proc changeAll*(this: var TCollectionExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.importcpp: "ChangeAll",
    header: "TCollection_ExtendedString.hxx".}
proc clear*(this: var TCollectionExtendedString) {.importcpp: "Clear",
    header: "TCollection_ExtendedString.hxx".}
proc copy*(this: var TCollectionExtendedString; fromwhere: TCollectionExtendedString) {.
    importcpp: "Copy", header: "TCollection_ExtendedString.hxx".}
proc swap*(this: var TCollectionExtendedString;
          theOther: var TCollectionExtendedString) {.importcpp: "Swap",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move assignment operator TCollection_ExtendedString & operator = ( TCollection_ExtendedString && theOther ) { Swap ( theOther ) ; return * this ; } # [NewLine] ! Frees memory allocated by ExtendedString. ~ TCollection_ExtendedString ( ) ;
## Error: identifier expected, but got: ! Move assignment operator!!!

proc insert*(this: var TCollectionExtendedString; where: int;
            what: StandardExtCharacter) {.importcpp: "Insert", header: "TCollection_ExtendedString.hxx".}
proc insert*(this: var TCollectionExtendedString; where: int;
            what: TCollectionExtendedString) {.importcpp: "Insert",
    header: "TCollection_ExtendedString.hxx".}
proc isEmpty*(this: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_ExtendedString.hxx".}
proc isEqual*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc isEqual*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc isDifferent*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "IsDifferent",
    header: "TCollection_ExtendedString.hxx".}
proc isDifferent*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "IsDifferent",
    header: "TCollection_ExtendedString.hxx".}
proc isLess*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc isLess*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc isGreater*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc isGreater*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc startsWith*(this: TCollectionExtendedString;
                theStartString: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "StartsWith", header: "TCollection_ExtendedString.hxx".}
proc endsWith*(this: TCollectionExtendedString;
              theEndString: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "EndsWith", header: "TCollection_ExtendedString.hxx".}
proc isAscii*(this: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_ExtendedString.hxx".}
proc length*(this: TCollectionExtendedString): int {.noSideEffect,
    importcpp: "Length", header: "TCollection_ExtendedString.hxx".}
proc print*(this: TCollectionExtendedString; astream: var StandardOStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_ExtendedString.hxx".}
proc removeAll*(this: var TCollectionExtendedString; what: StandardExtCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_ExtendedString.hxx".}
proc remove*(this: var TCollectionExtendedString; where: int; ahowmany: int = 1) {.
    importcpp: "Remove", header: "TCollection_ExtendedString.hxx".}
proc search*(this: TCollectionExtendedString; what: TCollectionExtendedString): int {.
    noSideEffect, importcpp: "Search", header: "TCollection_ExtendedString.hxx".}
proc searchFromEnd*(this: TCollectionExtendedString;
                   what: TCollectionExtendedString): int {.noSideEffect,
    importcpp: "SearchFromEnd", header: "TCollection_ExtendedString.hxx".}
proc setValue*(this: var TCollectionExtendedString; where: int;
              what: StandardExtCharacter) {.importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc setValue*(this: var TCollectionExtendedString; where: int;
              what: TCollectionExtendedString) {.importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc split*(this: var TCollectionExtendedString; where: int): TCollectionExtendedString {.
    importcpp: "Split", header: "TCollection_ExtendedString.hxx".}
proc token*(this: TCollectionExtendedString; separators: StandardExtString;
           whichone: int = 1): TCollectionExtendedString {.noSideEffect,
    importcpp: "Token", header: "TCollection_ExtendedString.hxx".}
proc toExtString*(this: TCollectionExtendedString): StandardExtString {.
    noSideEffect, importcpp: "ToExtString",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # _WIN32 [NewLine] ! Returns pointer to string as wchar_t* on Windows platform where wchar_t* is considered as UTF-16 string.
## ! This method is useful to pass string into wide-char system APIs,
## ! and makes sense only on Windows (other systems use UTF-8 and can miss wide-char functions at all). const Standard_WideChar * ToWideString ( ) const { return ( const Standard_WideChar * ) ToExtString ( ) ; } # [NewLine] ! Truncates <me> to <ahowmany> characters.
## ! Example:  me = "Hello Dolly" -> Trunc(3) -> me = "Hel"
## ! Exceptions
## ! Standard_OutOfRange if ahowmany is greater
## ! than the length of this string. void Trunc ( const Standard_Integer ahowmany ) ;
## Error: identifier expected, but got: ! Returns pointer to string as wchar_t* on Windows platform where wchar_t* is considered as UTF-16 string.
## ! This method is useful to pass string into wide-char system APIs,
## ! and makes sense only on Windows (other systems use UTF-8 and can miss wide-char functions at all).!!!

proc value*(this: TCollectionExtendedString; where: int): StandardExtCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_ExtendedString.hxx".}
proc hashCode*(theString: TCollectionExtendedString; theUpperBound: int): int {.
    importcpp: "TCollection_ExtendedString::HashCode(@)",
    header: "TCollection_ExtendedString.hxx".}
proc isEqual*(theString1: TCollectionExtendedString;
             theString2: TCollectionExtendedString): bool {.
    importcpp: "TCollection_ExtendedString::IsEqual(@)",
    header: "TCollection_ExtendedString.hxx".}
proc toUTF8CString*(this: TCollectionExtendedString;
                   theCString: var StandardPCharacter): int {.noSideEffect,
    importcpp: "ToUTF8CString", header: "TCollection_ExtendedString.hxx".}
proc lengthOfCString*(this: TCollectionExtendedString): int {.noSideEffect,
    importcpp: "LengthOfCString", header: "TCollection_ExtendedString.hxx".}
## ! Computes a hash code for the given extended string, in the range [1, theUpperBound]
## ! @param theExtendedString the extended string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theExtendedString: TCollectionExtendedString; theUpperBound: int): int =
  discard

