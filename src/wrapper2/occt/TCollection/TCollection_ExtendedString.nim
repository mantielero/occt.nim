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
  ../Standard/Standard_Handle, ../Standard/Standard_PExtCharacter,
  ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_ExtString,
  ../Standard/Standard_Character, ../Standard/Standard_ExtCharacter,
  ../Standard/Standard_Real, ../Standard/Standard_OStream,
  ../Standard/Standard_PCharacter

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of TCollection_AsciiString"
type
  TCollection_ExtendedString* {.importcpp: "TCollection_ExtendedString",
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


proc constructTCollection_ExtendedString*(): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(astring: Standard_CString;
    isMultiByte: Standard_Boolean = Standard_False): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(astring: Standard_ExtString): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # ! defined ( _MSC_VER ) || defined ( _NATIVE_WCHAR_T_DEFINED ) [NewLine] ! Initialize from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option. TCollection_ExtendedString ( const Standard_WideChar * theStringUtf ) ;
## Error: identifier expected, but got: ! Initialize from wide-char string considering it as Unicode string
## ! (the size of wide char is a platform-dependent - e.g. on Windows wchar_t is UTF-16).
## !
## ! This constructor is unavailable if application is built with deprecated msvc option "-Zc:wchar_t-",
## ! since OCCT itself is never built with this option.!!!

proc constructTCollection_ExtendedString*(aChar: Standard_Character): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(aChar: Standard_ExtCharacter): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(length: Standard_Integer;
    filler: Standard_ExtCharacter): TCollection_ExtendedString {.constructor,
    importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(value: Standard_Integer): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(value: Standard_Real): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
proc constructTCollection_ExtendedString*(astring: TCollection_ExtendedString): TCollection_ExtendedString {.
    constructor, importcpp: "TCollection_ExtendedString(@)",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor TCollection_ExtendedString ( TCollection_ExtendedString && theOther ) : mystring ( theOther . mystring ) , mylength ( theOther . mylength ) { theOther . mystring = NULL ; theOther . mylength = 0 ; } # [NewLine] ! Creation by converting an Ascii string to an extended
## ! string. The string is treated as having UTF-8 coding.
## ! If it is not a UTF-8 or multi byte then
## ! each character is copied to ExtCharacter. TCollection_ExtendedString ( const TCollection_AsciiString & astring , const Standard_Boolean isMultiByte = Standard_True ) ;
## Error: identifier expected, but got: ! Move constructor!!!

proc AssignCat*(this: var TCollection_ExtendedString;
               other: TCollection_ExtendedString) {.importcpp: "AssignCat",
    header: "TCollection_ExtendedString.hxx".}
proc `+=`*(this: var TCollection_ExtendedString; other: TCollection_ExtendedString) {.
    importcpp: "(# += #)", header: "TCollection_ExtendedString.hxx".}
proc AssignCat*(this: var TCollection_ExtendedString; theChar: Standard_Utf16Char) {.
    importcpp: "AssignCat", header: "TCollection_ExtendedString.hxx".}
proc Cat*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): TCollection_ExtendedString {.
    noSideEffect, importcpp: "Cat", header: "TCollection_ExtendedString.hxx".}
proc `+`*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): TCollection_ExtendedString {.
    noSideEffect, importcpp: "(# + #)", header: "TCollection_ExtendedString.hxx".}
proc ChangeAll*(this: var TCollection_ExtendedString; aChar: Standard_ExtCharacter;
               NewChar: Standard_ExtCharacter) {.importcpp: "ChangeAll",
    header: "TCollection_ExtendedString.hxx".}
proc Clear*(this: var TCollection_ExtendedString) {.importcpp: "Clear",
    header: "TCollection_ExtendedString.hxx".}
proc Copy*(this: var TCollection_ExtendedString;
          fromwhere: TCollection_ExtendedString) {.importcpp: "Copy",
    header: "TCollection_ExtendedString.hxx".}
proc Swap*(this: var TCollection_ExtendedString;
          theOther: var TCollection_ExtendedString) {.importcpp: "Swap",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move assignment operator TCollection_ExtendedString & operator = ( TCollection_ExtendedString && theOther ) { Swap ( theOther ) ; return * this ; } # [NewLine] ! Frees memory allocated by ExtendedString. ~ TCollection_ExtendedString ( ) ;
## Error: identifier expected, but got: ! Move assignment operator!!!

proc Insert*(this: var TCollection_ExtendedString; where: Standard_Integer;
            what: Standard_ExtCharacter) {.importcpp: "Insert",
    header: "TCollection_ExtendedString.hxx".}
proc Insert*(this: var TCollection_ExtendedString; where: Standard_Integer;
            what: TCollection_ExtendedString) {.importcpp: "Insert",
    header: "TCollection_ExtendedString.hxx".}
proc IsEmpty*(this: TCollection_ExtendedString): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_ExtendedString.hxx".}
proc IsEqual*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc IsEqual*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TCollection_ExtendedString.hxx".}
proc `==`*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TCollection_ExtendedString.hxx".}
proc IsDifferent*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent",
    header: "TCollection_ExtendedString.hxx".}
proc IsDifferent*(this: TCollection_ExtendedString;
                 other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent",
    header: "TCollection_ExtendedString.hxx".}
proc IsLess*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc IsLess*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "IsLess", header: "TCollection_ExtendedString.hxx".}
proc `<`*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "TCollection_ExtendedString.hxx".}
proc IsGreater*(this: TCollection_ExtendedString; other: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc IsGreater*(this: TCollection_ExtendedString; other: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "TCollection_ExtendedString.hxx".}
proc StartsWith*(this: TCollection_ExtendedString;
                theStartString: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "StartsWith", header: "TCollection_ExtendedString.hxx".}
proc EndsWith*(this: TCollection_ExtendedString;
              theEndString: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "EndsWith", header: "TCollection_ExtendedString.hxx".}
proc IsAscii*(this: TCollection_ExtendedString): Standard_Boolean {.noSideEffect,
    importcpp: "IsAscii", header: "TCollection_ExtendedString.hxx".}
proc Length*(this: TCollection_ExtendedString): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TCollection_ExtendedString.hxx".}
proc Print*(this: TCollection_ExtendedString; astream: var Standard_OStream) {.
    noSideEffect, importcpp: "Print", header: "TCollection_ExtendedString.hxx".}
proc RemoveAll*(this: var TCollection_ExtendedString; what: Standard_ExtCharacter) {.
    importcpp: "RemoveAll", header: "TCollection_ExtendedString.hxx".}
proc Remove*(this: var TCollection_ExtendedString; where: Standard_Integer;
            ahowmany: Standard_Integer = 1) {.importcpp: "Remove",
    header: "TCollection_ExtendedString.hxx".}
proc Search*(this: TCollection_ExtendedString; what: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "Search", header: "TCollection_ExtendedString.hxx".}
proc SearchFromEnd*(this: TCollection_ExtendedString;
                   what: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "SearchFromEnd",
    header: "TCollection_ExtendedString.hxx".}
proc SetValue*(this: var TCollection_ExtendedString; where: Standard_Integer;
              what: Standard_ExtCharacter) {.importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc SetValue*(this: var TCollection_ExtendedString; where: Standard_Integer;
              what: TCollection_ExtendedString) {.importcpp: "SetValue",
    header: "TCollection_ExtendedString.hxx".}
proc Split*(this: var TCollection_ExtendedString; where: Standard_Integer): TCollection_ExtendedString {.
    importcpp: "Split", header: "TCollection_ExtendedString.hxx".}
proc Token*(this: TCollection_ExtendedString; separators: Standard_ExtString;
           whichone: Standard_Integer = 1): TCollection_ExtendedString {.
    noSideEffect, importcpp: "Token", header: "TCollection_ExtendedString.hxx".}
proc ToExtString*(this: TCollection_ExtendedString): Standard_ExtString {.
    noSideEffect, importcpp: "ToExtString",
    header: "TCollection_ExtendedString.hxx".}
## !!!Ignored construct:  # _WIN32 [NewLine] ! Returns pointer to string as wchar_t* on Windows platform where wchar_t* is considered as UTF-16 string.
## ! This method is useful to pass string into wide-char system APIs,
## ! and makes sense only on Windows (other systems use UTF-8 and can miss wide-char functions at all). const Standard_WideChar * ToWideString ( ) const { return ( const Standard_WideChar * ) ToExtString ( ) ; } # [NewLine] ! Truncates <me> to <ahowmany> characters.
## ! Example:  me = "Hello Dolly" -> Trunc(3) -> me = "Hel"
## ! Exceptions
## ! Standard_OutOfRange if ahowmany is greater
## ! than the length of this string. void Trunc ( const Standard_Integer ahowmany ) ;
## Error: identifier expected, but got: ! Returns pointer to string as wchar_t* on Windows platform where wchar_t* is considered as UTF-16 string.
## ! This method is useful to pass string into wide-char system APIs,
## ! and makes sense only on Windows (other systems use UTF-8 and can miss wide-char functions at all).!!!

proc Value*(this: TCollection_ExtendedString; where: Standard_Integer): Standard_ExtCharacter {.
    noSideEffect, importcpp: "Value", header: "TCollection_ExtendedString.hxx".}
proc HashCode*(theString: TCollection_ExtendedString;
              theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "TCollection_ExtendedString::HashCode(@)",
    header: "TCollection_ExtendedString.hxx".}
proc IsEqual*(theString1: TCollection_ExtendedString;
             theString2: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "TCollection_ExtendedString::IsEqual(@)",
    header: "TCollection_ExtendedString.hxx".}
proc ToUTF8CString*(this: TCollection_ExtendedString;
                   theCString: var Standard_PCharacter): Standard_Integer {.
    noSideEffect, importcpp: "ToUTF8CString",
    header: "TCollection_ExtendedString.hxx".}
proc LengthOfCString*(this: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "LengthOfCString",
    header: "TCollection_ExtendedString.hxx".}
## ! Computes a hash code for the given extended string, in the range [1, theUpperBound]
## ! @param theExtendedString the extended string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theExtendedString: TCollection_ExtendedString;
              theUpperBound: Standard_Integer): Standard_Integer =
  discard
