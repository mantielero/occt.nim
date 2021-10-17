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


proc newTCollectionExtendedString*(): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(astring: cstring; isMultiByte: bool = false): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(astring: StandardExtString): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(aChar: cchar): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(aChar: StandardExtCharacter): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(length: cint; filler: StandardExtCharacter): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(value: cint): TCollectionExtendedString {.cdecl,
    constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(value: cfloat): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(astring: TCollectionExtendedString): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc newTCollectionExtendedString*(astring: TCollectionAsciiString;
                                  isMultiByte: bool = true): TCollectionExtendedString {.
    cdecl, constructor, importcpp: "TCollection_ExtendedString(@)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionExtendedString;
               other: TCollectionExtendedString) {.cdecl, importcpp: "AssignCat",
    dynlib: tkmath.}
proc `+=`*(this: var TCollectionExtendedString; other: TCollectionExtendedString) {.
    cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionExtendedString; theChar: StandardUtf16Char) {.
    cdecl, importcpp: "AssignCat", dynlib: tkmath.}
proc cat*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionExtendedString; other: TCollectionExtendedString): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc changeAll*(this: var TCollectionExtendedString; aChar: StandardExtCharacter;
               newChar: StandardExtCharacter) {.cdecl, importcpp: "ChangeAll",
    dynlib: tkmath.}
proc clear*(this: var TCollectionExtendedString) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc copy*(this: var TCollectionExtendedString; fromwhere: TCollectionExtendedString) {.
    cdecl, importcpp: "Copy", dynlib: tkmath.}
proc swap*(this: var TCollectionExtendedString;
          theOther: var TCollectionExtendedString) {.cdecl, importcpp: "Swap",
    dynlib: tkmath.}
proc destroyTCollectionExtendedString*(this: var TCollectionExtendedString) {.cdecl,
    importcpp: "#.~TCollection_ExtendedString()", dynlib: tkmath.}
proc insert*(this: var TCollectionExtendedString; where: cint;
            what: StandardExtCharacter) {.cdecl, importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionExtendedString; where: cint;
            what: TCollectionExtendedString) {.cdecl, importcpp: "Insert",
    dynlib: tkmath.}
proc isEmpty*(this: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc isEqual*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc `==`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkmath.}
proc isEqual*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc `==`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkmath.}
proc isDifferent*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc isDifferent*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc isLess*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", dynlib: tkmath.}
proc `<`*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", dynlib: tkmath.}
proc isLess*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", dynlib: tkmath.}
proc `<`*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", dynlib: tkmath.}
proc isGreater*(this: TCollectionExtendedString; other: StandardExtString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", dynlib: tkmath.}
proc isGreater*(this: TCollectionExtendedString; other: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", dynlib: tkmath.}
proc startsWith*(this: TCollectionExtendedString;
                theStartString: TCollectionExtendedString): bool {.noSideEffect,
    cdecl, importcpp: "StartsWith", dynlib: tkmath.}
proc endsWith*(this: TCollectionExtendedString;
              theEndString: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "EndsWith", dynlib: tkmath.}
proc isAscii*(this: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", dynlib: tkmath.}
proc length*(this: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc print*(this: TCollectionExtendedString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", dynlib: tkmath.}
proc removeAll*(this: var TCollectionExtendedString; what: StandardExtCharacter) {.
    cdecl, importcpp: "RemoveAll", dynlib: tkmath.}
proc remove*(this: var TCollectionExtendedString; where: cint; ahowmany: cint = 1) {.
    cdecl, importcpp: "Remove", dynlib: tkmath.}
proc search*(this: TCollectionExtendedString; what: TCollectionExtendedString): cint {.
    noSideEffect, cdecl, importcpp: "Search", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionExtendedString;
                   what: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "SearchFromEnd", dynlib: tkmath.}
proc setValue*(this: var TCollectionExtendedString; where: cint;
              what: StandardExtCharacter) {.cdecl, importcpp: "SetValue",
    dynlib: tkmath.}
proc setValue*(this: var TCollectionExtendedString; where: cint;
              what: TCollectionExtendedString) {.cdecl, importcpp: "SetValue",
    dynlib: tkmath.}
proc split*(this: var TCollectionExtendedString; where: cint): TCollectionExtendedString {.
    cdecl, importcpp: "Split", dynlib: tkmath.}
proc token*(this: TCollectionExtendedString; separators: StandardExtString;
           whichone: cint = 1): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Token", dynlib: tkmath.}
proc toExtString*(this: TCollectionExtendedString): StandardExtString {.
    noSideEffect, cdecl, importcpp: "ToExtString", dynlib: tkmath.}
proc trunc*(this: var TCollectionExtendedString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", dynlib: tkmath.}
proc value*(this: TCollectionExtendedString; where: cint): StandardExtCharacter {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkmath.}
proc hashCode*(theString: TCollectionExtendedString; theUpperBound: cint): cint {.
    cdecl, importcpp: "TCollection_ExtendedString::HashCode(@)", dynlib: tkmath.}
proc isEqual*(theString1: TCollectionExtendedString;
             theString2: TCollectionExtendedString): bool {.cdecl,
    importcpp: "TCollection_ExtendedString::IsEqual(@)", dynlib: tkmath.}
proc toUTF8CString*(this: TCollectionExtendedString;
                   theCString: var StandardPCharacter): cint {.noSideEffect, cdecl,
    importcpp: "ToUTF8CString", dynlib: tkmath.}
proc lengthOfCString*(this: TCollectionExtendedString): cint {.noSideEffect, cdecl,
    importcpp: "LengthOfCString", dynlib: tkmath.}
## ! Computes a hash code for the given extended string, in the range [1, theUpperBound]
## ! @param theExtendedString the extended string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theExtendedString: TCollectionExtendedString; theUpperBound: cint): cint {.
    cdecl.} =
  discard
