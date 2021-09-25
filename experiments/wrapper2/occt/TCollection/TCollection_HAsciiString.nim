##  Created on: 1992-12-15
##  Created by: Mireille MERCIEN
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HAsciiString"
type
  HandleTCollectionHAsciiString* = Handle[TCollectionHAsciiString]

## ! A variable-length sequence of ASCII characters
## ! (normal 8-bit character type). It provides editing
## ! operations with built-in memory management to
## ! make HAsciiString objects easier to use than ordinary character arrays.
## ! HAsciiString objects are handles to strings.
## ! -   HAsciiString strings may be shared by several objects.
## ! -   You may use an AsciiString object to get the actual string.
## ! Note: HAsciiString objects use an AsciiString string as a field.

type
  TCollectionHAsciiString* {.importcpp: "TCollection_HAsciiString",
                            header: "TCollection_HAsciiString.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## a
                                                                                                    ## HAsciiString
                                                                                                    ## to
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## AsciiString.


proc constructTCollectionHAsciiString*(): TCollectionHAsciiString {.constructor,
    importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(message: StandardCString): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(aChar: StandardCharacter): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(length: int; filler: StandardCharacter): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(value: int): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(value: float): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(aString: TCollectionAsciiString): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(aString: Handle[TCollectionHAsciiString]): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollectionHAsciiString*(aString: Handle[TCollectionHExtendedString];
                                      replaceNonAscii: StandardCharacter): TCollectionHAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc assignCat*(this: var TCollectionHAsciiString; other: StandardCString) {.
    importcpp: "AssignCat", header: "TCollection_HAsciiString.hxx".}
proc assignCat*(this: var TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]) {.importcpp: "AssignCat",
    header: "TCollection_HAsciiString.hxx".}
proc capitalize*(this: var TCollectionHAsciiString) {.importcpp: "Capitalize",
    header: "TCollection_HAsciiString.hxx".}
proc cat*(this: TCollectionHAsciiString; other: StandardCString): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Cat",
                              header: "TCollection_HAsciiString.hxx".}
proc cat*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Cat",
                              header: "TCollection_HAsciiString.hxx".}
proc center*(this: var TCollectionHAsciiString; width: int; filler: StandardCharacter) {.
    importcpp: "Center", header: "TCollection_HAsciiString.hxx".}
proc changeAll*(this: var TCollectionHAsciiString; aChar: StandardCharacter;
               newChar: StandardCharacter; caseSensitive: bool = true) {.
    importcpp: "ChangeAll", header: "TCollection_HAsciiString.hxx".}
proc clear*(this: var TCollectionHAsciiString) {.importcpp: "Clear",
    header: "TCollection_HAsciiString.hxx".}
proc firstLocationInSet*(this: TCollectionHAsciiString;
                        set: Handle[TCollectionHAsciiString]; fromIndex: int;
                        toIndex: int): int {.noSideEffect,
    importcpp: "FirstLocationInSet", header: "TCollection_HAsciiString.hxx".}
proc firstLocationNotInSet*(this: TCollectionHAsciiString;
                           set: Handle[TCollectionHAsciiString]; fromIndex: int;
                           toIndex: int): int {.noSideEffect,
    importcpp: "FirstLocationNotInSet", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: int; what: StandardCharacter) {.
    importcpp: "Insert", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: int; what: StandardCString) {.
    importcpp: "Insert", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: int;
            what: Handle[TCollectionHAsciiString]) {.importcpp: "Insert",
    header: "TCollection_HAsciiString.hxx".}
proc insertAfter*(this: var TCollectionHAsciiString; index: int;
                 other: Handle[TCollectionHAsciiString]) {.
    importcpp: "InsertAfter", header: "TCollection_HAsciiString.hxx".}
proc insertBefore*(this: var TCollectionHAsciiString; index: int;
                  other: Handle[TCollectionHAsciiString]) {.
    importcpp: "InsertBefore", header: "TCollection_HAsciiString.hxx".}
proc isEmpty*(this: TCollectionHAsciiString): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_HAsciiString.hxx".}
proc isLess*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_HAsciiString.hxx".}
proc isGreater*(this: TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    importcpp: "IsGreater", header: "TCollection_HAsciiString.hxx".}
proc integerValue*(this: TCollectionHAsciiString): int {.noSideEffect,
    importcpp: "IntegerValue", header: "TCollection_HAsciiString.hxx".}
proc isIntegerValue*(this: TCollectionHAsciiString): bool {.noSideEffect,
    importcpp: "IsIntegerValue", header: "TCollection_HAsciiString.hxx".}
proc isRealValue*(this: TCollectionHAsciiString): bool {.noSideEffect,
    importcpp: "IsRealValue", header: "TCollection_HAsciiString.hxx".}
proc isAscii*(this: TCollectionHAsciiString): bool {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_HAsciiString.hxx".}
proc isDifferent*(this: TCollectionHAsciiString; s: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_HAsciiString.hxx".}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]; caseSensitive: bool): bool {.
    noSideEffect, importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc leftAdjust*(this: var TCollectionHAsciiString) {.importcpp: "LeftAdjust",
    header: "TCollection_HAsciiString.hxx".}
proc leftJustify*(this: var TCollectionHAsciiString; width: int;
                 filler: StandardCharacter) {.importcpp: "LeftJustify",
    header: "TCollection_HAsciiString.hxx".}
proc length*(this: TCollectionHAsciiString): int {.noSideEffect, importcpp: "Length",
    header: "TCollection_HAsciiString.hxx".}
proc location*(this: TCollectionHAsciiString;
              other: Handle[TCollectionHAsciiString]; fromIndex: int; toIndex: int): int {.
    noSideEffect, importcpp: "Location", header: "TCollection_HAsciiString.hxx".}
proc location*(this: TCollectionHAsciiString; n: int; c: StandardCharacter;
              fromIndex: int; toIndex: int): int {.noSideEffect,
    importcpp: "Location", header: "TCollection_HAsciiString.hxx".}
proc lowerCase*(this: var TCollectionHAsciiString) {.importcpp: "LowerCase",
    header: "TCollection_HAsciiString.hxx".}
proc prepend*(this: var TCollectionHAsciiString;
             other: Handle[TCollectionHAsciiString]) {.importcpp: "Prepend",
    header: "TCollection_HAsciiString.hxx".}
proc print*(this: TCollectionHAsciiString; astream: var StandardOStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_HAsciiString.hxx".}
proc realValue*(this: TCollectionHAsciiString): float {.noSideEffect,
    importcpp: "RealValue", header: "TCollection_HAsciiString.hxx".}
proc removeAll*(this: var TCollectionHAsciiString; c: StandardCharacter;
               caseSensitive: bool) {.importcpp: "RemoveAll",
                                    header: "TCollection_HAsciiString.hxx".}
proc removeAll*(this: var TCollectionHAsciiString; what: StandardCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_HAsciiString.hxx".}
proc remove*(this: var TCollectionHAsciiString; where: int; ahowmany: int = 1) {.
    importcpp: "Remove", header: "TCollection_HAsciiString.hxx".}
proc rightAdjust*(this: var TCollectionHAsciiString) {.importcpp: "RightAdjust",
    header: "TCollection_HAsciiString.hxx".}
proc rightJustify*(this: var TCollectionHAsciiString; width: int;
                  filler: StandardCharacter) {.importcpp: "RightJustify",
    header: "TCollection_HAsciiString.hxx".}
proc search*(this: TCollectionHAsciiString; what: StandardCString): int {.
    noSideEffect, importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc search*(this: TCollectionHAsciiString; what: Handle[TCollectionHAsciiString]): int {.
    noSideEffect, importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc searchFromEnd*(this: TCollectionHAsciiString; what: StandardCString): int {.
    noSideEffect, importcpp: "SearchFromEnd",
    header: "TCollection_HAsciiString.hxx".}
proc searchFromEnd*(this: TCollectionHAsciiString;
                   what: Handle[TCollectionHAsciiString]): int {.noSideEffect,
    importcpp: "SearchFromEnd", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: int; what: StandardCharacter) {.
    importcpp: "SetValue", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: int; what: StandardCString) {.
    importcpp: "SetValue", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: int;
              what: Handle[TCollectionHAsciiString]) {.importcpp: "SetValue",
    header: "TCollection_HAsciiString.hxx".}
proc split*(this: var TCollectionHAsciiString; where: int): Handle[
    TCollectionHAsciiString] {.importcpp: "Split",
                              header: "TCollection_HAsciiString.hxx".}
proc subString*(this: TCollectionHAsciiString; fromIndex: int; toIndex: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SubString",
                              header: "TCollection_HAsciiString.hxx".}
proc toCString*(this: TCollectionHAsciiString): StandardCString {.noSideEffect,
    importcpp: "ToCString", header: "TCollection_HAsciiString.hxx".}
proc token*(this: TCollectionHAsciiString; separators: StandardCString = " \t";
           whichone: int = 1): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Token", header: "TCollection_HAsciiString.hxx".}
proc trunc*(this: var TCollectionHAsciiString; ahowmany: int) {.importcpp: "Trunc",
    header: "TCollection_HAsciiString.hxx".}
proc upperCase*(this: var TCollectionHAsciiString) {.importcpp: "UpperCase",
    header: "TCollection_HAsciiString.hxx".}
proc usefullLength*(this: TCollectionHAsciiString): int {.noSideEffect,
    importcpp: "UsefullLength", header: "TCollection_HAsciiString.hxx".}
proc value*(this: TCollectionHAsciiString; where: int): StandardCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_HAsciiString.hxx".}
proc string*(this: TCollectionHAsciiString): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "TCollection_HAsciiString.hxx".}
proc isSameState*(this: TCollectionHAsciiString;
                 other: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    importcpp: "IsSameState", header: "TCollection_HAsciiString.hxx".}
type
  TCollectionHAsciiStringbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TCollection_HAsciiString::get_type_name(@)",
                            header: "TCollection_HAsciiString.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TCollection_HAsciiString::get_type_descriptor(@)",
    header: "TCollection_HAsciiString.hxx".}
proc dynamicType*(this: TCollectionHAsciiString): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TCollection_HAsciiString.hxx".}
