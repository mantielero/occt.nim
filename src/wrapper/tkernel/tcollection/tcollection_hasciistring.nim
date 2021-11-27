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
    importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(message: cstring): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(aChar: cchar): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(length: cint; filler: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(value: cint): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(value: cfloat): TCollectionHAsciiString {.cdecl,
    constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(aString: TCollectionAsciiString): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHAsciiString]): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc newTCollectionHAsciiString*(aString: Handle[TCollectionHExtendedString];
                                replaceNonAscii: cchar): TCollectionHAsciiString {.
    cdecl, constructor, importcpp: "TCollection_HAsciiString(@)", header: "TCollection_HAsciiString.hxx".}
proc assignCat*(this: var TCollectionHAsciiString; other: cstring) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_HAsciiString.hxx".}
proc assignCat*(this: var TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_HAsciiString.hxx".}
proc capitalize*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Capitalize",
    header: "TCollection_HAsciiString.hxx".}
proc cat*(this: TCollectionHAsciiString; other: cstring): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_HAsciiString.hxx".}
proc cat*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_HAsciiString.hxx".}
proc center*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "Center", header: "TCollection_HAsciiString.hxx".}
proc changeAll*(this: var TCollectionHAsciiString; aChar: cchar; newChar: cchar;
               caseSensitive: bool = true) {.cdecl, importcpp: "ChangeAll",
    header: "TCollection_HAsciiString.hxx".}
proc clear*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "Clear",
    header: "TCollection_HAsciiString.hxx".}
proc firstLocationInSet*(this: TCollectionHAsciiString;
                        set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                        toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationInSet", header: "TCollection_HAsciiString.hxx".}
proc firstLocationNotInSet*(this: TCollectionHAsciiString;
                           set: Handle[TCollectionHAsciiString]; fromIndex: cint;
                           toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationNotInSet", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "Insert", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "Insert", header: "TCollection_HAsciiString.hxx".}
proc insert*(this: var TCollectionHAsciiString; where: cint;
            what: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Insert",
    header: "TCollection_HAsciiString.hxx".}
proc insertAfter*(this: var TCollectionHAsciiString; index: cint;
                 other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertAfter", header: "TCollection_HAsciiString.hxx".}
proc insertBefore*(this: var TCollectionHAsciiString; index: cint;
                  other: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "InsertBefore", header: "TCollection_HAsciiString.hxx".}
proc isEmpty*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TCollection_HAsciiString.hxx".}
proc isLess*(this: TCollectionHAsciiString; other: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", header: "TCollection_HAsciiString.hxx".}
proc isGreater*(this: TCollectionHAsciiString;
               other: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsGreater", header: "TCollection_HAsciiString.hxx".}
proc integerValue*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "IntegerValue", header: "TCollection_HAsciiString.hxx".}
proc isIntegerValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsIntegerValue", header: "TCollection_HAsciiString.hxx".}
proc isRealValue*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsRealValue", header: "TCollection_HAsciiString.hxx".}
proc isAscii*(this: TCollectionHAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", header: "TCollection_HAsciiString.hxx".}
proc isDifferent*(this: TCollectionHAsciiString; s: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", header: "TCollection_HAsciiString.hxx".}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc isSameString*(this: TCollectionHAsciiString;
                  s: Handle[TCollectionHAsciiString]; caseSensitive: bool): bool {.
    noSideEffect, cdecl, importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc leftAdjust*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LeftAdjust",
    header: "TCollection_HAsciiString.hxx".}
proc leftJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "LeftJustify", header: "TCollection_HAsciiString.hxx".}
proc length*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TCollection_HAsciiString.hxx".}
proc location*(this: TCollectionHAsciiString;
              other: Handle[TCollectionHAsciiString]; fromIndex: cint; toIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "Location", header: "TCollection_HAsciiString.hxx".}
proc location*(this: TCollectionHAsciiString; n: cint; c: cchar; fromIndex: cint;
              toIndex: cint): cint {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "TCollection_HAsciiString.hxx".}
proc lowerCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "LowerCase",
    header: "TCollection_HAsciiString.hxx".}
proc prepend*(this: var TCollectionHAsciiString;
             other: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Prepend",
    header: "TCollection_HAsciiString.hxx".}
proc print*(this: TCollectionHAsciiString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", header: "TCollection_HAsciiString.hxx".}
proc realValue*(this: TCollectionHAsciiString): cfloat {.noSideEffect, cdecl,
    importcpp: "RealValue", header: "TCollection_HAsciiString.hxx".}
proc removeAll*(this: var TCollectionHAsciiString; c: cchar; caseSensitive: bool) {.
    cdecl, importcpp: "RemoveAll", header: "TCollection_HAsciiString.hxx".}
proc removeAll*(this: var TCollectionHAsciiString; what: cchar) {.cdecl,
    importcpp: "RemoveAll", header: "TCollection_HAsciiString.hxx".}
proc remove*(this: var TCollectionHAsciiString; where: cint; ahowmany: cint = 1) {.cdecl,
    importcpp: "Remove", header: "TCollection_HAsciiString.hxx".}
proc rightAdjust*(this: var TCollectionHAsciiString) {.cdecl,
    importcpp: "RightAdjust", header: "TCollection_HAsciiString.hxx".}
proc rightJustify*(this: var TCollectionHAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "RightJustify", header: "TCollection_HAsciiString.hxx".}
proc search*(this: TCollectionHAsciiString; what: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc search*(this: TCollectionHAsciiString; what: Handle[TCollectionHAsciiString]): cint {.
    noSideEffect, cdecl, importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc searchFromEnd*(this: TCollectionHAsciiString; what: cstring): cint {.
    noSideEffect, cdecl, importcpp: "SearchFromEnd", header: "TCollection_HAsciiString.hxx".}
proc searchFromEnd*(this: TCollectionHAsciiString;
                   what: Handle[TCollectionHAsciiString]): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "SetValue", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "SetValue", header: "TCollection_HAsciiString.hxx".}
proc setValue*(this: var TCollectionHAsciiString; where: cint;
              what: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetValue", header: "TCollection_HAsciiString.hxx".}
proc split*(this: var TCollectionHAsciiString; where: cint): Handle[
    TCollectionHAsciiString] {.cdecl, importcpp: "Split", header: "TCollection_HAsciiString.hxx".}
proc subString*(this: TCollectionHAsciiString; fromIndex: cint; toIndex: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "SubString",
                              header: "TCollection_HAsciiString.hxx".}
proc toCString*(this: TCollectionHAsciiString): cstring {.noSideEffect, cdecl,
    importcpp: "ToCString", header: "TCollection_HAsciiString.hxx".}
proc token*(this: TCollectionHAsciiString; separators: cstring = " \t";
           whichone: cint = 1): Handle[TCollectionHAsciiString] {.noSideEffect, cdecl,
    importcpp: "Token", header: "TCollection_HAsciiString.hxx".}
proc trunc*(this: var TCollectionHAsciiString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", header: "TCollection_HAsciiString.hxx".}
proc upperCase*(this: var TCollectionHAsciiString) {.cdecl, importcpp: "UpperCase",
    header: "TCollection_HAsciiString.hxx".}
proc usefullLength*(this: TCollectionHAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "UsefullLength", header: "TCollection_HAsciiString.hxx".}
proc value*(this: TCollectionHAsciiString; where: cint): cchar {.noSideEffect, cdecl,
    importcpp: "Value", header: "TCollection_HAsciiString.hxx".}
proc string*(this: TCollectionHAsciiString): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "String", header: "TCollection_HAsciiString.hxx".}
proc isSameState*(this: TCollectionHAsciiString;
                 other: Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    cdecl, importcpp: "IsSameState", header: "TCollection_HAsciiString.hxx".}