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


proc newTCollectionAsciiString*(): TCollectionAsciiString {.cdecl, constructor,
    importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(message: cstring): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(message: cstring; aLen: cint): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(aChar: cchar): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(length: cint; filler: cchar): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(value: cint): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(value: cfloat): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString; message: cchar): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString; message: cstring): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString;
                               message: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc newTCollectionAsciiString*(astring: TCollectionExtendedString;
                               replaceNonAscii: cchar = cchar(0)): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionAsciiString; other: cchar) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc `+=`*(this: var TCollectionAsciiString; other: cchar) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionAsciiString; other: cint) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc `+=`*(this: var TCollectionAsciiString; other: cint) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionAsciiString; other: cfloat) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc `+=`*(this: var TCollectionAsciiString; other: cfloat) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionAsciiString; other: cstring) {.cdecl,
    importcpp: "AssignCat", dynlib: tkmath.}
proc `+=`*(this: var TCollectionAsciiString; other: cstring) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc assignCat*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    cdecl, importcpp: "AssignCat", dynlib: tkmath.}
proc `+=`*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.cdecl,
    importcpp: "(# += #)", dynlib: tkmath.}
proc capitalize*(this: var TCollectionAsciiString) {.cdecl, importcpp: "Capitalize",
    dynlib: tkmath.}
proc cat*(this: TCollectionAsciiString; other: cchar): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionAsciiString; other: cchar): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc cat*(this: TCollectionAsciiString; other: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionAsciiString; other: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc cat*(this: TCollectionAsciiString; other: cfloat): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionAsciiString; other: cfloat): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc cat*(this: TCollectionAsciiString; other: cstring): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionAsciiString; other: cstring): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc cat*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", dynlib: tkmath.}
proc `+`*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", dynlib: tkmath.}
proc center*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "Center", dynlib: tkmath.}
proc changeAll*(this: var TCollectionAsciiString; aChar: cchar; newChar: cchar;
               caseSensitive: bool = true) {.cdecl, importcpp: "ChangeAll",
    dynlib: tkmath.}
proc clear*(this: var TCollectionAsciiString) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc copy*(this: var TCollectionAsciiString; fromwhere: cstring) {.cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc copy*(this: var TCollectionAsciiString; fromwhere: TCollectionAsciiString) {.
    cdecl, importcpp: "Copy", dynlib: tkmath.}
proc swap*(this: var TCollectionAsciiString; theOther: var TCollectionAsciiString) {.
    cdecl, importcpp: "Swap", dynlib: tkmath.}
proc destroyTCollectionAsciiString*(this: var TCollectionAsciiString) {.cdecl,
    importcpp: "#.~TCollection_AsciiString()", dynlib: tkmath.}
proc firstLocationInSet*(this: TCollectionAsciiString; set: TCollectionAsciiString;
                        fromIndex: cint; toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationInSet", dynlib: tkmath.}
proc firstLocationNotInSet*(this: TCollectionAsciiString;
                           set: TCollectionAsciiString; fromIndex: cint;
                           toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationNotInSet", dynlib: tkmath.}
proc insert*(this: var TCollectionAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "Insert", dynlib: tkmath.}
proc insert*(this: var TCollectionAsciiString; where: cint;
            what: TCollectionAsciiString) {.cdecl, importcpp: "Insert",
    dynlib: tkmath.}
proc insertAfter*(this: var TCollectionAsciiString; index: cint;
                 other: TCollectionAsciiString) {.cdecl, importcpp: "InsertAfter",
    dynlib: tkmath.}
proc insertBefore*(this: var TCollectionAsciiString; index: cint;
                  other: TCollectionAsciiString) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkmath.}
proc isEmpty*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc isEqual*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc `==`*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkmath.}
proc isEqual*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc `==`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkmath.}
proc isDifferent*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc isDifferent*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc isLess*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "IsLess", dynlib: tkmath.}
proc `<`*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", dynlib: tkmath.}
proc isLess*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", dynlib: tkmath.}
proc `<`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", dynlib: tkmath.}
proc isGreater*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsGreater", dynlib: tkmath.}
proc isGreater*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", dynlib: tkmath.}
proc startsWith*(this: TCollectionAsciiString;
                theStartString: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "StartsWith", dynlib: tkmath.}
proc endsWith*(this: TCollectionAsciiString; theEndString: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "EndsWith", dynlib: tkmath.}
proc integerValue*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "IntegerValue", dynlib: tkmath.}
proc isIntegerValue*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsIntegerValue", dynlib: tkmath.}
proc isRealValue*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsRealValue", dynlib: tkmath.}
proc isAscii*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", dynlib: tkmath.}
proc leftAdjust*(this: var TCollectionAsciiString) {.cdecl, importcpp: "LeftAdjust",
    dynlib: tkmath.}
proc leftJustify*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "LeftJustify", dynlib: tkmath.}
proc length*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc location*(this: TCollectionAsciiString; other: TCollectionAsciiString;
              fromIndex: cint; toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc location*(this: TCollectionAsciiString; n: cint; c: cchar; fromIndex: cint;
              toIndex: cint): cint {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc lowerCase*(this: var TCollectionAsciiString) {.cdecl, importcpp: "LowerCase",
    dynlib: tkmath.}
proc prepend*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    cdecl, importcpp: "Prepend", dynlib: tkmath.}
proc print*(this: TCollectionAsciiString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", dynlib: tkmath.}
proc read*(this: var TCollectionAsciiString; astream: var StandardIStream) {.cdecl,
    importcpp: "Read", dynlib: tkmath.}
proc realValue*(this: TCollectionAsciiString): cfloat {.noSideEffect, cdecl,
    importcpp: "RealValue", dynlib: tkmath.}
proc removeAll*(this: var TCollectionAsciiString; c: cchar; caseSensitive: bool) {.
    cdecl, importcpp: "RemoveAll", dynlib: tkmath.}
proc removeAll*(this: var TCollectionAsciiString; what: cchar) {.cdecl,
    importcpp: "RemoveAll", dynlib: tkmath.}
proc remove*(this: var TCollectionAsciiString; where: cint; ahowmany: cint = 1) {.cdecl,
    importcpp: "Remove", dynlib: tkmath.}
proc rightAdjust*(this: var TCollectionAsciiString) {.cdecl,
    importcpp: "RightAdjust", dynlib: tkmath.}
proc rightJustify*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "RightJustify", dynlib: tkmath.}
proc search*(this: TCollectionAsciiString; what: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Search", dynlib: tkmath.}
proc search*(this: TCollectionAsciiString; what: TCollectionAsciiString): cint {.
    noSideEffect, cdecl, importcpp: "Search", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionAsciiString; what: cstring): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", dynlib: tkmath.}
proc searchFromEnd*(this: TCollectionAsciiString; what: TCollectionAsciiString): cint {.
    noSideEffect, cdecl, importcpp: "SearchFromEnd", dynlib: tkmath.}
proc setValue*(this: var TCollectionAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setValue*(this: var TCollectionAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "SetValue", dynlib: tkmath.}
proc setValue*(this: var TCollectionAsciiString; where: cint;
              what: TCollectionAsciiString) {.cdecl, importcpp: "SetValue",
    dynlib: tkmath.}
proc split*(this: var TCollectionAsciiString; where: cint): TCollectionAsciiString {.
    cdecl, importcpp: "Split", dynlib: tkmath.}
proc subString*(this: TCollectionAsciiString; fromIndex: cint; toIndex: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SubString", dynlib: tkmath.}
proc toCString*(this: TCollectionAsciiString): cstring {.noSideEffect, cdecl,
    importcpp: "ToCString", dynlib: tkmath.}
proc token*(this: TCollectionAsciiString; separators: cstring = " \t";
           whichone: cint = 1): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Token", dynlib: tkmath.}
proc trunc*(this: var TCollectionAsciiString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", dynlib: tkmath.}
proc upperCase*(this: var TCollectionAsciiString) {.cdecl, importcpp: "UpperCase",
    dynlib: tkmath.}
proc usefullLength*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "UsefullLength", dynlib: tkmath.}
proc value*(this: TCollectionAsciiString; where: cint): cchar {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc hashCode*(theAsciiString: TCollectionAsciiString; theUpperBound: cint): cint {.
    cdecl, importcpp: "TCollection_AsciiString::HashCode(@)", dynlib: tkmath.}
proc isEqual*(string1: TCollectionAsciiString; string2: TCollectionAsciiString): bool {.
    cdecl, importcpp: "TCollection_AsciiString::IsEqual(@)", dynlib: tkmath.}
proc isEqual*(string1: TCollectionAsciiString; string2: cstring): bool {.cdecl,
    importcpp: "TCollection_AsciiString::IsEqual(@)", dynlib: tkmath.}
proc isSameString*(theString1: TCollectionAsciiString;
                  theString2: TCollectionAsciiString; theIsCaseSensitive: bool): bool {.
    cdecl, importcpp: "TCollection_AsciiString::IsSameString(@)", dynlib: tkmath.}