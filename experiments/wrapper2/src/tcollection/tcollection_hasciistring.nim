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


proc newTCollectionHAsciiString*(): TCollectionHAsciiString {.cdecl, constructor,
    importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(message: cstring): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(aChar: cchar): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(length: cint; filler: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(value: cint): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(value: cfloat): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(aString: TCollectionAsciiString): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHAsciiString]): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHExtendedString];
                                replaceNonAscii: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionHAsciiString; other: cstring) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc assignCat*(this: var TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc capitalize*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Capitalize",
    dynlib: tkmath.}
proc cat*(this: TCollectionHAsciiString; other: cstring): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc cat*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc center*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "Center", dynlib: tkmath.}
proc changeAll*(this: var TCollectionHAsciiString; aChar: cchar; newChar: cchar;
               caseSensitive: bool = true) {.cdecl, importcpp: "ChangeAll",
    dynlib: tkmath.}
proc clear*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc firstLocationInSet*(this: TCollectionHAsciiString;
                        set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                        toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationInSet", dynlib: tkmath.}
proc firstLocationNotInSet*(this: TCollectionHAsciiString;
                           set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                           toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationNotInSet", dynlib: tkmath.}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionHAsciiString; where: cint;
            what: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Insert",
    dynlib: tkmath.}
proc insertAfter*(this: var TCollectionHAsciiString; index: cint;
                 other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkmath.}
proc insertBefore*(this: var TCollectionHAsciiString; index: cint;
                  other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkmath.}
proc isEmpty*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc isLess*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", dynlib: tkmath.}
proc isGreater*(this: TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsGreater", dynlib: tkmath.}
proc integerValue*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "IntegerValue", dynlib: tkmath.}
proc isIntegerValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsIntegerValue", dynlib: tkmath.}
proc isRealValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsRealValue", dynlib: tkmath.}
proc isAscii*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", dynlib: tkmath.}
proc isDifferent*(this: TCollectionHAsciiString; s: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsSameString", dynlib: tkmath.}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]; caseSensitive: bool): bool {.
    noSideEffect, cdecl, importcpp: "IsSameString", dynlib: tkmath.}
proc leftAdjust*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LeftAdjust",
    dynlib: tkmath.}
proc leftJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "LeftJustify", dynlib: tkmath.}
proc length*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc location*(this: TCollectionHAsciiString;
              other: Handle[TCollectionHAsciiString]; fromIndex: cint; toIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "Location", dynlib: tkmath.}
proc location*(this: TCollectionHAsciiString; n: cint; c: cchar; fromIndex: cint;
              toIndex: cint): cint {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc lowerCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LowerCase",
    dynlib: tkmath.}
proc prepend*(this: var TCollectionHAsciiString;
             other: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Prepend",
    dynlib: tkmath.}
proc print*(this: TCollectionHAsciiString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", dynlib: tkmath.}
proc realValue*(this: TCollectionHAsciiString): cfloat {.noSideEffect, cdecl,
    importcpp: "RealValue", dynlib: tkmath.}
proc removeAll*(this: var TCollectionHAsciiString; c: cchar; caseSensitive: bool) {.
    cdecl, importcpp: "RemoveAll", dynlib: tkmath.}
proc removeAll*(this: var TCollectionHAsciiString; what: cchar) {.cdecl,
    importcpp: "RemoveAll", dynlib: tkmath.}
proc remove*(this: var TCollectionHAsciiString; where: cint; ahowmany: cint = 1) {.cdecl,
    importcpp: "Remove", dynlib: tkmath.}
proc rightAdjust*(this: var TCollectionHAsciiString) {.cdecl,
    importcpp: "RightAdjust", dynlib: tkmath.}
proc rightJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "RightJustify", dynlib: tkmath.}
proc search*(this: TCollectionHAsciiString; what: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Search", dynlib: tkmath.}
proc search*(this: TCollectionHAsciiString; what: Handle[TCollectionHAsciiString]): cint {.
    noSideEffect, cdecl, importcpp: "Search", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionHAsciiString; what: cstring): cint {.
    noSideEffect, cdecl, importcpp: "SearchFromEnd", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionHAsciiString;
                   what: Handle[TCollectionHAsciiString]): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", dynlib: tkmath.}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setValue*(this: var TCollectionHAsciiString; where: cint;
              what: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc split*(this: var TCollectionHAsciiString; where: cint): Handle[
    TCollectionHAsciiString] {.cdecl, importcpp: "Split", dynlib: tkmath.}
proc subString*(this: TCollectionHAsciiString; fromIndex: cint; toIndex: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "SubString",
                              dynlib: tkmath.}
proc toCString*(this: TCollectionHAsciiString): cstring {.noSideEffect, cdecl,
    importcpp: "ToCString", dynlib: tkmath.}
proc token*(this: TCollectionHAsciiString; separators: cstring = " \t";
           whichone: cint = 1): Handle[TCollectionHAsciiString] {.noSideEffect, cdecl,
    importcpp: "Token", dynlib: tkmath.}
proc trunc*(this: var TCollectionHAsciiString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", dynlib: tkmath.}
proc upperCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "UpperCase",
    dynlib: tkmath.}
proc usefullLength*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "UsefullLength", dynlib: tkmath.}
proc value*(this: TCollectionHAsciiString; where: cint): cchar {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc string*(this: TCollectionHAsciiString): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "String", dynlib: tkmath.}
proc isSameState*(this: TCollectionHAsciiString;
                 other: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    cdecl, importcpp: "IsSameState", dynlib: tkmath.}