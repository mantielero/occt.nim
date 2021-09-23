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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_PCharacter,
  ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Standard/Standard_Character, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  TCollection_AsciiString* {.importcpp: "TCollection_AsciiString",
                            header: "TCollection_AsciiString.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Initializes
                                                                                ## a
                                                                                ## AsciiString
                                                                                ## to
                                                                                ## an
                                                                                ## empty
                                                                                ## AsciiString.
    ## !< NULL-terminated string
    ## !< length in bytes (excluding terminating NULL symbol)


proc constructTCollection_AsciiString*(): TCollection_AsciiString {.constructor,
    importcpp: "TCollection_AsciiString(@)", header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(message: Standard_CString): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(message: Standard_CString;
                                      aLen: Standard_Integer): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(aChar: Standard_Character): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(length: Standard_Integer;
                                      filler: Standard_Character): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(value: Standard_Integer): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(value: Standard_Real): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(astring: TCollection_AsciiString): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor TCollection_AsciiString ( TCollection_AsciiString && theOther ) : mystring ( theOther . mystring ) , mylength ( theOther . mylength ) { theOther . mystring = NULL ; theOther . mylength = 0 ; } # [NewLine] ! Initializes a AsciiString with copy of another AsciiString
## ! concatenated with the message character. TCollection_AsciiString ( const TCollection_AsciiString & astring , const Standard_Character message ) ;
## Error: identifier expected, but got: ! Move constructor!!!

proc constructTCollection_AsciiString*(astring: TCollection_AsciiString;
                                      message: Standard_CString): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(astring: TCollection_AsciiString;
                                      message: TCollection_AsciiString): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
proc constructTCollection_AsciiString*(astring: TCollection_ExtendedString;
                                      replaceNonAscii: Standard_Character = 0): TCollection_AsciiString {.
    constructor, importcpp: "TCollection_AsciiString(@)",
    header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # ! defined ( _MSC_VER ) || defined ( _NATIVE_WCHAR_T_DEFINED ) [NewLine] ! Initialize UTF-8 Unicode string from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option. TCollection_AsciiString ( const Standard_WideChar * theStringUtf ) ;
## Error: identifier expected, but got: ! Initialize UTF-8 Unicode string from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option.!!!

proc AssignCat*(this: var TCollection_AsciiString; other: Standard_Character) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollection_AsciiString; other: Standard_Character) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc AssignCat*(this: var TCollection_AsciiString; other: Standard_Integer) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollection_AsciiString; other: Standard_Integer) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc AssignCat*(this: var TCollection_AsciiString; other: Standard_Real) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollection_AsciiString; other: Standard_Real) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc AssignCat*(this: var TCollection_AsciiString; other: Standard_CString) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollection_AsciiString; other: Standard_CString) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc AssignCat*(this: var TCollection_AsciiString; other: TCollection_AsciiString) {.
    importcpp: "AssignCat", header: "TCollection_AsciiString.hxx".}
proc `+=`*(this: var TCollection_AsciiString; other: TCollection_AsciiString) {.
    importcpp: "(# += #)", header: "TCollection_AsciiString.hxx".}
proc Capitalize*(this: var TCollection_AsciiString) {.importcpp: "Capitalize",
    header: "TCollection_AsciiString.hxx".}
proc Cat*(this: TCollection_AsciiString; other: Standard_Character): TCollection_AsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollection_AsciiString; other: Standard_Character): TCollection_AsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc Cat*(this: TCollection_AsciiString; other: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollection_AsciiString; other: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc Cat*(this: TCollection_AsciiString; other: Standard_Real): TCollection_AsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollection_AsciiString; other: Standard_Real): TCollection_AsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc Cat*(this: TCollection_AsciiString; other: Standard_CString): TCollection_AsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollection_AsciiString; other: Standard_CString): TCollection_AsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc Cat*(this: TCollection_AsciiString; other: TCollection_AsciiString): TCollection_AsciiString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_AsciiString.hxx".}
proc `+`*(this: TCollection_AsciiString; other: TCollection_AsciiString): TCollection_AsciiString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_AsciiString.hxx".}
proc Center*(this: var TCollection_AsciiString; Width: Standard_Integer;
            Filler: Standard_Character) {.importcpp: "Center",
                                        header: "TCollection_AsciiString.hxx".}
proc ChangeAll*(this: var TCollection_AsciiString; aChar: Standard_Character;
               NewChar: Standard_Character;
               CaseSensitive: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeAll", header: "TCollection_AsciiString.hxx".}
proc Clear*(this: var TCollection_AsciiString) {.importcpp: "Clear",
    header: "TCollection_AsciiString.hxx".}
proc Copy*(this: var TCollection_AsciiString; fromwhere: Standard_CString) {.
    importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc Copy*(this: var TCollection_AsciiString; fromwhere: TCollection_AsciiString) {.
    importcpp: "Copy", header: "TCollection_AsciiString.hxx".}
proc Swap*(this: var TCollection_AsciiString; theOther: var TCollection_AsciiString) {.
    importcpp: "Swap", header: "TCollection_AsciiString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move assignment operator TCollection_AsciiString & operator = ( TCollection_AsciiString && theOther ) { Swap ( theOther ) ; return * this ; } # [NewLine] ! Frees memory allocated by AsciiString. ~ TCollection_AsciiString ( ) ;
## Error: identifier expected, but got: ! Move assignment operator!!!

proc FirstLocationInSet*(this: TCollection_AsciiString;
                        Set: TCollection_AsciiString; FromIndex: Standard_Integer;
                        ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FirstLocationInSet",
    header: "TCollection_AsciiString.hxx".}
proc FirstLocationNotInSet*(this: TCollection_AsciiString;
                           Set: TCollection_AsciiString;
                           FromIndex: Standard_Integer; ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FirstLocationNotInSet",
    header: "TCollection_AsciiString.hxx".}
proc Insert*(this: var TCollection_AsciiString; where: Standard_Integer;
            what: Standard_Character) {.importcpp: "Insert",
                                      header: "TCollection_AsciiString.hxx".}
proc Insert*(this: var TCollection_AsciiString; where: Standard_Integer;
            what: Standard_CString) {.importcpp: "Insert",
                                    header: "TCollection_AsciiString.hxx".}
proc Insert*(this: var TCollection_AsciiString; where: Standard_Integer;
            what: TCollection_AsciiString) {.importcpp: "Insert",
    header: "TCollection_AsciiString.hxx".}
proc InsertAfter*(this: var TCollection_AsciiString; Index: Standard_Integer;
                 other: TCollection_AsciiString) {.importcpp: "InsertAfter",
    header: "TCollection_AsciiString.hxx".}
proc InsertBefore*(this: var TCollection_AsciiString; Index: Standard_Integer;
                  other: TCollection_AsciiString) {.importcpp: "InsertBefore",
    header: "TCollection_AsciiString.hxx".}
proc IsEmpty*(this: TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_AsciiString.hxx".}
proc IsEqual*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc IsEqual*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_AsciiString.hxx".}
proc `==`*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_AsciiString.hxx".}
proc IsDifferent*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc IsDifferent*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "TCollection_AsciiString.hxx".}
proc IsLess*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc IsLess*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_AsciiString.hxx".}
proc `<`*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_AsciiString.hxx".}
proc IsGreater*(this: TCollection_AsciiString; other: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc IsGreater*(this: TCollection_AsciiString; other: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_AsciiString.hxx".}
proc StartsWith*(this: TCollection_AsciiString;
                theStartString: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "StartsWith", header: "TCollection_AsciiString.hxx".}
proc EndsWith*(this: TCollection_AsciiString; theEndString: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "EndsWith", header: "TCollection_AsciiString.hxx".}
proc IntegerValue*(this: TCollection_AsciiString): Standard_Integer {.noSideEffect,
    importcpp: "IntegerValue", header: "TCollection_AsciiString.hxx".}
proc IsIntegerValue*(this: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsIntegerValue",
    header: "TCollection_AsciiString.hxx".}
proc IsRealValue*(this: TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsRealValue", header: "TCollection_AsciiString.hxx".}
proc IsAscii*(this: TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_AsciiString.hxx".}
proc LeftAdjust*(this: var TCollection_AsciiString) {.importcpp: "LeftAdjust",
    header: "TCollection_AsciiString.hxx".}
proc LeftJustify*(this: var TCollection_AsciiString; Width: Standard_Integer;
                 Filler: Standard_Character) {.importcpp: "LeftJustify",
    header: "TCollection_AsciiString.hxx".}
proc Length*(this: TCollection_AsciiString): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TCollection_AsciiString.hxx".}
proc Location*(this: TCollection_AsciiString; other: TCollection_AsciiString;
              FromIndex: Standard_Integer; ToIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Location", header: "TCollection_AsciiString.hxx".}
proc Location*(this: TCollection_AsciiString; N: Standard_Integer;
              C: Standard_Character; FromIndex: Standard_Integer;
              ToIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "Location", header: "TCollection_AsciiString.hxx".}
proc LowerCase*(this: var TCollection_AsciiString) {.importcpp: "LowerCase",
    header: "TCollection_AsciiString.hxx".}
proc Prepend*(this: var TCollection_AsciiString; other: TCollection_AsciiString) {.
    importcpp: "Prepend", header: "TCollection_AsciiString.hxx".}
proc Print*(this: TCollection_AsciiString; astream: var Standard_OStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_AsciiString.hxx".}
proc Read*(this: var TCollection_AsciiString; astream: var Standard_IStream) {.
    importcpp: "Read", header: "TCollection_AsciiString.hxx".}
proc RealValue*(this: TCollection_AsciiString): Standard_Real {.noSideEffect,
    importcpp: "RealValue", header: "TCollection_AsciiString.hxx".}
proc RemoveAll*(this: var TCollection_AsciiString; C: Standard_Character;
               CaseSensitive: Standard_Boolean) {.importcpp: "RemoveAll",
    header: "TCollection_AsciiString.hxx".}
proc RemoveAll*(this: var TCollection_AsciiString; what: Standard_Character) {.
    importcpp: "RemoveAll", header: "TCollection_AsciiString.hxx".}
proc Remove*(this: var TCollection_AsciiString; where: Standard_Integer;
            ahowmany: Standard_Integer = 1) {.importcpp: "Remove",
    header: "TCollection_AsciiString.hxx".}
proc RightAdjust*(this: var TCollection_AsciiString) {.importcpp: "RightAdjust",
    header: "TCollection_AsciiString.hxx".}
proc RightJustify*(this: var TCollection_AsciiString; Width: Standard_Integer;
                  Filler: Standard_Character) {.importcpp: "RightJustify",
    header: "TCollection_AsciiString.hxx".}
proc Search*(this: TCollection_AsciiString; what: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc Search*(this: TCollection_AsciiString; what: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_AsciiString.hxx".}
proc SearchFromEnd*(this: TCollection_AsciiString; what: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc SearchFromEnd*(this: TCollection_AsciiString; what: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd", header: "TCollection_AsciiString.hxx".}
proc SetValue*(this: var TCollection_AsciiString; where: Standard_Integer;
              what: Standard_Character) {.importcpp: "SetValue",
                                        header: "TCollection_AsciiString.hxx".}
proc SetValue*(this: var TCollection_AsciiString; where: Standard_Integer;
              what: Standard_CString) {.importcpp: "SetValue",
                                      header: "TCollection_AsciiString.hxx".}
proc SetValue*(this: var TCollection_AsciiString; where: Standard_Integer;
              what: TCollection_AsciiString) {.importcpp: "SetValue",
    header: "TCollection_AsciiString.hxx".}
proc Split*(this: var TCollection_AsciiString; where: Standard_Integer): TCollection_AsciiString {.
    importcpp: "Split", header: "TCollection_AsciiString.hxx".}
proc SubString*(this: TCollection_AsciiString; FromIndex: Standard_Integer;
               ToIndex: Standard_Integer): TCollection_AsciiString {.noSideEffect,
    importcpp: "SubString", header: "TCollection_AsciiString.hxx".}
proc ToCString*(this: TCollection_AsciiString): Standard_CString {.noSideEffect,
    importcpp: "ToCString", header: "TCollection_AsciiString.hxx".}
proc Token*(this: TCollection_AsciiString; separators: Standard_CString = " \t";
           whichone: Standard_Integer = 1): TCollection_AsciiString {.noSideEffect,
    importcpp: "Token", header: "TCollection_AsciiString.hxx".}
proc Trunc*(this: var TCollection_AsciiString; ahowmany: Standard_Integer) {.
    importcpp: "Trunc", header: "TCollection_AsciiString.hxx".}
proc UpperCase*(this: var TCollection_AsciiString) {.importcpp: "UpperCase",
    header: "TCollection_AsciiString.hxx".}
proc UsefullLength*(this: TCollection_AsciiString): Standard_Integer {.noSideEffect,
    importcpp: "UsefullLength", header: "TCollection_AsciiString.hxx".}
proc Value*(this: TCollection_AsciiString; where: Standard_Integer): Standard_Character {.
    noSideEffect, importcpp: "Value", header: "TCollection_AsciiString.hxx".}
proc HashCode*(theAsciiString: TCollection_AsciiString;
              theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "TCollection_AsciiString::HashCode(@)",
    header: "TCollection_AsciiString.hxx".}
proc IsEqual*(string1: TCollection_AsciiString; string2: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "TCollection_AsciiString::IsEqual(@)",
    header: "TCollection_AsciiString.hxx".}
proc IsEqual*(string1: TCollection_AsciiString; string2: Standard_CString): Standard_Boolean {.
    importcpp: "TCollection_AsciiString::IsEqual(@)",
    header: "TCollection_AsciiString.hxx".}
proc IsSameString*(theString1: TCollection_AsciiString;
                  theString2: TCollection_AsciiString;
                  theIsCaseSensitive: Standard_Boolean): Standard_Boolean {.
    importcpp: "TCollection_AsciiString::IsSameString(@)",
    header: "TCollection_AsciiString.hxx".}