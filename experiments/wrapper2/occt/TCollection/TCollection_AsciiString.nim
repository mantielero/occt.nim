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
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  TCollectionAsciiString* {.importcpp: "TCollection_AsciiString",
                           header: "TCollection_AsciiString.hxx", bycopy.} = object ## !
                                                                               ## Initializes a
                                                                               ## AsciiString
                                                                               ## to
                                                                               ## an
                                                                               ## empty
                                                                               ## AsciiString.
    ## !< NULL-terminated string
    ## !< length in bytes (excluding terminating NULL symbol)


proc constructTCollectionAsciiString*(): TCollectionAsciiString {.constructor,
    importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(message: StandardCString): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(message: StandardCString; aLen: int): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(aChar: StandardCharacter): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(length: int; filler: StandardCharacter): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(value: int): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(value: float): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(astring: TCollectionAsciiString): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor TCollection_AsciiString ( TCollection_AsciiString && theOther ) : mystring ( theOther . mystring ) , mylength ( theOther . mylength ) { theOther . mystring = NULL ; theOther . mylength = 0 ; } # [NewLine] ! Initializes a AsciiString with copy of another AsciiString
## ! concatenated with the message character. TCollection_AsciiString ( const TCollection_AsciiString & astring , const Standard_Character message ) ;
## Error: identifier expected, but got: ! Move constructor!!!

proc constructTCollectionAsciiString*(astring: TCollectionAsciiString;
                                     message: StandardCString): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(astring: TCollectionAsciiString;
                                     message: TCollectionAsciiString): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollectionAsciiString*(astring: TCollectionExtendedString;
                                     replaceNonAscii: StandardCharacter = 0): TCollectionAsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # ! defined ( _MSC_VER ) || defined ( _NATIVE_WCHAR_T_DEFINED ) [NewLine] ! Initialize UTF-8 Unicode string from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option. TCollection_AsciiString ( const Standard_WideChar * theStringUtf ) ;
## Error: identifier expected, but got: ! Initialize UTF-8 Unicode string from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option.!!!

proc assignCat*(this: var TCollectionAsciiString; other: StandardCharacter) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: StandardCharacter) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: int) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: int) {.importcpp: "(# += #)",
    header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: float) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: float) {.importcpp: "(# += #)",
    header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: StandardCString) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: StandardCString) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc capitalize*(this: var TCollectionAsciiString) {.importcpp: "Capitalize",
    header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: StandardCharacter): TCollectionAsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: StandardCharacter): TCollectionAsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: float): TCollectionAsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: float): TCollectionAsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: StandardCString): TCollectionAsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: StandardCString): TCollectionAsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc center*(this: var TCollectionAsciiString; width: int; filler: StandardCharacter) {.
    importcpp: "Center", header: "TCollection_AsciiString.hxx".}
proc changeAll*(this: var TCollectionAsciiString; aChar: StandardCharacter;
               newChar: StandardCharacter; caseSensitive: bool = true) {.
    importcpp: "ChangeAll", header: "TCollection_AsciiString.hxx".}
proc clear*(this: var TCollectionAsciiString) {.importcpp: "Clear",
    header: "TCollection_AsciiString.hxx".}
proc copy*(this: var TCollectionAsciiString; fromwhere: StandardCString) {.
    importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc copy*(this: var TCollectionAsciiString; fromwhere: TCollectionAsciiString) {.
    importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc swap*(this: var TCollectionAsciiString; theOther: var TCollectionAsciiString) {.
    importcpp: "Swap", header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move assignment operator TCollection_AsciiString & operator = ( TCollection_AsciiString && theOther ) { Swap ( theOther ) ; return * this ; } # [NewLine] ! Frees memory allocated by AsciiString. ~ TCollection_AsciiString ( ) ;
## Error: identifier expected, but got: ! Move assignment operator!!!

proc firstLocationInSet*(this: TCollectionAsciiString; set: TCollectionAsciiString;
                        fromIndex: int; toIndex: int): int {.noSideEffect,
    importcpp: "FirstLocationInSet", header: "TCollection_AsciiString.hxx".}
proc firstLocationNotInSet*(this: TCollectionAsciiString;
                           set: TCollectionAsciiString; fromIndex: int; toIndex: int): int {.
    noSideEffect, importcpp: "FirstLocationNotInSet",
    header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: int; what: StandardCharacter) {.
    importcpp: "Insert", header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: int; what: StandardCString) {.
    importcpp: "Insert", header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: int;
            what: TCollectionAsciiString) {.importcpp: "Insert",
    header: "TCollection_AsciiString.hxx".}
proc insertAfter*(this: var TCollectionAsciiString; index: int;
                 other: TCollectionAsciiString) {.importcpp: "InsertAfter",
    header: "TCollection_AsciiString.hxx".}
proc insertBefore*(this: var TCollectionAsciiString; index: int;
                  other: TCollectionAsciiString) {.importcpp: "InsertBefore",
    header: "TCollection_AsciiString.hxx".}
proc isEmpty*(this: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_AsciiString.hxx".}
proc isEqual*(this: TCollectionAsciiString; other: StandardCString): bool {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollectionAsciiString; other: StandardCString): bool {.noSideEffect,
    importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc isEqual*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc isDifferent*(this: TCollectionAsciiString; other: StandardCString): bool {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc isDifferent*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc isLess*(this: TCollectionAsciiString; other: StandardCString): bool {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollectionAsciiString; other: StandardCString): bool {.noSideEffect,
    importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc isLess*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc isGreater*(this: TCollectionAsciiString; other: StandardCString): bool {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc isGreater*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc startsWith*(this: TCollectionAsciiString;
                theStartString: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "StartsWith", header: "TCollection_AsciiString.hxx".}
proc endsWith*(this: TCollectionAsciiString; theEndString: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "EndsWith", header: "TCollection_AsciiString.hxx".}
proc integerValue*(this: TCollectionAsciiString): int {.noSideEffect,
    importcpp: "IntegerValue", header: "TCollection_AsciiString.hxx".}
proc isIntegerValue*(this: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsIntegerValue", header: "TCollection_AsciiString.hxx".}
proc isRealValue*(this: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsRealValue", header: "TCollection_AsciiString.hxx".}
proc isAscii*(this: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_AsciiString.hxx".}
proc leftAdjust*(this: var TCollectionAsciiString) {.importcpp: "LeftAdjust",
    header: "TCollection_AsciiString.hxx".}
proc leftJustify*(this: var TCollectionAsciiString; width: int;
                 filler: StandardCharacter) {.importcpp: "LeftJustify",
    header: "TCollection_AsciiString.hxx".}
proc length*(this: TCollectionAsciiString): int {.noSideEffect, importcpp: "Length",
    header: "TCollection_AsciiString.hxx".}
proc location*(this: TCollectionAsciiString; other: TCollectionAsciiString;
              fromIndex: int; toIndex: int): int {.noSideEffect,
    importcpp: "Location", header: "TCollection_AsciiString.hxx".}
proc location*(this: TCollectionAsciiString; n: int; c: StandardCharacter;
              fromIndex: int; toIndex: int): int {.noSideEffect,
    importcpp: "Location", header: "TCollection_AsciiString.hxx".}
proc lowerCase*(this: var TCollectionAsciiString) {.importcpp: "LowerCase",
    header: "TCollection_AsciiString.hxx".}
proc prepend*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    importcpp: "Prepend", header: "TCollection_AsciiString.hxx".}
proc print*(this: TCollectionAsciiString; astream: var StandardOStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_AsciiString.hxx".}
proc read*(this: var TCollectionAsciiString; astream: var StandardIStream) {.
    importcpp: "Read", header: "TCollection_AsciiString.hxx".}
proc realValue*(this: TCollectionAsciiString): float {.noSideEffect,
    importcpp: "RealValue", header: "TCollection_AsciiString.hxx".}
proc removeAll*(this: var TCollectionAsciiString; c: StandardCharacter;
               caseSensitive: bool) {.importcpp: "RemoveAll",
                                    header: "TCollection_AsciiString.hxx".}
proc removeAll*(this: var TCollectionAsciiString; what: StandardCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_AsciiString.hxx".}
proc remove*(this: var TCollectionAsciiString; where: int; ahowmany: int = 1) {.
    importcpp: "Remove", header: "TCollection_AsciiString.hxx".}
proc rightAdjust*(this: var TCollectionAsciiString) {.importcpp: "RightAdjust",
    header: "TCollection_AsciiString.hxx".}
proc rightJustify*(this: var TCollectionAsciiString; width: int;
                  filler: StandardCharacter) {.importcpp: "RightJustify",
    header: "TCollection_AsciiString.hxx".}
proc search*(this: TCollectionAsciiString; what: StandardCString): int {.noSideEffect,
    importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc search*(this: TCollectionAsciiString; what: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc searchFromEnd*(this: TCollectionAsciiString; what: StandardCString): int {.
    noSideEffect, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc searchFromEnd*(this: TCollectionAsciiString; what: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: int; what: StandardCharacter) {.
    importcpp: "SetValue", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: int; what: StandardCString) {.
    importcpp: "SetValue", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: int;
              what: TCollectionAsciiString) {.importcpp: "SetValue",
    header: "TCollection_AsciiString.hxx".}
proc split*(this: var TCollectionAsciiString; where: int): TCollectionAsciiString {.
    importcpp: "Split", header: "TCollection_AsciiString.hxx".}
proc subString*(this: TCollectionAsciiString; fromIndex: int; toIndex: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "SubString", header: "TCollection_AsciiString.hxx".}
proc toCString*(this: TCollectionAsciiString): StandardCString {.noSideEffect,
    importcpp: "ToCString", header: "TCollection_AsciiString.hxx".}
proc token*(this: TCollectionAsciiString; separators: StandardCString = " \t";
           whichone: int = 1): TCollectionAsciiString {.noSideEffect,
    importcpp: "Token", header: "TCollection_AsciiString.hxx".}
proc trunc*(this: var TCollectionAsciiString; ahowmany: int) {.importcpp: "Trunc",
    header: "TCollection_AsciiString.hxx".}
proc upperCase*(this: var TCollectionAsciiString) {.importcpp: "UpperCase",
    header: "TCollection_AsciiString.hxx".}
proc usefullLength*(this: TCollectionAsciiString): int {.noSideEffect,
    importcpp: "UsefullLength", header: "TCollection_AsciiString.hxx".}
proc value*(this: TCollectionAsciiString; where: int): StandardCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_AsciiString.hxx".}
proc hashCode*(theAsciiString: TCollectionAsciiString; theUpperBound: int): int {.
    importcpp: "TCollection_AsciiString::HashCode(@)",
    header: "TCollection_AsciiString.hxx".}
proc isEqual*(string1: TCollectionAsciiString; string2: TCollectionAsciiString): bool {.
    importcpp: "TCollection_AsciiString::IsEqual(@)",
    header: "TCollection_AsciiString.hxx".}
proc isEqual*(string1: TCollectionAsciiString; string2: StandardCString): bool {.
    importcpp: "TCollection_AsciiString::IsEqual(@)",
    header: "TCollection_AsciiString.hxx".}
proc isSameString*(theString1: TCollectionAsciiString;
                  theString2: TCollectionAsciiString; theIsCaseSensitive: bool): bool {.
    importcpp: "TCollection_AsciiString::IsSameString(@)",
    header: "TCollection_AsciiString.hxx".}
