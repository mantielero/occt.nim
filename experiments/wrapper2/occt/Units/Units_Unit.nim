##  Created on: 1992-10-29
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
  ../TColStd/TColStd_HSequenceOfHAsciiString, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Units_Quantity"
discard "forward decl of Units_Token"
discard "forward decl of Units_Unit"
discard "forward decl of Units_Unit"
type
  Handle_Units_Unit* = handle[Units_Unit]

## ! This class defines an elementary word contained in
## ! a physical quantity.

type
  Units_Unit* {.importcpp: "Units_Unit", header: "Units_Unit.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## and
                                                                                                 ## returns
                                                                                                 ## a
                                                                                                 ## unit.
                                                                                                 ## <aname>
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## name
                                                                                                 ## of
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## unit,
                                                                                                 ## <asymbol>
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## usual
                                                                                                 ## abbreviation
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## unit,
                                                                                                 ## and
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
                                                                                                 ## Units.


proc constructUnits_Unit*(aname: Standard_CString; asymbol: Standard_CString;
                         avalue: Standard_Real; aquantity: handle[Units_Quantity]): Units_Unit {.
    constructor, importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc constructUnits_Unit*(aname: Standard_CString; asymbol: Standard_CString): Units_Unit {.
    constructor, importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc constructUnits_Unit*(aname: Standard_CString): Units_Unit {.constructor,
    importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc Name*(this: Units_Unit): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Units_Unit.hxx".}
proc Symbol*(this: var Units_Unit; asymbol: Standard_CString) {.importcpp: "Symbol",
    header: "Units_Unit.hxx".}
proc Value*(this: Units_Unit): Standard_Real {.noSideEffect, importcpp: "Value",
    header: "Units_Unit.hxx".}
proc Quantity*(this: Units_Unit): handle[Units_Quantity] {.noSideEffect,
    importcpp: "Quantity", header: "Units_Unit.hxx".}
proc SymbolsSequence*(this: Units_Unit): handle[TColStd_HSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SymbolsSequence", header: "Units_Unit.hxx".}
proc Value*(this: var Units_Unit; avalue: Standard_Real) {.importcpp: "Value",
    header: "Units_Unit.hxx".}
proc Quantity*(this: var Units_Unit; aquantity: handle[Units_Quantity]) {.
    importcpp: "Quantity", header: "Units_Unit.hxx".}
proc Token*(this: Units_Unit): handle[Units_Token] {.noSideEffect,
    importcpp: "Token", header: "Units_Unit.hxx".}
proc IsEqual*(this: Units_Unit; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Unit.hxx".}
proc Dump*(this: Units_Unit; ashift: Standard_Integer; alevel: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "Units_Unit.hxx".}
type
  Units_Unitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_Unit::get_type_name(@)",
                              header: "Units_Unit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_Unit::get_type_descriptor(@)", header: "Units_Unit.hxx".}
proc DynamicType*(this: Units_Unit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Unit.hxx".}