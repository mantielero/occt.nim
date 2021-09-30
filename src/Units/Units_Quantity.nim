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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Quantity"
discard "forward decl of Units_Quantity"
type
  HandleC1C1* = Handle[UnitsQuantity]

## ! This  class stores  in its  field all the possible
## ! units of all the unit systems for a given physical
## ! quantity. Each unit's  value  is  expressed in the
## ! S.I. unit system.

type
  UnitsQuantity* {.importcpp: "Units_Quantity", header: "Units_Quantity.hxx", bycopy.} = object of StandardTransient ##
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


proc constructUnitsQuantity*(aname: StandardCString;
                            adimensions: Handle[UnitsDimensions];
                            aunitssequence: Handle[UnitsUnitsSequence]): UnitsQuantity {.
    constructor, importcpp: "Units_Quantity(@)", header: "Units_Quantity.hxx".}
proc name*(this: UnitsQuantity): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Units_Quantity.hxx".}
proc dimensions*(this: UnitsQuantity): Handle[UnitsDimensions] {.noSideEffect,
    importcpp: "Dimensions", header: "Units_Quantity.hxx".}
proc sequence*(this: UnitsQuantity): Handle[UnitsUnitsSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Quantity.hxx".}
proc isEqual*(this: UnitsQuantity; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Units_Quantity.hxx".}
proc dump*(this: UnitsQuantity; ashift: cint; alevel: cint) {.noSideEffect,
    importcpp: "Dump", header: "Units_Quantity.hxx".}
type
  UnitsQuantitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_Quantity::get_type_name(@)",
                            header: "Units_Quantity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_Quantity::get_type_descriptor(@)",
    header: "Units_Quantity.hxx".}
proc dynamicType*(this: UnitsQuantity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Quantity.hxx".}

























