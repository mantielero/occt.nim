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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Units_Token, ../Standard/Standard_CString, ../Standard/Standard_Integer

discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Token"
discard "forward decl of Units_ShiftedToken"
discard "forward decl of Units_ShiftedToken"
type
  Handle_Units_ShiftedToken* = handle[Units_ShiftedToken]

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
  Units_ShiftedToken* {.importcpp: "Units_ShiftedToken",
                       header: "Units_ShiftedToken.hxx", bycopy.} = object of Units_Token ##
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


proc constructUnits_ShiftedToken*(aword: Standard_CString; amean: Standard_CString;
                                 avalue: Standard_Real; amove: Standard_Real;
                                 adimensions: handle[Units_Dimensions]): Units_ShiftedToken {.
    constructor, importcpp: "Units_ShiftedToken(@)",
    header: "Units_ShiftedToken.hxx".}
proc Creates*(this: Units_ShiftedToken): handle[Units_Token] {.noSideEffect,
    importcpp: "Creates", header: "Units_ShiftedToken.hxx".}
proc Move*(this: Units_ShiftedToken): Standard_Real {.noSideEffect,
    importcpp: "Move", header: "Units_ShiftedToken.hxx".}
proc Multiplied*(this: Units_ShiftedToken; avalue: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Multiplied", header: "Units_ShiftedToken.hxx".}
proc Divided*(this: Units_ShiftedToken; avalue: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Divided", header: "Units_ShiftedToken.hxx".}
proc Dump*(this: Units_ShiftedToken; ashift: Standard_Integer;
          alevel: Standard_Integer) {.noSideEffect, importcpp: "Dump",
                                    header: "Units_ShiftedToken.hxx".}
type
  Units_ShiftedTokenbase_type* = Units_Token

proc get_type_name*(): cstring {.importcpp: "Units_ShiftedToken::get_type_name(@)",
                              header: "Units_ShiftedToken.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_ShiftedToken::get_type_descriptor(@)",
    header: "Units_ShiftedToken.hxx".}
proc DynamicType*(this: Units_ShiftedToken): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_ShiftedToken.hxx".}