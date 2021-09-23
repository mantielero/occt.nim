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

import
  ../Standard/Standard, ../Standard/Standard_Type, TCollection_ExtendedString,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_ExtString, ../Standard/Standard_ExtCharacter,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_HExtendedString"
type
  Handle_TCollection_HExtendedString* = handle[TCollection_HExtendedString]

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
  TCollection_HExtendedString* {.importcpp: "TCollection_HExtendedString",
                                header: "TCollection_HExtendedString.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructTCollection_HExtendedString*(): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(message: Standard_CString): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(message: Standard_ExtString): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(aChar: Standard_ExtCharacter): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(length: Standard_Integer;
    filler: Standard_ExtCharacter): TCollection_HExtendedString {.constructor,
    importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(aString: TCollection_ExtendedString): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(
    aString: handle[TCollection_HAsciiString]): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc constructTCollection_HExtendedString*(
    aString: handle[TCollection_HExtendedString]): TCollection_HExtendedString {.
    constructor, importcpp: "TCollection_HExtendedString(@)",
    header: "TCollection_HExtendedString.hxx".}
proc AssignCat*(this: var TCollection_HExtendedString;
               other: handle[TCollection_HExtendedString]) {.
    importcpp: "AssignCat", header: "TCollection_HExtendedString.hxx".}
proc Cat*(this: TCollection_HExtendedString;
         other: handle[TCollection_HExtendedString]): handle[
    TCollection_HExtendedString] {.noSideEffect, importcpp: "Cat",
                                  header: "TCollection_HExtendedString.hxx".}
proc ChangeAll*(this: var TCollection_HExtendedString; aChar: Standard_ExtCharacter;
               NewChar: Standard_ExtCharacter) {.importcpp: "ChangeAll",
    header: "TCollection_HExtendedString.hxx".}
proc Clear*(this: var TCollection_HExtendedString) {.importcpp: "Clear",
    header: "TCollection_HExtendedString.hxx".}
proc IsEmpty*(this: TCollection_HExtendedString): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_HExtendedString.hxx".}
proc Insert*(this: var TCollection_HExtendedString; where: Standard_Integer;
            what: Standard_ExtCharacter) {.importcpp: "Insert",
    header: "TCollection_HExtendedString.hxx".}
proc Insert*(this: var TCollection_HExtendedString; where: Standard_Integer;
            what: handle[TCollection_HExtendedString]) {.importcpp: "Insert",
    header: "TCollection_HExtendedString.hxx".}
proc IsLess*(this: TCollection_HExtendedString;
            other: handle[TCollection_HExtendedString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_HExtendedString.hxx".}
proc IsGreater*(this: TCollection_HExtendedString;
               other: handle[TCollection_HExtendedString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_HExtendedString.hxx".}
proc IsAscii*(this: TCollection_HExtendedString): Standard_Boolean {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_HExtendedString.hxx".}
proc Length*(this: TCollection_HExtendedString): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TCollection_HExtendedString.hxx".}
proc Remove*(this: var TCollection_HExtendedString; where: Standard_Integer;
            ahowmany: Standard_Integer = 1) {.importcpp: "Remove",
    header: "TCollection_HExtendedString.hxx".}
proc RemoveAll*(this: var TCollection_HExtendedString; what: Standard_ExtCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_HExtendedString.hxx".}
proc SetValue*(this: var TCollection_HExtendedString; where: Standard_Integer;
              what: Standard_ExtCharacter) {.importcpp: "SetValue",
    header: "TCollection_HExtendedString.hxx".}
proc SetValue*(this: var TCollection_HExtendedString; where: Standard_Integer;
              what: handle[TCollection_HExtendedString]) {.importcpp: "SetValue",
    header: "TCollection_HExtendedString.hxx".}
proc Split*(this: var TCollection_HExtendedString; where: Standard_Integer): handle[
    TCollection_HExtendedString] {.importcpp: "Split",
                                  header: "TCollection_HExtendedString.hxx".}
proc Search*(this: TCollection_HExtendedString;
            what: handle[TCollection_HExtendedString]): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_HExtendedString.hxx".}
proc SearchFromEnd*(this: TCollection_HExtendedString;
                   what: handle[TCollection_HExtendedString]): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd",
    header: "TCollection_HExtendedString.hxx".}
proc ToExtString*(this: TCollection_HExtendedString): Standard_ExtString {.
    noSideEffect, importcpp: "ToExtString",
    header: "TCollection_HExtendedString.hxx".}
proc Token*(this: TCollection_HExtendedString; separators: Standard_ExtString;
           whichone: Standard_Integer = 1): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "Token", header: "TCollection_HExtendedString.hxx".}
proc Trunc*(this: var TCollection_HExtendedString; ahowmany: Standard_Integer) {.
    importcpp: "Trunc", header: "TCollection_HExtendedString.hxx".}
proc Value*(this: TCollection_HExtendedString; where: Standard_Integer): Standard_ExtCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_HExtendedString.hxx".}
proc String*(this: TCollection_HExtendedString): TCollection_ExtendedString {.
    noSideEffect, importcpp: "String", header: "TCollection_HExtendedString.hxx".}
proc Print*(this: TCollection_HExtendedString; astream: var Standard_OStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_HExtendedString.hxx".}
proc IsSameState*(this: TCollection_HExtendedString;
                 other: handle[TCollection_HExtendedString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameState",
    header: "TCollection_HExtendedString.hxx".}
type
  TCollection_HExtendedStringbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TCollection_HExtendedString::get_type_name(@)",
                              header: "TCollection_HExtendedString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TCollection_HExtendedString::get_type_descriptor(@)",
    header: "TCollection_HExtendedString.hxx".}
proc DynamicType*(this: TCollection_HExtendedString): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TCollection_HExtendedString.hxx".}