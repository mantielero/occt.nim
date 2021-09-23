##  Created on: 1992-11-04
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
  Units_Unit, ../Standard/Standard_CString, ../Standard/Standard_Integer

discard "forward decl of Units_Quantity"
discard "forward decl of Units_Token"
discard "forward decl of Units_ShiftedUnit"
discard "forward decl of Units_ShiftedUnit"
type
  Handle_Units_ShiftedUnit* = handle[Units_ShiftedUnit]

## ! This class is useful   to describe  units  with  a
## ! shifted origin in relation to another unit. A well
## ! known example  is the  Celsius degrees in relation
## ! to Kelvin degrees. The shift of the Celsius origin
## ! is 273.15 Kelvin degrees.

type
  Units_ShiftedUnit* {.importcpp: "Units_ShiftedUnit",
                      header: "Units_ShiftedUnit.hxx", bycopy.} = object of Units_Unit ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## and
                                                                                ## returns
                                                                                ## a
                                                                                ## shifted
                                                                                ## unit.
                                                                                ## <aname>
                                                                                ## is
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## name
                                                                                ## of
                                                                                ## the
                                                                                ## unit,
                                                                                ## <asymbol>
                                                                                ## is
                                                                                ## the
                                                                                ## usual
                                                                                ## abbreviation
                                                                                ##
                                                                                ## !
                                                                                ## of
                                                                                ## the
                                                                                ## unit,
                                                                                ## <avalue>
                                                                                ## is
                                                                                ## the
                                                                                ## value
                                                                                ## in
                                                                                ## relation
                                                                                ## to
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## International
                                                                                ## System
                                                                                ## of
                                                                                ## Units,
                                                                                ## and
                                                                                ## <amove>
                                                                                ## is
                                                                                ## the
                                                                                ## gap
                                                                                ##
                                                                                ## !
                                                                                ## in
                                                                                ## relation
                                                                                ## to
                                                                                ## another
                                                                                ## unit.
                                                                                ##
                                                                                ## !
                                                                                ##
                                                                                ## !
                                                                                ## For
                                                                                ## example
                                                                                ## Celcius
                                                                                ## dregee
                                                                                ## of
                                                                                ## temperature
                                                                                ## is
                                                                                ## an
                                                                                ##
                                                                                ## !
                                                                                ## instance
                                                                                ## of
                                                                                ## ShiftedUnit
                                                                                ## with
                                                                                ## <avalue>
                                                                                ## equal
                                                                                ## to
                                                                                ## 1.
                                                                                ## and
                                                                                ##
                                                                                ## !
                                                                                ## <amove>
                                                                                ## equal
                                                                                ## to
                                                                                ## 273.15.


proc constructUnits_ShiftedUnit*(aname: Standard_CString;
                                asymbol: Standard_CString; avalue: Standard_Real;
                                amove: Standard_Real;
                                aquantity: handle[Units_Quantity]): Units_ShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc constructUnits_ShiftedUnit*(aname: Standard_CString; asymbol: Standard_CString): Units_ShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc constructUnits_ShiftedUnit*(aname: Standard_CString): Units_ShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc Move*(this: var Units_ShiftedUnit; amove: Standard_Real) {.importcpp: "Move",
    header: "Units_ShiftedUnit.hxx".}
proc Move*(this: Units_ShiftedUnit): Standard_Real {.noSideEffect, importcpp: "Move",
    header: "Units_ShiftedUnit.hxx".}
proc Token*(this: Units_ShiftedUnit): handle[Units_Token] {.noSideEffect,
    importcpp: "Token", header: "Units_ShiftedUnit.hxx".}
proc Dump*(this: Units_ShiftedUnit; ashift: Standard_Integer;
          alevel: Standard_Integer) {.noSideEffect, importcpp: "Dump",
                                    header: "Units_ShiftedUnit.hxx".}
type
  Units_ShiftedUnitbase_type* = Units_Unit

proc get_type_name*(): cstring {.importcpp: "Units_ShiftedUnit::get_type_name(@)",
                              header: "Units_ShiftedUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_ShiftedUnit::get_type_descriptor(@)",
    header: "Units_ShiftedUnit.hxx".}
proc DynamicType*(this: Units_ShiftedUnit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_ShiftedUnit.hxx".}