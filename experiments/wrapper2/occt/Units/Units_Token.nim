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

discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Token"
discard "forward decl of Units_Token"
type
  HandleUnitsToken* = Handle[UnitsToken]

## ! This class defines an elementary word contained in
## ! a Sentence object.

type
  UnitsToken* {.importcpp: "Units_Token", header: "Units_Token.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## and
                                                                                                  ## returns
                                                                                                  ## a
                                                                                                  ## empty
                                                                                                  ## token.
# 
# 
proc constructUnitsToken*(): UnitsToken {.constructor, importcpp: "Units_Token(@)",
                                       header: "Units_Token.hxx".}
proc constructUnitsToken*(aword: StandardCString): UnitsToken {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnitsToken*(atoken: Handle[UnitsToken]): UnitsToken {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnitsToken*(aword: StandardCString; amean: StandardCString): UnitsToken {.
    constructor, importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnitsToken*(aword: StandardCString; amean: StandardCString;
                         avalue: float): UnitsToken {.constructor,
    importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc constructUnitsToken*(aword: StandardCString; amean: StandardCString;
                         avalue: float; adimension: Handle[UnitsDimensions]): UnitsToken {.
    constructor, importcpp: "Units_Token(@)", header: "Units_Token.hxx".}
proc creates*(this: UnitsToken): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Creates", header: "Units_Token.hxx".}
proc length*(this: UnitsToken): int {.noSideEffect, importcpp: "Length",
                                  header: "Units_Token.hxx".}
proc word*(this: UnitsToken): TCollectionAsciiString {.noSideEffect,
    importcpp: "Word", header: "Units_Token.hxx".}
proc word*(this: var UnitsToken; aword: StandardCString) {.importcpp: "Word",
    header: "Units_Token.hxx".}
proc mean*(this: UnitsToken): TCollectionAsciiString {.noSideEffect,
    importcpp: "Mean", header: "Units_Token.hxx".}
proc mean*(this: var UnitsToken; amean: StandardCString) {.importcpp: "Mean",
    header: "Units_Token.hxx".}
proc value*(this: UnitsToken): float {.noSideEffect, importcpp: "Value",
                                   header: "Units_Token.hxx".}
proc value*(this: var UnitsToken; avalue: float) {.importcpp: "Value",
    header: "Units_Token.hxx".}
proc dimensions*(this: UnitsToken): Handle[UnitsDimensions] {.noSideEffect,
    importcpp: "Dimensions", header: "Units_Token.hxx".}
proc dimensions*(this: var UnitsToken; adimensions: Handle[UnitsDimensions]) {.
    importcpp: "Dimensions", header: "Units_Token.hxx".}
proc update*(this: var UnitsToken; amean: StandardCString) {.importcpp: "Update",
    header: "Units_Token.hxx".}
proc add*(this: UnitsToken; aninteger: int): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Add", header: "Units_Token.hxx".}
proc add*(this: UnitsToken; atoken: Handle[UnitsToken]): Handle[UnitsToken] {.
    noSideEffect, importcpp: "Add", header: "Units_Token.hxx".}
proc subtract*(this: UnitsToken; atoken: Handle[UnitsToken]): Handle[UnitsToken] {.
    noSideEffect, importcpp: "Subtract", header: "Units_Token.hxx".}
proc multiply*(this: UnitsToken; atoken: Handle[UnitsToken]): Handle[UnitsToken] {.
    noSideEffect, importcpp: "Multiply", header: "Units_Token.hxx".}
proc multiplied*(this: UnitsToken; avalue: float): float {.noSideEffect,
    importcpp: "Multiplied", header: "Units_Token.hxx".}
proc divide*(this: UnitsToken; atoken: Handle[UnitsToken]): Handle[UnitsToken] {.
    noSideEffect, importcpp: "Divide", header: "Units_Token.hxx".}
proc divided*(this: UnitsToken; avalue: float): float {.noSideEffect,
    importcpp: "Divided", header: "Units_Token.hxx".}
proc power*(this: UnitsToken; atoken: Handle[UnitsToken]): Handle[UnitsToken] {.
    noSideEffect, importcpp: "Power", header: "Units_Token.hxx".}
proc power*(this: UnitsToken; anexponent: float): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Power", header: "Units_Token.hxx".}
proc isEqual*(this: UnitsToken; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Units_Token.hxx".}
proc isEqual*(this: UnitsToken; atoken: Handle[UnitsToken]): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Units_Token.hxx".}
proc isNotEqual*(this: UnitsToken; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsNotEqual", header: "Units_Token.hxx".}
proc isNotEqual*(this: UnitsToken; atoken: Handle[UnitsToken]): bool {.noSideEffect,
    importcpp: "IsNotEqual", header: "Units_Token.hxx".}
proc isLessOrEqual*(this: UnitsToken; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsLessOrEqual", header: "Units_Token.hxx".}
proc isGreater*(this: UnitsToken; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsGreater", header: "Units_Token.hxx".}
proc isGreater*(this: UnitsToken; atoken: Handle[UnitsToken]): bool {.noSideEffect,
    importcpp: "IsGreater", header: "Units_Token.hxx".}
proc isGreaterOrEqual*(this: UnitsToken; atoken: Handle[UnitsToken]): bool {.
    noSideEffect, importcpp: "IsGreaterOrEqual", header: "Units_Token.hxx".}
proc dump*(this: UnitsToken; ashift: int; alevel: int) {.noSideEffect,
    importcpp: "Dump", header: "Units_Token.hxx".}
type
  UnitsTokenbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_Token::get_type_name(@)",
                            header: "Units_Token.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_Token::get_type_descriptor(@)", header: "Units_Token.hxx".}
proc dynamicType*(this: UnitsToken): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Token.hxx".}

