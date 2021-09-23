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

import
  ../Standard/Standard, ../Standard/Standard_Type, TCollection_AsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Character, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HAsciiString"
type
  Handle_TCollection_HAsciiString* = handle[TCollection_HAsciiString]

## ! A variable-length sequence of ASCII characters
## ! (normal 8-bit character type). It provides editing
## ! operations with built-in memory management to
## ! make HAsciiString objects easier to use than ordinary character arrays.
## ! HAsciiString objects are handles to strings.
## ! -   HAsciiString strings may be shared by several objects.
## ! -   You may use an AsciiString object to get the actual string.
## ! Note: HAsciiString objects use an AsciiString string as a field.

type
  TCollection_HAsciiString* {.importcpp: "TCollection_HAsciiString",
                             header: "TCollection_HAsciiString.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## a
                                                                                                      ## HAsciiString
                                                                                                      ## to
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## AsciiString.


proc constructTCollection_HAsciiString*(): TCollection_HAsciiString {.constructor,
    importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(message: Standard_CString): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(aChar: Standard_Character): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(length: Standard_Integer;
                                       filler: Standard_Character): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(value: Standard_Integer): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(value: Standard_Real): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(aString: TCollection_AsciiString): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(aString: handle[TCollection_HAsciiString]): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc constructTCollection_HAsciiString*(aString: handle[
    TCollection_HExtendedString]; replaceNonAscii: Standard_Character): TCollection_HAsciiString {.
    constructor, importcpp: "TCollection_HAsciiString(@)",
    header: "TCollection_HAsciiString.hxx".}
proc AssignCat*(this: var TCollection_HAsciiString; other: Standard_CString) {.
    importcpp: "AssignCat", header: "TCollection_HAsciiString.hxx".}
proc AssignCat*(this: var TCollection_HAsciiString;
               other: handle[TCollection_HAsciiString]) {.importcpp: "AssignCat",
    header: "TCollection_HAsciiString.hxx".}
proc Capitalize*(this: var TCollection_HAsciiString) {.importcpp: "Capitalize",
    header: "TCollection_HAsciiString.hxx".}
proc Cat*(this: TCollection_HAsciiString; other: Standard_CString): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Cat",
                               header: "TCollection_HAsciiString.hxx".}
proc Cat*(this: TCollection_HAsciiString; other: handle[TCollection_HAsciiString]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Cat",
                               header: "TCollection_HAsciiString.hxx".}
proc Center*(this: var TCollection_HAsciiString; Width: Standard_Integer;
            Filler: Standard_Character) {.importcpp: "Center",
                                        header: "TCollection_HAsciiString.hxx".}
proc ChangeAll*(this: var TCollection_HAsciiString; aChar: Standard_Character;
               NewChar: Standard_Character;
               CaseSensitive: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeAll", header: "TCollection_HAsciiString.hxx".}
proc Clear*(this: var TCollection_HAsciiString) {.importcpp: "Clear",
    header: "TCollection_HAsciiString.hxx".}
proc FirstLocationInSet*(this: TCollection_HAsciiString;
                        Set: handle[TCollection_HAsciiString];
                        FromIndex: Standard_Integer; ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FirstLocationInSet",
    header: "TCollection_HAsciiString.hxx".}
proc FirstLocationNotInSet*(this: TCollection_HAsciiString;
                           Set: handle[TCollection_HAsciiString];
                           FromIndex: Standard_Integer; ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FirstLocationNotInSet",
    header: "TCollection_HAsciiString.hxx".}
proc Insert*(this: var TCollection_HAsciiString; where: Standard_Integer;
            what: Standard_Character) {.importcpp: "Insert",
                                      header: "TCollection_HAsciiString.hxx".}
proc Insert*(this: var TCollection_HAsciiString; where: Standard_Integer;
            what: Standard_CString) {.importcpp: "Insert",
                                    header: "TCollection_HAsciiString.hxx".}
proc Insert*(this: var TCollection_HAsciiString; where: Standard_Integer;
            what: handle[TCollection_HAsciiString]) {.importcpp: "Insert",
    header: "TCollection_HAsciiString.hxx".}
proc InsertAfter*(this: var TCollection_HAsciiString; Index: Standard_Integer;
                 other: handle[TCollection_HAsciiString]) {.
    importcpp: "InsertAfter", header: "TCollection_HAsciiString.hxx".}
proc InsertBefore*(this: var TCollection_HAsciiString; Index: Standard_Integer;
                  other: handle[TCollection_HAsciiString]) {.
    importcpp: "InsertBefore", header: "TCollection_HAsciiString.hxx".}
proc IsEmpty*(this: TCollection_HAsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_HAsciiString.hxx".}
proc IsLess*(this: TCollection_HAsciiString;
            other: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_HAsciiString.hxx".}
proc IsGreater*(this: TCollection_HAsciiString;
               other: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_HAsciiString.hxx".}
proc IntegerValue*(this: TCollection_HAsciiString): Standard_Integer {.noSideEffect,
    importcpp: "IntegerValue", header: "TCollection_HAsciiString.hxx".}
proc IsIntegerValue*(this: TCollection_HAsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsIntegerValue",
    header: "TCollection_HAsciiString.hxx".}
proc IsRealValue*(this: TCollection_HAsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsRealValue", header: "TCollection_HAsciiString.hxx".}
proc IsAscii*(this: TCollection_HAsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_HAsciiString.hxx".}
proc IsDifferent*(this: TCollection_HAsciiString;
                 S: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_HAsciiString.hxx".}
proc IsSameString*(this: TCollection_HAsciiString;
                  S: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc IsSameString*(this: TCollection_HAsciiString;
                  S: handle[TCollection_HAsciiString];
                  CaseSensitive: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameString", header: "TCollection_HAsciiString.hxx".}
proc LeftAdjust*(this: var TCollection_HAsciiString) {.importcpp: "LeftAdjust",
    header: "TCollection_HAsciiString.hxx".}
proc LeftJustify*(this: var TCollection_HAsciiString; Width: Standard_Integer;
                 Filler: Standard_Character) {.importcpp: "LeftJustify",
    header: "TCollection_HAsciiString.hxx".}
proc Length*(this: TCollection_HAsciiString): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TCollection_HAsciiString.hxx".}
proc Location*(this: TCollection_HAsciiString;
              other: handle[TCollection_HAsciiString];
              FromIndex: Standard_Integer; ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Location", header: "TCollection_HAsciiString.hxx".}
proc Location*(this: TCollection_HAsciiString; N: Standard_Integer;
              C: Standard_Character; FromIndex: Standard_Integer;
              ToIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "Location", header: "TCollection_HAsciiString.hxx".}
proc LowerCase*(this: var TCollection_HAsciiString) {.importcpp: "LowerCase",
    header: "TCollection_HAsciiString.hxx".}
proc Prepend*(this: var TCollection_HAsciiString;
             other: handle[TCollection_HAsciiString]) {.importcpp: "Prepend",
    header: "TCollection_HAsciiString.hxx".}
proc Print*(this: TCollection_HAsciiString; astream: var Standard_OStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_HAsciiString.hxx".}
proc RealValue*(this: TCollection_HAsciiString): Standard_Real {.noSideEffect,
    importcpp: "RealValue", header: "TCollection_HAsciiString.hxx".}
proc RemoveAll*(this: var TCollection_HAsciiString; C: Standard_Character;
               CaseSensitive: Standard_Boolean) {.importcpp: "RemoveAll",
    header: "TCollection_HAsciiString.hxx".}
proc RemoveAll*(this: var TCollection_HAsciiString; what: Standard_Character) {.
    importcpp: "RemoveAll", header: "TCollection_HAsciiString.hxx".}
proc Remove*(this: var TCollection_HAsciiString; where: Standard_Integer;
            ahowmany: Standard_Integer = 1) {.importcpp: "Remove",
    header: "TCollection_HAsciiString.hxx".}
proc RightAdjust*(this: var TCollection_HAsciiString) {.importcpp: "RightAdjust",
    header: "TCollection_HAsciiString.hxx".}
proc RightJustify*(this: var TCollection_HAsciiString; Width: Standard_Integer;
                  Filler: Standard_Character) {.importcpp: "RightJustify",
    header: "TCollection_HAsciiString.hxx".}
proc Search*(this: TCollection_HAsciiString; what: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc Search*(this: TCollection_HAsciiString; what: handle[TCollection_HAsciiString]): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_HAsciiString.hxx".}
proc SearchFromEnd*(this: TCollection_HAsciiString; what: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd",
    header: "TCollection_HAsciiString.hxx".}
proc SearchFromEnd*(this: TCollection_HAsciiString;
                   what: handle[TCollection_HAsciiString]): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd",
    header: "TCollection_HAsciiString.hxx".}
proc SetValue*(this: var TCollection_HAsciiString; where: Standard_Integer;
              what: Standard_Character) {.importcpp: "SetValue",
                                        header: "TCollection_HAsciiString.hxx".}
proc SetValue*(this: var TCollection_HAsciiString; where: Standard_Integer;
              what: Standard_CString) {.importcpp: "SetValue",
                                      header: "TCollection_HAsciiString.hxx".}
proc SetValue*(this: var TCollection_HAsciiString; where: Standard_Integer;
              what: handle[TCollection_HAsciiString]) {.importcpp: "SetValue",
    header: "TCollection_HAsciiString.hxx".}
proc Split*(this: var TCollection_HAsciiString; where: Standard_Integer): handle[
    TCollection_HAsciiString] {.importcpp: "Split",
                               header: "TCollection_HAsciiString.hxx".}
proc SubString*(this: TCollection_HAsciiString; FromIndex: Standard_Integer;
               ToIndex: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "SubString", header: "TCollection_HAsciiString.hxx".}
proc ToCString*(this: TCollection_HAsciiString): Standard_CString {.noSideEffect,
    importcpp: "ToCString", header: "TCollection_HAsciiString.hxx".}
proc Token*(this: TCollection_HAsciiString; separators: Standard_CString = " \t";
           whichone: Standard_Integer = 1): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Token", header: "TCollection_HAsciiString.hxx".}
proc Trunc*(this: var TCollection_HAsciiString; ahowmany: Standard_Integer) {.
    importcpp: "Trunc", header: "TCollection_HAsciiString.hxx".}
proc UpperCase*(this: var TCollection_HAsciiString) {.importcpp: "UpperCase",
    header: "TCollection_HAsciiString.hxx".}
proc UsefullLength*(this: TCollection_HAsciiString): Standard_Integer {.
    noSideEffect, importcpp: "UsefullLength",
    header: "TCollection_HAsciiString.hxx".}
proc Value*(this: TCollection_HAsciiString; where: Standard_Integer): Standard_Character {.
    noSideEffect, importcpp: "Value", header: "TCollection_HAsciiString.hxx".}
proc String*(this: TCollection_HAsciiString): TCollection_AsciiString {.
    noSideEffect, importcpp: "String", header: "TCollection_HAsciiString.hxx".}
proc IsSameState*(this: TCollection_HAsciiString;
                 other: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameState", header: "TCollection_HAsciiString.hxx".}
type
  TCollection_HAsciiStringbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TCollection_HAsciiString::get_type_name(@)",
                              header: "TCollection_HAsciiString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TCollection_HAsciiString::get_type_descriptor(@)",
    header: "TCollection_HAsciiString.hxx".}
proc DynamicType*(this: TCollection_HAsciiString): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TCollection_HAsciiString.hxx".}