##  Created on: 2000-10-20
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  PrsDim_Relation

discard "forward decl of Geom_Plane"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of PrsDim_MidPointRelation"
type
  Handle_PrsDim_MidPointRelation* = handle[PrsDim_MidPointRelation]

## ! presentation of equal distance to point myMidPoint

type
  PrsDim_MidPointRelation* {.importcpp: "PrsDim_MidPointRelation",
                            header: "PrsDim_MidPointRelation.hxx", bycopy.} = object of PrsDim_Relation

  PrsDim_MidPointRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_MidPointRelation::get_type_name(@)",
                              header: "PrsDim_MidPointRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_MidPointRelation::get_type_descriptor(@)",
    header: "PrsDim_MidPointRelation.hxx".}
proc DynamicType*(this: PrsDim_MidPointRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_MidPointRelation.hxx".}
proc constructPrsDim_MidPointRelation*(aSymmTool: TopoDS_Shape;
                                      FirstShape: TopoDS_Shape;
                                      SecondShape: TopoDS_Shape;
                                      aPlane: handle[Geom_Plane]): PrsDim_MidPointRelation {.
    constructor, importcpp: "PrsDim_MidPointRelation(@)",
    header: "PrsDim_MidPointRelation.hxx".}
proc IsMovable*(this: PrsDim_MidPointRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_MidPointRelation.hxx".}
proc SetTool*(this: var PrsDim_MidPointRelation; aMidPointTool: TopoDS_Shape) {.
    importcpp: "SetTool", header: "PrsDim_MidPointRelation.hxx".}
proc GetTool*(this: PrsDim_MidPointRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "GetTool", header: "PrsDim_MidPointRelation.hxx".}