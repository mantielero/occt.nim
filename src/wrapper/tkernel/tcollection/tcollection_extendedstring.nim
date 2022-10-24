import tcollection_types

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


proc newTCollectionExtendedString*(): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(astring: cstring; isMultiByte: bool = false): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(astring: StandardExtString): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(aChar: cchar): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(aChar: StandardExtCharacter): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(length: cint; filler: StandardExtCharacter): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(value: cint): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(value: cfloat): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(astring: TCollectionExtendedString): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc newTCollectionExtendedString*(astring: TCollectionAsciiString;
                                  isMultiByte: bool = true): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", header: "TCollection_ExtendedString.hxx".}
proc assignCat*(this: var TCollectionExtendedString;
               other: TCollectionExtendedString) {.cdecl, importcpp: "AssignCat",
    header: "TCollection_ExtendedString.hxx".}
proc `+=`*(this: var TCollectionExtendedString; other: TCollectionExtendedString) {.
    cdecl, importcpp: "(# += #)", header: "TCollection_ExtendedString.hxx".}
proc assignCat*(this: var TCollectionExtendedString; theChar: StandardUtf16Char) {.
    cdecl, importcpp: "AssignCat", header: "TCollection_ExtendedString.hxx".}
proc cat*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_ExtendedString.hxx".}
proc `+`*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_ExtendedString.hxx".}
proc changeAll*(this: var TCollectionExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.cdecl, importcpp: "ChangeAll",
    header: "TCollection_ExtendedString.hxx".}
proc clear*(this: var TCollectionExtendedString) {.cdecl, importcpp: "Clear",
    header: "TCollection_ExtendedString.hxx".}
proc copy*(this: var TCollectionExtendedString; fromwhere: TCollectionExtendedString) {.
    cdecl, importcpp: "Copy", header: "TCollection_ExtendedString.hxx".}
proc swap*(this: var TCollectionExtendedString;
          theOther: var TCollectionExtendedString) {.cdecl, importcpp: "Swap",
    header: "TCollection_ExtendedString.hxx".}
proc destroyTCollectionExtendedString*(this: var TCollectionExtendedString) {.cdecl,
    importcpp: "#.~TCollection_ExtendedString()", header: "TCollection_ExtendedString.hxx".}
proc insert*(this: var TCollectionExtendedString; where: cint;
            what: StandardExtCharacter) {.cdecl, importcpp: "Insert", header: "TCollection_ExtendedString.hxx".}
proc insert*(this: var TCollectionExtendedString; where: cint;
            what: TCollectionExtendedString) {.cdecl, importcpp: "Insert",
    header: "TCollection_ExtendedString.hxx".}
proc isEmpty*(this: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TCollection_ExtendedString.hxx".}
proc isEqual*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc isEqual*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc isDifferent*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", header: "TCollection_ExtendedString.hxx".}
proc isDifferent*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", header: "TCollection_ExtendedString.hxx".}
proc isLess*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc isLess*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc isGreater*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc isGreater*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc startsWith*(this: TCollectionExtendedString;
                theStartString: TCollectionExtendedString): bool {.noSideEffect,
    cdecl, importcpp: "StartsWith", header: "TCollection_ExtendedString.hxx".}
proc endsWith*(this: TCollectionExtendedString;
              theEndString: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "EndsWith", header: "TCollection_ExtendedString.hxx".}
proc isAscii*(this: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", header: "TCollection_ExtendedString.hxx".}
proc length*(this: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TCollection_ExtendedString.hxx".}
proc print*(this: TCollectionExtendedString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", header: "TCollection_ExtendedString.hxx".}
proc removeAll*(this: var TCollectionExtendedString; what: StandardExtCharacter) {.
    cdecl, importcpp: "RemoveAll", header: "TCollection_ExtendedString.hxx".}
proc remove*(this: var TCollectionExtendedString; where: cint; ahowmany: cint = 1) {.
    cdecl, importcpp: "Remove", header: "TCollection_ExtendedString.hxx".}
proc search*(this: TCollectionExtendedString; what: TCollectionExtendedString): cint {.
    noSideEffect, cdecl, importcpp: "Search", header: "TCollection_ExtendedString.hxx".}
proc searchFromEnd*(this: TCollectionExtendedString;
                   what: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "SearchFromEnd", header: "TCollection_ExtendedString.hxx".}
proc setValue*(this: var TCollectionExtendedString; where: cint;
              what: StandardExtCharacter) {.cdecl, importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc setValue*(this: var TCollectionExtendedString; where: cint;
              what: TCollectionExtendedString) {.cdecl, importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc split*(this: var TCollectionExtendedString; where: cint): TCollectionExtendedString {.
    cdecl, importcpp: "Split", header: "TCollection_ExtendedString.hxx".}
proc token*(this: TCollectionExtendedString; separators: StandardExtString;
           whichone: cint = 1): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Token", header: "TCollection_ExtendedString.hxx".}
proc toExtString*(this: TCollectionExtendedString): StandardExtString {.
    noSideEffect, cdecl, importcpp: "ToExtString", header: "TCollection_ExtendedString.hxx".}
proc trunc*(this: var TCollectionExtendedString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", header: "TCollection_ExtendedString.hxx".}
proc value*(this: TCollectionExtendedString; where: cint): StandardExtCharacter {.
    noSideEffect, cdecl, importcpp: "Value", header: "TCollection_ExtendedString.hxx".}
proc hashCode*(theString: TCollectionExtendedString; theUpperBound: cint): cint {.
    cdecl, importcpp: "TCollection_ExtendedString::HashCode(@)", header: "TCollection_ExtendedString.hxx".}
proc isEqual*(theString1: TCollectionExtendedString;
             theString2: TCollectionExtendedString): bool {.cdecl,
    importcpp: "TCollection_ExtendedString::IsEqual(@)", header: "TCollection_ExtendedString.hxx".}
proc toUTF8CString*(this: TCollectionExtendedString;
                   theCString: var StandardPCharacter): cint {.noSideEffect, cdecl,
    importcpp: "ToUTF8CString", header: "TCollection_ExtendedString.hxx".}
proc lengthOfCString*(this: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "LengthOfCString", header: "TCollection_ExtendedString.hxx".}
## ! Computes a hash code for the given extended string, in the range [1, theUpperBound]
## ! @param theExtendedString the extended string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theExtendedString: TCollectionExtendedString; theUpperBound: cint): cint {.
    cdecl.} =
  discard

