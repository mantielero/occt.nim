##  Created on: 1998-01-22
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_OffsetCurve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Geom_Surface"
discard "forward decl of PrsDim_EllipseRadiusDimension"
type
  HandleC1C1* = Handle[PrsDimEllipseRadiusDimension]

## ! Computes  geometry  (  basis  curve  and  plane  of  dimension)
## ! for  input  shape  aShape  from  TopoDS
## ! Root  class  for MinRadiusDimension  and  MaxRadiusDimension

type
  PrsDimEllipseRadiusDimension* {.importcpp: "PrsDim_EllipseRadiusDimension",
                                 header: "PrsDim_EllipseRadiusDimension.hxx",
                                 bycopy.} = object of PrsDimRelation

  PrsDimEllipseRadiusDimensionbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_EllipseRadiusDimension::get_type_name(@)",
                            header: "PrsDim_EllipseRadiusDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_EllipseRadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc dynamicType*(this: PrsDimEllipseRadiusDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc kindOfDimension*(this: PrsDimEllipseRadiusDimension): PrsDimKindOfDimension {.
    noSideEffect, importcpp: "KindOfDimension",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc isMovable*(this: PrsDimEllipseRadiusDimension): bool {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_EllipseRadiusDimension.hxx".}
proc computeGeometry*(this: var PrsDimEllipseRadiusDimension) {.
    importcpp: "ComputeGeometry", header: "PrsDim_EllipseRadiusDimension.hxx".}

























