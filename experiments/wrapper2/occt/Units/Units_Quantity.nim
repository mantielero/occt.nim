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
  ../Standard/Standard, ../Standard/Standard_Type, Units_UnitsSequence,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Quantity"
discard "forward decl of Units_Quantity"
type
  Handle_Units_Quantity* = handle[Units_Quantity]

## ! This  class stores  in its  field all the possible
## ! units of all the unit systems for a given physical
## ! quantity. Each unit's  value  is  expressed in the
## ! S.I. unit system.

type
  Units_Quantity* {.importcpp: "Units_Quantity", header: "Units_Quantity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## new
                                                                                                             ## Quantity
                                                                                                             ## object
                                                                                                             ## with
                                                                                                             ## <aname>
                                                                                                             ## which
                                                                                                             ## is
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## the
                                                                                                             ## name
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## physical
                                                                                                             ## quantity,
                                                                                                             ## <adimensions>
                                                                                                             ## which
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## physical
                                                                                                             ## dimensions,
                                                                                                             ## and
                                                                                                             ## <aunitssequence>
                                                                                                             ## which
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## describes
                                                                                                             ## all
                                                                                                             ## the
                                                                                                             ## units
                                                                                                             ## known
                                                                                                             ## for
                                                                                                             ## this
                                                                                                             ## quantity.


proc constructUnits_Quantity*(aname: Standard_CString;
                             adimensions: handle[Units_Dimensions];
                             aunitssequence: handle[Units_UnitsSequence]): Units_Quantity {.
    constructor, importcpp: "Units_Quantity(@)", header: "Units_Quantity.hxx".}
proc Name*(this: Units_Quantity): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Units_Quantity.hxx".}
proc Dimensions*(this: Units_Quantity): handle[Units_Dimensions] {.noSideEffect,
    importcpp: "Dimensions", header: "Units_Quantity.hxx".}
proc Sequence*(this: Units_Quantity): handle[Units_UnitsSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Quantity.hxx".}
proc IsEqual*(this: Units_Quantity; astring: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Quantity.hxx".}
proc Dump*(this: Units_Quantity; ashift: Standard_Integer; alevel: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "Units_Quantity.hxx".}
type
  Units_Quantitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_Quantity::get_type_name(@)",
                              header: "Units_Quantity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_Quantity::get_type_descriptor(@)",
    header: "Units_Quantity.hxx".}
proc DynamicType*(this: Units_Quantity): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Quantity.hxx".}