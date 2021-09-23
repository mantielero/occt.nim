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

import
  ../gp/gp_Elips, PrsDim_Relation, PrsDim_KindOfSurface

discard "forward decl of Geom_OffsetCurve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Geom_Surface"
discard "forward decl of PrsDim_EllipseRadiusDimension"
type
  Handle_PrsDim_EllipseRadiusDimension* = handle[PrsDim_EllipseRadiusDimension]

## ! Computes  geometry  (  basis  curve  and  plane  of  dimension)
## ! for  input  shape  aShape  from  TopoDS
## ! Root  class  for MinRadiusDimension  and  MaxRadiusDimension

type
  PrsDim_EllipseRadiusDimension* {.importcpp: "PrsDim_EllipseRadiusDimension",
                                  header: "PrsDim_EllipseRadiusDimension.hxx",
                                  bycopy.} = object of PrsDim_Relation

  PrsDim_EllipseRadiusDimensionbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_EllipseRadiusDimension::get_type_name(@)",
                              header: "PrsDim_EllipseRadiusDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_EllipseRadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc DynamicType*(this: PrsDim_EllipseRadiusDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc KindOfDimension*(this: PrsDim_EllipseRadiusDimension): PrsDim_KindOfDimension {.
    noSideEffect, importcpp: "KindOfDimension",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc IsMovable*(this: PrsDim_EllipseRadiusDimension): Standard_Boolean {.
    noSideEffect, importcpp: "IsMovable",
    header: "PrsDim_EllipseRadiusDimension.hxx".}
proc ComputeGeometry*(this: var PrsDim_EllipseRadiusDimension) {.
    importcpp: "ComputeGeometry", header: "PrsDim_EllipseRadiusDimension.hxx".}