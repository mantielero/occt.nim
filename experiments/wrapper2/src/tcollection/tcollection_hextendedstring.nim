##  Created on: 1993-03-17
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
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
type
  HandleTCollectionHExtendedString* = Handle[TCollectionHExtendedString]

## ! A variable-length sequence of "extended"
## ! (UNICODE) characters (16-bit character
## ! type). It provides editing operations with
## ! built-in memory management to make
## ! ExtendedString objects easier to use than
## ! ordinary extended character arrays.
## ! HExtendedString objects are handles to strings.
## ! - HExtendedString strings may be shared by several objects.
## ! - You may use an ExtendedString object to get the actual string.
## ! Note: HExtendedString objects use an
## ! ExtendedString string as a field.

type
  TCollectionHExtendedString* {.importcpp: "TCollection_HExtendedString",
                               header: "TCollection_HExtendedString.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## a
                                                                                                          ## HExtendedString
                                                                                                          ## to
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## ExtendedString.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## the
                                                                                                          ## field
                                                                                                          ## myString


proc newTCollectionHExtendedString*(): TCollectionHExtendedString {.cdecl,
    constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(message: cstring): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(message: StandardExtString): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(aChar: StandardExtCharacter): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(length: cint; filler: StandardExtCharacter): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(aString: TCollectionExtendedString): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(aString: Handle[TCollectionHAsciiString]): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc newTCollectionHExtendedString*(aString: Handle[TCollectionHExtendedString]): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc cat*(this: TCollectionHExtendedString;
         other: Handle[TCollectionHExtendedString]): Handle[
    TCollectionHExtendedString] {.noSideEffect, cdecl, importcpp: "Cat",
                                 dynlib: tkmath.}
proc changeAll*(this: var TCollectionHExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.cdecl, importcpp: "ChangeAll",
    dynlib: tkmath.}
proc clear*(this: var TCollectionHExtendedString) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc isEmpty*(this: TCollectionHExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: StandardExtCharacter) {.cdecl, importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: Handle[TCollectionHExtendedString]) {.cdecl, importcpp: "Insert",
    dynlib: tkmath.}
proc isLess*(this: TCollectionHExtendedString;
            other: Handle[TCollectionHExtendedString]): bool {.noSideEffect, cdecl,
    importcpp: "IsLess", dynlib: tkmath.}
proc isGreater*(this: TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    cdecl, importcpp: "IsGreater", dynlib: tkmath.}
proc isAscii*(this: TCollectionHExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", dynlib: tkmath.}
proc length*(this: TCollectionHExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc remove*(this: var TCollectionHExtendedString; where: cint; ahowmany: cint = 1) {.
    cdecl, importcpp: "Remove", dynlib: tkmath.}
proc removeAll*(this: var TCollectionHExtendedString; what: StandardExtCharacter) {.
    cdecl, importcpp: "RemoveAll", dynlib: tkmath.}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: StandardExtCharacter) {.cdecl, importcpp: "SetValue",
    dynlib: tkmath.}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: Handle[TCollectionHExtendedString]) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc split*(this: var TCollectionHExtendedString; where: cint): Handle[
    TCollectionHExtendedString] {.cdecl, importcpp: "Split", dynlib: tkmath.}
proc search*(this: TCollectionHExtendedString;
            what: Handle[TCollectionHExtendedString]): cint {.noSideEffect, cdecl,
    importcpp: "Search", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionHExtendedString;
                   what: Handle[TCollectionHExtendedString]): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", dynlib: tkmath.}
proc toExtString*(this: TCollectionHExtendedString): StandardExtString {.
    noSideEffect, cdecl, importcpp: "ToExtString", dynlib: tkmath.}
proc token*(this: TCollectionHExtendedString; separators: StandardExtString;
           whichone: cint = 1): Handle[TCollectionHExtendedString] {.noSideEffect,
    cdecl, importcpp: "Token", dynlib: tkmath.}
proc trunc*(this: var TCollectionHExtendedString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", dynlib: tkmath.}
proc value*(this: TCollectionHExtendedString; where: cint): StandardExtCharacter {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkmath.}
proc string*(this: TCollectionHExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "String", dynlib: tkmath.}
proc print*(this: TCollectionHExtendedString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", dynlib: tkmath.}
proc isSameState*(this: TCollectionHExtendedString;
                 other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    cdecl, importcpp: "IsSameState", dynlib: tkmath.}