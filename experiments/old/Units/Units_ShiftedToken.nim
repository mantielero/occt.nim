##  Created on: 1992-11-05
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
discard "forward decl of Units_ShiftedToken"
discard "forward decl of Units_ShiftedToken"
type
  HandleC1C1* = Handle[UnitsShiftedToken]

## ! The  ShiftedToken class  inherits   from Token and
## ! describes tokens which have  a gap in  addition of
## ! the  multiplicative factor.   This kind  of  token
## ! allows  the  description of linear functions which
## ! do not pass through the origin, of the form :
## !
## ! y = ax  +b
## !
## ! where <x> and  <y>  are the unknown variables, <a>
## ! the mutiplicative factor, and <b> the gap relative
## ! to the ordinate axis.
## !
## ! An example is the  tranlation between the  Celsius
## ! and Fahrenheit degree of temperature.

type
  UnitsShiftedToken* {.importcpp: "Units_ShiftedToken",
                      header: "Units_ShiftedToken.hxx", bycopy.} = object of UnitsToken ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## and
                                                                                 ## returns
                                                                                 ## a
                                                                                 ## shifted
                                                                                 ## token.
                                                                                 ## <aword>
                                                                                 ## is
                                                                                 ## a
                                                                                 ##
                                                                                 ## !
                                                                                 ## string
                                                                                 ## containing
                                                                                 ## the
                                                                                 ## available
                                                                                 ## word,
                                                                                 ## <amean>
                                                                                 ## gives
                                                                                 ##
                                                                                 ## !
                                                                                 ## the
                                                                                 ## signification
                                                                                 ## of
                                                                                 ## the
                                                                                 ## token,
                                                                                 ## <avalue>
                                                                                 ## is
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## numeric
                                                                                 ## value
                                                                                 ## of
                                                                                 ## the
                                                                                 ## dimension,
                                                                                 ## <amove>
                                                                                 ## is
                                                                                 ## the
                                                                                 ## gap,
                                                                                 ##
                                                                                 ## !
                                                                                 ## and
                                                                                 ## <adimensions>
                                                                                 ## is
                                                                                 ## the
                                                                                 ## dimension
                                                                                 ## of
                                                                                 ## the
                                                                                 ## given
                                                                                 ## word
                                                                                 ##
                                                                                 ## !
                                                                                 ## <aword>.


proc constructUnitsShiftedToken*(aword: StandardCString; amean: StandardCString;
                                avalue: cfloat; amove: cfloat;
                                adimensions: Handle[UnitsDimensions]): UnitsShiftedToken {.
    constructor, importcpp: "Units_ShiftedToken(@)",
    header: "Units_ShiftedToken.hxx".}
proc creates*(this: UnitsShiftedToken): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Creates", header: "Units_ShiftedToken.hxx".}
proc move*(this: UnitsShiftedToken): cfloat {.noSideEffect, importcpp: "Move",
    header: "Units_ShiftedToken.hxx".}
proc multiplied*(this: UnitsShiftedToken; avalue: cfloat): cfloat {.noSideEffect,
    importcpp: "Multiplied", header: "Units_ShiftedToken.hxx".}
proc divided*(this: UnitsShiftedToken; avalue: cfloat): cfloat {.noSideEffect,
    importcpp: "Divided", header: "Units_ShiftedToken.hxx".}
proc dump*(this: UnitsShiftedToken; ashift: cint; alevel: cint) {.noSideEffect,
    importcpp: "Dump", header: "Units_ShiftedToken.hxx".}
type
  UnitsShiftedTokenbaseType* = UnitsToken

proc getTypeName*(): cstring {.importcpp: "Units_ShiftedToken::get_type_name(@)",
                            header: "Units_ShiftedToken.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_ShiftedToken::get_type_descriptor(@)",
    header: "Units_ShiftedToken.hxx".}
proc dynamicType*(this: UnitsShiftedToken): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_ShiftedToken.hxx".}

























