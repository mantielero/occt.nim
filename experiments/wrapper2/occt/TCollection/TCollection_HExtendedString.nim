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
discard "forward decl of TCollection_HExtendedString"
type
  HandleC1C1* = Handle[TCollectionHExtendedString]

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


proc constructTCollectionHExtendedString*(): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(message: StandardCString): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(message: StandardExtString): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(aChar: StandardExtCharacter): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(length: cint;
    filler: StandardExtCharacter): TCollectionHExtendedString {.constructor,
    importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(aString: TCollectionExtendedString): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(
    aString: Handle[TCollectionHAsciiString]): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollectionHExtendedString*(
    aString: Handle[TCollectionHExtendedString]): TCollectionHExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc assignCat*(this: var TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]) {.
    importcpp: "AssignCat", header: "TCollection_HExtendedString.hxx".}
proc cat*(this: TCollectionHExtendedString;
         other: Handle[TCollectionHExtendedString]): Handle[
    TCollectionHExtendedString] {.noSideEffect, importcpp: "Cat",
                                 header: "TCollection_HExtendedString.hxx".}
proc changeAll*(this: var TCollectionHExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.importcpp: "ChangeAll",
    header: "TCollection_HExtendedString.hxx".}
proc clear*(this: var TCollectionHExtendedString) {.importcpp: "Clear",
    header: "TCollection_HExtendedString.hxx".}
proc isEmpty*(this: TCollectionHExtendedString): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_HExtendedString.hxx".}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: StandardExtCharacter) {.importcpp: "Insert", header: "TCollection_HExtendedString.hxx".}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: Handle[TCollectionHExtendedString]) {.importcpp: "Insert",
    header: "TCollection_HExtendedString.hxx".}
proc isLess*(this: TCollectionHExtendedString;
            other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    importcpp: "IsLess", header: "TCollection_HExtendedString.hxx".}
proc isGreater*(this: TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    importcpp: "IsGreater", header: "TCollection_HExtendedString.hxx".}
proc isAscii*(this: TCollectionHExtendedString): bool {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_HExtendedString.hxx".}
proc length*(this: TCollectionHExtendedString): cint {.noSideEffect,
    importcpp: "Length", header: "TCollection_HExtendedString.hxx".}
proc remove*(this: var TCollectionHExtendedString; where: cint; ahowmany: cint = 1) {.
    importcpp: "Remove", header: "TCollection_HExtendedString.hxx".}
proc removeAll*(this: var TCollectionHExtendedString; what: StandardExtCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_HExtendedString.hxx".}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: StandardExtCharacter) {.importcpp: "SetValue",
    header: "TCollection_HExtendedString.hxx".}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: Handle[TCollectionHExtendedString]) {.importcpp: "SetValue",
    header: "TCollection_HExtendedString.hxx".}
proc split*(this: var TCollectionHExtendedString; where: cint): Handle[
    TCollectionHExtendedString] {.importcpp: "Split",
                                 header: "TCollection_HExtendedString.hxx".}
proc search*(this: TCollectionHExtendedString;
            what: Handle[TCollectionHExtendedString]): cint {.noSideEffect,
    importcpp: "Search", header: "TCollection_HExtendedString.hxx".}
proc searchFromEnd*(this: TCollectionHExtendedString;
                   what: Handle[TCollectionHExtendedString]): cint {.noSideEffect,
    importcpp: "SearchFromEnd", header: "TCollection_HExtendedString.hxx".}
proc toExtString*(this: TCollectionHExtendedString): StandardExtString {.
    noSideEffect, importcpp: "ToExtString",
    header: "TCollection_HExtendedString.hxx".}
proc token*(this: TCollectionHExtendedString; separators: StandardExtString;
           whichone: cint = 1): Handle[TCollectionHExtendedString] {.noSideEffect,
    importcpp: "Token", header: "TCollection_HExtendedString.hxx".}
proc trunc*(this: var TCollectionHExtendedString; ahowmany: cint) {.
    importcpp: "Trunc", header: "TCollection_HExtendedString.hxx".}
proc value*(this: TCollectionHExtendedString; where: cint): StandardExtCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_HExtendedString.hxx".}
proc string*(this: TCollectionHExtendedString): TCollectionExtendedString {.
    noSideEffect, importcpp: "String", header: "TCollection_HExtendedString.hxx".}
proc print*(this: TCollectionHExtendedString; astream: var StandardOStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_HExtendedString.hxx".}
proc isSameState*(this: TCollectionHExtendedString;
                 other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    importcpp: "IsSameState", header: "TCollection_HExtendedString.hxx".}
type
  TCollectionHExtendedStringbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TCollection_HExtendedString::get_type_name(@)",
                            header: "TCollection_HExtendedString.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TCollection_HExtendedString::get_type_descriptor(@)",
    header: "TCollection_HExtendedString.hxx".}
proc dynamicType*(this: TCollectionHExtendedString): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TCollection_HExtendedString.hxx".}

























