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

discard "forward decl of Geom_Plane"
discard "forward decl of PrsDim_FixRelation"
type
  HandleC1C1* = Handle[PrsDimFixRelation]

## ! Constructs and manages a constraint by a fixed
## ! relation between two or more interactive datums. This
## ! constraint is represented by a wire from a shape -
## ! point, vertex, or edge - in the first datum and a
## ! corresponding shape in the second.
## ! Warning: This relation is not bound with any kind of parametric
## ! constraint : it represents the "status" of an parametric
## ! object.

type
  PrsDimFixRelation* {.importcpp: "PrsDim_FixRelation",
                      header: "PrsDim_FixRelation.hxx", bycopy.} = object of PrsDimRelation ##
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

  PrsDimFixRelationbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_FixRelation::get_type_name(@)",
                            header: "PrsDim_FixRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_FixRelation::get_type_descriptor(@)",
    header: "PrsDim_FixRelation.hxx".}
proc dynamicType*(this: PrsDimFixRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_FixRelation.hxx".}
proc constructPrsDimFixRelation*(aShape: TopoDS_Shape; aPlane: Handle[GeomPlane];
                                aWire: TopoDS_Wire): PrsDimFixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDimFixRelation*(aShape: TopoDS_Shape; aPlane: Handle[GeomPlane];
                                aWire: TopoDS_Wire; aPosition: Pnt;
                                anArrowSize: cfloat = 0.01): PrsDimFixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDimFixRelation*(aShape: TopoDS_Shape; aPlane: Handle[GeomPlane]): PrsDimFixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc constructPrsDimFixRelation*(aShape: TopoDS_Shape; aPlane: Handle[GeomPlane];
                                aPosition: Pnt; anArrowSize: cfloat = 0.01): PrsDimFixRelation {.
    constructor, importcpp: "PrsDim_FixRelation(@)",
    header: "PrsDim_FixRelation.hxx".}
proc wire*(this: var PrsDimFixRelation): TopoDS_Wire {.importcpp: "Wire",
    header: "PrsDim_FixRelation.hxx".}
proc setWire*(this: var PrsDimFixRelation; aWire: TopoDS_Wire) {.importcpp: "SetWire",
    header: "PrsDim_FixRelation.hxx".}
proc isMovable*(this: PrsDimFixRelation): bool {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_FixRelation.hxx".}

























