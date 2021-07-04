##  Created on: 1997-03-04
##  Created by: Jean-Pierre COMBE
##  Copyright (c) 1997-1999 Matra Datavision
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
  PrsDim_Relation, PrsDim_KindOfDimension

discard "forward decl of PrsDim_OffsetDimension"
type
  Handle_PrsDim_OffsetDimension* = handle[PrsDim_OffsetDimension]

## ! A framework to display dimensions of offsets.
## ! The relation between the offset and the basis shape
## ! is indicated. This relation is displayed with arrows and
## ! text. The text gives the dsitance between the offset
## ! and the basis shape.

type
  PrsDim_OffsetDimension* {.importcpp: "PrsDim_OffsetDimension",
                           header: "PrsDim_OffsetDimension.hxx", bycopy.} = object of PrsDim_Relation ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## the
                                                                                               ## offset
                                                                                               ## display
                                                                                               ## object
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## first
                                                                                               ## shape
                                                                                               ## aFShape,
                                                                                               ## the
                                                                                               ## second
                                                                                               ## shape
                                                                                               ## aSShape,
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## dimension
                                                                                               ## aVal,
                                                                                               ## and
                                                                                               ## the
                                                                                               ## text
                                                                                               ## aText.

  PrsDim_OffsetDimensionbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_OffsetDimension::get_type_name(@)",
                              header: "PrsDim_OffsetDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_OffsetDimension::get_type_descriptor(@)",
    header: "PrsDim_OffsetDimension.hxx".}
proc DynamicType*(this: PrsDim_OffsetDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_OffsetDimension.hxx".}
proc constructPrsDim_OffsetDimension*(FistShape: TopoDS_Shape;
                                     SecondShape: TopoDS_Shape;
                                     aVal: Standard_Real;
                                     aText: TCollection_ExtendedString): PrsDim_OffsetDimension {.
    constructor, importcpp: "PrsDim_OffsetDimension(@)",
    header: "PrsDim_OffsetDimension.hxx".}
proc KindOfDimension*(this: PrsDim_OffsetDimension): PrsDim_KindOfDimension {.
    noSideEffect, importcpp: "KindOfDimension",
    header: "PrsDim_OffsetDimension.hxx".}
proc IsMovable*(this: PrsDim_OffsetDimension): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_OffsetDimension.hxx".}
proc SetRelativePos*(this: var PrsDim_OffsetDimension; aTrsf: gp_Trsf) {.
    importcpp: "SetRelativePos", header: "PrsDim_OffsetDimension.hxx".}