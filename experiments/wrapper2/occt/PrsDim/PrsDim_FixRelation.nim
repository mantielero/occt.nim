##  Created on: 1996-12-05
##  Created by: Flore Lantheaume/Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Wire, PrsDim_Relation

discard "forward decl of Geom_Plane"
discard "forward decl of PrsDim_FixRelation"
type
  Handle_PrsDim_FixRelation* = handle[PrsDim_FixRelation]

## ! Constructs and manages a constraint by a fixed
## ! relation between two or more interactive datums. This
## ! constraint is represented by a wire from a shape -
## ! point, vertex, or edge - in the first datum and a
## ! corresponding shape in the second.
## ! Warning: This relation is not bound with any kind of parametric
## ! constraint : it represents the "status" of an parametric
## ! object.

type
  PrsDim_FixRelation* {.importcpp: "PrsDim_FixRelation",
                       header: "PrsDim_FixRelation.hxx", bycopy.} = object of PrsDim_Relation ##
                                                                                       ## !
                                                                                       ## initializes
                                                                                       ## the
                                                                                       ## vertex
                                                                                       ## aShape,
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## plane
                                                                                       ## aPlane
                                                                                       ## and
                                                                                       ## the
                                                                                       ## wire
                                                                                       ## aWire,
                                                                                       ## which
                                                                                       ## connects
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## two
                                                                                       ## vertices
                                                                                       ## in
                                                                                       ## a
                                                                                       ## fixed
                                                                                       ## relation.

  PrsDim_FixRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_FixRelation::get_type_name(@)",
                              header: "PrsDim_FixRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_FixRelation::get_type_descriptor(@)",
    header: "PrsDim_FixRelation.hxx".}
proc DynamicType*(this: PrsDim_FixRelation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_FixRelation.hxx".}
proc constructPrsDim_FixRelation*(aShape: TopoDS_Shape; aPlane: handle[Geom_Plane];
                                 aWire: TopoDS_Wire): PrsDim_FixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDim_FixRelation*(aShape: TopoDS_Shape; aPlane: handle[Geom_Plane];
                                 aWire: TopoDS_Wire; aPosition: gp_Pnt;
                                 anArrowSize: Standard_Real = 0.01): PrsDim_FixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDim_FixRelation*(aShape: TopoDS_Shape; aPlane: handle[Geom_Plane]): PrsDim_FixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDim_FixRelation*(aShape: TopoDS_Shape; aPlane: handle[Geom_Plane];
                                 aPosition: gp_Pnt;
                                 anArrowSize: Standard_Real = 0.01): PrsDim_FixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc Wire*(this: var PrsDim_FixRelation): TopoDS_Wire {.importcpp: "Wire",
    header: "PrsDim_FixRelation.hxx".}
proc SetWire*(this: var PrsDim_FixRelation; aWire: TopoDS_Wire) {.
    importcpp: "SetWire", header: "PrsDim_FixRelation.hxx".}
proc IsMovable*(this: PrsDim_FixRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_FixRelation.hxx".}