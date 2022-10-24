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
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_ExtendedString"


proc newTCollectionAsciiString*(): TCollectionAsciiString {.cdecl, constructor,
    importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(message: cstring): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(message: cstring; aLen: cint): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(aChar: cchar): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(length: cint; filler: cchar): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(value: cint): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(value: cfloat): TCollectionAsciiString {.cdecl,
    constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString; message: cchar): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString; message: cstring): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(astring: TCollectionAsciiString;
                               message: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc newTCollectionAsciiString*(astring: TCollectionExtendedString;
                               replaceNonAscii: cchar = cchar(0)): TCollectionAsciiString {.
    cdecl, constructor, importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: cchar) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: cchar) {.cdecl,
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: cint) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: cint) {.cdecl,
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: cfloat) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: cfloat) {.cdecl,
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: cstring) {.cdecl,
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: cstring) {.cdecl,
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc assignCat*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    cdecl, importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.cdecl,
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc capitalize*(this: var TCollectionAsciiString) {.cdecl, importcpp: "Capitalize",
    header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: cchar): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: cchar): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: cfloat): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: cfloat): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: cstring): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: cstring): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc cat*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollectionAsciiString; other: TCollectionAsciiString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc center*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "Center", header: "TCollection_AsciiString.hxx".}
proc changeAll*(this: var TCollectionAsciiString; aChar: cchar; newChar: cchar;
               caseSensitive: bool = true) {.cdecl, importcpp: "ChangeAll",
    header: "TCollection_AsciiString.hxx".}
proc clear*(this: var TCollectionAsciiString) {.cdecl, importcpp: "Clear",
    header: "TCollection_AsciiString.hxx".}
proc copy*(this: var TCollectionAsciiString; fromwhere: cstring) {.cdecl,
    importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc copy*(this: var TCollectionAsciiString; fromwhere: TCollectionAsciiString) {.
    cdecl, importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc swap*(this: var TCollectionAsciiString; theOther: var TCollectionAsciiString) {.
    cdecl, importcpp: "Swap", header: "TCollection_AsciiString.hxx".}
proc destroyTCollectionAsciiString*(this: var TCollectionAsciiString) {.cdecl,
    importcpp: "#.~TCollection_AsciiString()", header: "TCollection_AsciiString.hxx".}
proc firstLocationInSet*(this: TCollectionAsciiString; set: TCollectionAsciiString;
                        fromIndex: cint; toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationInSet", header: "TCollection_AsciiString.hxx".}
proc firstLocationNotInSet*(this: TCollectionAsciiString;
                           set: TCollectionAsciiString; fromIndex: cint;
                           toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "FirstLocationNotInSet", header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "Insert", header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "Insert", header: "TCollection_AsciiString.hxx".}
proc insert*(this: var TCollectionAsciiString; where: cint;
            what: TCollectionAsciiString) {.cdecl, importcpp: "Insert",
    header: "TCollection_AsciiString.hxx".}
proc insertAfter*(this: var TCollectionAsciiString; index: cint;
                 other: TCollectionAsciiString) {.cdecl, importcpp: "InsertAfter",
    header: "TCollection_AsciiString.hxx".}
proc insertBefore*(this: var TCollectionAsciiString; index: cint;
                  other: TCollectionAsciiString) {.cdecl,
    importcpp: "InsertBefore", header: "TCollection_AsciiString.hxx".}
proc isEmpty*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TCollection_AsciiString.hxx".}
proc isEqual*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc isEqual*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc isDifferent*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc isDifferent*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc isLess*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc isLess*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc isGreater*(this: TCollectionAsciiString; other: cstring): bool {.noSideEffect,
    cdecl, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc isGreater*(this: TCollectionAsciiString; other: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc startsWith*(this: TCollectionAsciiString;
                theStartString: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "StartsWith", header: "TCollection_AsciiString.hxx".}
proc endsWith*(this: TCollectionAsciiString; theEndString: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "EndsWith", header: "TCollection_AsciiString.hxx".}
proc integerValue*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "IntegerValue", header: "TCollection_AsciiString.hxx".}
proc isIntegerValue*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsIntegerValue", header: "TCollection_AsciiString.hxx".}
proc isRealValue*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsRealValue", header: "TCollection_AsciiString.hxx".}
proc isAscii*(this: TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "IsAscii", header: "TCollection_AsciiString.hxx".}
proc leftAdjust*(this: var TCollectionAsciiString) {.cdecl, importcpp: "LeftAdjust",
    header: "TCollection_AsciiString.hxx".}
proc leftJustify*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.cdecl,
    importcpp: "LeftJustify", header: "TCollection_AsciiString.hxx".}
proc length*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TCollection_AsciiString.hxx".}
proc location*(this: TCollectionAsciiString; other: TCollectionAsciiString;
              fromIndex: cint; toIndex: cint): cint {.noSideEffect, cdecl,
    importcpp: "Location", header: "TCollection_AsciiString.hxx".}
proc location*(this: TCollectionAsciiString; n: cint; c: cchar; fromIndex: cint;
              toIndex: cint): cint {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "TCollection_AsciiString.hxx".}
proc lowerCase*(this: var TCollectionAsciiString) {.cdecl, importcpp: "LowerCase",
    header: "TCollection_AsciiString.hxx".}
proc prepend*(this: var TCollectionAsciiString; other: TCollectionAsciiString) {.
    cdecl, importcpp: "Prepend", header: "TCollection_AsciiString.hxx".}
proc print*(this: TCollectionAsciiString; astream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Print", header: "TCollection_AsciiString.hxx".}
proc read*(this: var TCollectionAsciiString; astream: var StandardIStream) {.cdecl,
    importcpp: "Read", header: "TCollection_AsciiString.hxx".}
proc realValue*(this: TCollectionAsciiString): cfloat {.noSideEffect, cdecl,
    importcpp: "RealValue", header: "TCollection_AsciiString.hxx".}
proc removeAll*(this: var TCollectionAsciiString; c: cchar; caseSensitive: bool) {.
    cdecl, importcpp: "RemoveAll", header: "TCollection_AsciiString.hxx".}
proc removeAll*(this: var TCollectionAsciiString; what: cchar) {.cdecl,
    importcpp: "RemoveAll", header: "TCollection_AsciiString.hxx".}
proc remove*(this: var TCollectionAsciiString; where: cint; ahowmany: cint = 1) {.cdecl,
    importcpp: "Remove", header: "TCollection_AsciiString.hxx".}
proc rightAdjust*(this: var TCollectionAsciiString) {.cdecl,
    importcpp: "RightAdjust", header: "TCollection_AsciiString.hxx".}
proc rightJustify*(this: var TCollectionAsciiString; width: cint; filler: cchar) {.
    cdecl, importcpp: "RightJustify", header: "TCollection_AsciiString.hxx".}
proc search*(this: TCollectionAsciiString; what: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc search*(this: TCollectionAsciiString; what: TCollectionAsciiString): cint {.
    noSideEffect, cdecl, importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc searchFromEnd*(this: TCollectionAsciiString; what: cstring): cint {.noSideEffect,
    cdecl, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc searchFromEnd*(this: TCollectionAsciiString; what: TCollectionAsciiString): cint {.
    noSideEffect, cdecl, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: cint; what: cchar) {.cdecl,
    importcpp: "SetValue", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: cint; what: cstring) {.cdecl,
    importcpp: "SetValue", header: "TCollection_AsciiString.hxx".}
proc setValue*(this: var TCollectionAsciiString; where: cint;
              what: TCollectionAsciiString) {.cdecl, importcpp: "SetValue",
    header: "TCollection_AsciiString.hxx".}
proc split*(this: var TCollectionAsciiString; where: cint): TCollectionAsciiString {.
    cdecl, importcpp: "Split", header: "TCollection_AsciiString.hxx".}
proc subString*(this: TCollectionAsciiString; fromIndex: cint; toIndex: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SubString", header: "TCollection_AsciiString.hxx".}
proc toCString*(this: TCollectionAsciiString): cstring {.noSideEffect, cdecl,
    importcpp: "ToCString", header: "TCollection_AsciiString.hxx".}
proc token*(this: TCollectionAsciiString; separators: cstring = " \t";
           whichone: cint = 1): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Token", header: "TCollection_AsciiString.hxx".}
proc trunc*(this: var TCollectionAsciiString; ahowmany: cint) {.cdecl,
    importcpp: "Trunc", header: "TCollection_AsciiString.hxx".}
proc upperCase*(this: var TCollectionAsciiString) {.cdecl, importcpp: "UpperCase",
    header: "TCollection_AsciiString.hxx".}
proc usefullLength*(this: TCollectionAsciiString): cint {.noSideEffect, cdecl,
    importcpp: "UsefullLength", header: "TCollection_AsciiString.hxx".}
proc value*(this: TCollectionAsciiString; where: cint): cchar {.noSideEffect, cdecl,
    importcpp: "Value", header: "TCollection_AsciiString.hxx".}
proc hashCode*(theAsciiString: TCollectionAsciiString; theUpperBound: cint): cint {.
    cdecl, importcpp: "TCollection_AsciiString::HashCode(@)", header: "TCollection_AsciiString.hxx".}
proc isEqual*(string1: TCollectionAsciiString; string2: TCollectionAsciiString): bool {.
    cdecl, importcpp: "TCollection_AsciiString::IsEqual(@)", header: "TCollection_AsciiString.hxx".}
proc isEqual*(string1: TCollectionAsciiString; string2: cstring): bool {.cdecl,
    importcpp: "TCollection_AsciiString::IsEqual(@)", header: "TCollection_AsciiString.hxx".}
proc isSameString*(theString1: TCollectionAsciiString;
                  theString2: TCollectionAsciiString; theIsCaseSensitive: bool): bool {.
    cdecl, importcpp: "TCollection_AsciiString::IsSameString(@)", header: "TCollection_AsciiString.hxx".}
