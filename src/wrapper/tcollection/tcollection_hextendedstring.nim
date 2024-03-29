import tcollection_types
import ../standard/standard_types
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




proc newTCollectionHExtendedString*(): TCollectionHExtendedString {.cdecl,
    constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(message: cstring): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(message: StandardExtString): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(aChar: StandardExtCharacter): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(length: cint; filler: StandardExtCharacter): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(aString: TCollectionExtendedString): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(aString: Handle[TCollectionHAsciiString]): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc newTCollectionHExtendedString*(aString: Handle[TCollectionHExtendedString]): TCollectionHExtendedString {.
    cdecl, constructor, importcpp: "TCollection_HExtendedString(@)", header: "TCollection_HExtendedString.hxx".}
proc assignCat*(this: var TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_HExtendedString.hxx".}
proc cat*(this: TCollectionHExtendedString;
         other: Handle[TCollectionHExtendedString]): Handle[
    TCollectionHExtendedString] {.noSideEffect, cdecl, importcpp: "Cat",
                                 header: "TCollection_HExtendedString.hxx".}
proc changeAll*(this: var TCollectionHExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.cdecl, importcpp: "ChangeAll",
    header: "TCollection_HExtendedString.hxx".}
proc clear*(this: var TCollectionHExtendedString) {.cdecl, importcpp: "Clear",
    header: "TCollection_HExtendedString.hxx".}
proc isEmpty*(this: TCollectionHExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TCollection_HExtendedString.hxx".}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: StandardExtCharacter) {.cdecl, importcpp: "Insert", header: "TCollection_HExtendedString.hxx".}
proc insert*(this: var TCollectionHExtendedString; where: cint;
            what: Handle[TCollectionHExtendedString]) {.cdecl, importcpp: "Insert",
    header: "TCollection_HExtendedString.hxx".}
proc isLess*(this: TCollectionHExtendedString;
            other: Handle[TCollectionHExtendedString]): bool {.noSideEffect, cdecl,
    importcpp: "IsLess", header: "TCollection_HExtendedString.hxx".}
proc isGreater*(this: TCollectionHExtendedString;
               other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    cdecl, importcpp: "IsGreater", header: "TCollection_HExtendedString.hxx".}
proc isAscii*(this: TCollectionHExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", header: "TCollection_HExtendedString.hxx".}
proc length*(this: TCollectionHExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TCollection_HExtendedString.hxx".}
proc remove*(this: var TCollectionHExtendedString; where: cint; ahowmany: cint = 1) {.
    cdecl, importcpp: "Remove", header: "TCollection_HExtendedString.hxx".}
proc removeAll*(this: var TCollectionHExtendedString; what: StandardExtCharacter) {.
    cdecl, importcpp: "RemoveAll", header: "TCollection_HExtendedString.hxx".}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: StandardExtCharacter) {.cdecl, importcpp: "SetValue",
    header: "TCollection_HExtendedString.hxx".}
proc setValue*(this: var TCollectionHExtendedString; where: cint;
              what: Handle[TCollectionHExtendedString]) {.cdecl,
    importcpp: "SetValue", header: "TCollection_HExtendedString.hxx".}
proc split*(this: var TCollectionHExtendedString; where: cint): Handle[
    TCollectionHExtendedString] {.cdecl, importcpp: "Split", header: "TCollection_HExtendedString.hxx".}
proc search*(this: TCollectionHExtendedString;
            what: Handle[TCollectionHExtendedString]): cint {.noSideEffect, cdecl,
    importcpp: "Search", header: "TCollection_HExtendedString.hxx".}
proc searchFromEnd*(this: TCollectionHExtendedString;
                   what: Handle[TCollectionHExtendedString]): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", header: "TCollection_HExtendedString.hxx".}
proc toExtString*(this: TCollectionHExtendedString): StandardExtString {.
    noSideEffect, cdecl, importcpp: "ToExtString", header: "TCollection_HExtendedString.hxx".}
proc token*(this: TCollectionHExtendedString; separators: StandardExtString;
           whichone: cint = 1): Handle[TCollectionHExtendedString] {.noSideEffect,
    cdecl, importcpp: "Token", header: "TCollection_HExtendedString.hxx".}
proc trunc*(this: var TCollectionHExtendedString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", header: "TCollection_HExtendedString.hxx".}
proc value*(this: TCollectionHExtendedString; where: cint): StandardExtCharacter {.
    noSideEffect, cdecl, importcpp: "Value", header: "TCollection_HExtendedString.hxx".}
proc string*(this: TCollectionHExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "String", header: "TCollection_HExtendedString.hxx".}
proc print*(this: TCollectionHExtendedString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", header: "TCollection_HExtendedString.hxx".}
proc isSameState*(this: TCollectionHExtendedString;
                 other: Handle[TCollectionHExtendedString]): bool {.noSideEffect,
    cdecl, importcpp: "IsSameState", header: "TCollection_HExtendedString.hxx".}
