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
    importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(message: cstring): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(aChar: cchar): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(length: cint; filler: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(value: cint): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(value: cfloat): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(aString: TCollectionAsciiString): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHAsciiString]): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHExtendedString];
                                replaceNonAscii: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", dynlib: tkernel.}
proc assignCat*(this: var TCollectionHAsciiString; other: cstring) {.cdecl,
    importcpp: "AssignCat", dynlib: tkernel.}
proc assignCat*(this: var TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AssignCat", dynlib: tkernel.}
proc capitalize*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Capitalize",
    dynlib: tkernel.}
proc cat*(this: TCollectionHAsciiString; other: cstring): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", dynlib: tkernel.}
proc cat*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", dynlib: tkernel.}
proc center*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "Center", dynlib: tkernel.}
proc changeAll*(this: var TCollectionHAsciiString; aChar: cchar; newChar: cchar;
               caseSensitive: bool = true) {.cdecl, importcpp: "ChangeAll",
    dynlib: tkernel.}
proc clear*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc firstLocationInSet*(this: TCollectionHAsciiString;
                        set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                        toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationInSet", dynlib: tkernel.}
proc firstLocationNotInSet*(this: TCollectionHAsciiString;
                           set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                           toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationNotInSet", dynlib: tkernel.}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "Insert", dynlib: tkernel.}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "Insert", dynlib: tkernel.}
proc insert*(this: var TCollectionHAsciiString; where: cint;
            what: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Insert",
    dynlib: tkernel.}
proc insertAfter*(this: var TCollectionHAsciiString; index: cint;
                 other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertAfter", dynlib: tkernel.}
proc insertBefore*(this: var TCollectionHAsciiString; index: cint;
                  other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkernel.}
proc isEmpty*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc isLess*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", dynlib: tkernel.}
proc isGreater*(this: TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsGreater", dynlib: tkernel.}
proc integerValue*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "IntegerValue", dynlib: tkernel.}
proc isIntegerValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsIntegerValue", dynlib: tkernel.}
proc isRealValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsRealValue", dynlib: tkernel.}
proc isAscii*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", dynlib: tkernel.}
proc isDifferent*(this: TCollectionHAsciiString; s: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", dynlib: tkernel.}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsSameString", dynlib: tkernel.}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]; caseSensitive: bool): bool {.
    noSideEffect, cdecl, importcpp: "IsSameString", dynlib: tkernel.}
proc leftAdjust*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LeftAdjust",
    dynlib: tkernel.}
proc leftJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "LeftJustify", dynlib: tkernel.}
proc length*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkernel.}
proc location*(this: TCollectionHAsciiString;
              other: Handle[TCollectionHAsciiString]; fromIndex: cint; toIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "Location", dynlib: tkernel.}
proc location*(this: TCollectionHAsciiString; n: cint; c: cchar; fromIndex: cint;
              toIndex: cint): cint {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkernel.}
proc lowerCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LowerCase",
    dynlib: tkernel.}
proc prepend*(this: var TCollectionHAsciiString;
             other: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Prepend",
    dynlib: tkernel.}
proc print*(this: TCollectionHAsciiString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", dynlib: tkernel.}
proc realValue*(this: TCollectionHAsciiString): cfloat {.noSideEffect, cdecl,
    importcpp: "RealValue", dynlib: tkernel.}
proc removeAll*(this: var TCollectionHAsciiString; c: cchar; caseSensitive: bool) {.
    cdecl, importcpp: "RemoveAll", dynlib: tkernel.}
proc removeAll*(this: var TCollectionHAsciiString; what: cchar) {.cdecl,
    importcpp: "RemoveAll", dynlib: tkernel.}
proc remove*(this: var TCollectionHAsciiString; where: cint; ahowmany: cint = 1) {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc rightAdjust*(this: var TCollectionHAsciiString) {.cdecl,
    importcpp: "RightAdjust", dynlib: tkernel.}
proc rightJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "RightJustify", dynlib: tkernel.}
proc search*(this: TCollectionHAsciiString; what: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Search", dynlib: tkernel.}
proc search*(this: TCollectionHAsciiString; what: Handle[TCollectionHAsciiString]): cint {.
    noSideEffect, cdecl, importcpp: "Search", dynlib: tkernel.}
proc searchFromEnd*(this: TCollectionHAsciiString; what: cstring): cint {.
    noSideEffect, cdecl, importcpp: "SearchFromEnd", dynlib: tkernel.}
proc searchFromEnd*(this: TCollectionHAsciiString;
                   what: Handle[TCollectionHAsciiString]): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", dynlib: tkernel.}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc setValue*(this: var TCollectionHAsciiString; where: cint;
              what: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc split*(this: var TCollectionHAsciiString; where: cint): Handle[
    TCollectionHAsciiString] {.cdecl, importcpp: "Split", dynlib: tkernel.}
proc subString*(this: TCollectionHAsciiString; fromIndex: cint; toIndex: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "SubString",
                              dynlib: tkernel.}
proc toCString*(this: TCollectionHAsciiString): cstring {.noSideEffect, cdecl,
    importcpp: "ToCString", dynlib: tkernel.}
proc token*(this: TCollectionHAsciiString; separators: cstring = " \t";
           whichone: cint = 1): Handle[TCollectionHAsciiString] {.noSideEffect, cdecl,
    importcpp: "Token", dynlib: tkernel.}
proc trunc*(this: var TCollectionHAsciiString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", dynlib: tkernel.}
proc upperCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "UpperCase",
    dynlib: tkernel.}
proc usefullLength*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "UsefullLength", dynlib: tkernel.}
proc value*(this: TCollectionHAsciiString; where: cint): cchar {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc string*(this: TCollectionHAsciiString): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "String", dynlib: tkernel.}
proc isSameState*(this: TCollectionHAsciiString;
                 other: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    cdecl, importcpp: "IsSameState", dynlib: tkernel.}