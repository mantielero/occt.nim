##  Created on: 1992-06-22
##  Created by: Gilles DEBARBOUILLE
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Token"
discard "forward decl of Units_Token"
type
  Handle_Units_Token* = handle[Units_Token]

## ! This class defines an elementary word contained in
## ! a Sentence object.

type
  Units_Token* {.importcpp: "Units_Token", header: "Units_Token.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## and
                                                                                                    ## returns
                                                                                                    ## a
                                                                                                    ## empty
                                                                                                    ## token.
    virtual* {.importc: "virtual".}: Standard_NODISCARD
    virtual* {.importc: "virtual".}: Standard_NODISCARD


proc constructUnits_Token*(): Units_Token {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnits_Token*(aword: Standard_CString): Units_Token {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnits_Token*(atoken: handle[Units_Token]): Units_Token {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnits_Token*(aword: Standard_CString; amean: Standard_CString): Units_Token {.
    constructor, importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnits_Token*(aword: Standard_CString; amean: Standard_CString;
                          avalue: Standard_Real): Units_Token {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnits_Token*(aword: Standard_CString; amean: Standard_CString;
                          avalue: Standard_Real;
                          adimension: handle[Units_Dimensions]): Units_Token {.
    constructor, importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc Creates*(this: Units_Token): handle[Units_Token] {.noSideEffect,
    importcpp: "Creates", header: "Units_Token.hxx".}
proc Length*(this: Units_Token): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Units_Token.hxx".}
proc Word*(this: Units_Token): TCollection_AsciiString {.noSideEffect,
    importcpp: "Word", header: "Units_Token.hxx".}
proc Word*(this: var Units_Token; aword: Standard_CString) {.importcpp: "Word",
    header: "Units_Token.hxx".}
proc Mean*(this: Units_Token): TCollection_AsciiString {.noSideEffect,
    importcpp: "Mean", header: "Units_Token.hxx".}
proc Mean*(this: var Units_Token; amean: Standard_CString) {.importcpp: "Mean",
    header: "Units_Token.hxx".}
proc Value*(this: Units_Token): Standard_Real {.noSideEffect, importcpp: "Value",
    header: "Units_Token.hxx".}
proc Value*(this: var Units_Token; avalue: Standard_Real) {.importcpp: "Value",
    header: "Units_Token.hxx".}
proc Dimensions*(this: Units_Token): handle[Units_Dimensions] {.noSideEffect,
    importcpp: "Dimensions", header: "Units_Token.hxx".}
proc Dimensions*(this: var Units_Token; adimensions: handle[Units_Dimensions]) {.
    importcpp: "Dimensions", header: "Units_Token.hxx".}
proc Update*(this: var Units_Token; amean: Standard_CString) {.importcpp: "Update",
    header: "Units_Token.hxx".}
proc Add*(this: Units_Token; aninteger: Standard_Integer): handle[Units_Token] {.
    noSideEffect, importcpp: "Add", header: "Units_Token.hxx".}
proc Add*(this: Units_Token; atoken: handle[Units_Token]): handle[Units_Token] {.
    noSideEffect, importcpp: "Add", header: "Units_Token.hxx".}
proc Subtract*(this: Units_Token; atoken: handle[Units_Token]): handle[Units_Token] {.
    noSideEffect, importcpp: "Subtract", header: "Units_Token.hxx".}
proc Multiply*(this: Units_Token; atoken: handle[Units_Token]): handle[Units_Token] {.
    noSideEffect, importcpp: "Multiply", header: "Units_Token.hxx".}
proc Multiplied*(this: Units_Token; avalue: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Multiplied", header: "Units_Token.hxx".}
proc Divide*(this: Units_Token; atoken: handle[Units_Token]): handle[Units_Token] {.
    noSideEffect, importcpp: "Divide", header: "Units_Token.hxx".}
proc Divided*(this: Units_Token; avalue: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "Divided", header: "Units_Token.hxx".}
proc Power*(this: Units_Token; atoken: handle[Units_Token]): handle[Units_Token] {.
    noSideEffect, importcpp: "Power", header: "Units_Token.hxx".}
proc Power*(this: Units_Token; anexponent: Standard_Real): handle[Units_Token] {.
    noSideEffect, importcpp: "Power", header: "Units_Token.hxx".}
proc IsEqual*(this: Units_Token; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Token.hxx".}
proc IsEqual*(this: Units_Token; atoken: handle[Units_Token]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Token.hxx".}
proc IsNotEqual*(this: Units_Token; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsNotEqual", header: "Units_Token.hxx".}
proc IsNotEqual*(this: Units_Token; atoken: handle[Units_Token]): Standard_Boolean {.
    noSideEffect, importcpp: "IsNotEqual", header: "Units_Token.hxx".}
proc IsLessOrEqual*(this: Units_Token; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsLessOrEqual", header: "Units_Token.hxx".}
proc IsGreater*(this: Units_Token; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "Units_Token.hxx".}
proc IsGreater*(this: Units_Token; atoken: handle[Units_Token]): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreater", header: "Units_Token.hxx".}
proc IsGreaterOrEqual*(this: Units_Token; atoken: handle[Units_Token]): Standard_Boolean {.
    noSideEffect, importcpp: "IsGreaterOrEqual", header: "Units_Token.hxx".}
proc Dump*(this: Units_Token; ashift: Standard_Integer; alevel: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "Units_Token.hxx".}
type
  Units_Tokenbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_Token::get_type_name(@)",
                              header: "Units_Token.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_Token::get_type_descriptor(@)", header: "Units_Token.hxx".}
proc DynamicType*(this: Units_Token): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Token.hxx".}