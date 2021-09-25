##  Created on: 1997-03-03
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Line"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom_Ellipse"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Dir"
discard "forward decl of PrsDim_IdenticRelation"
type
  HandlePrsDimIdenticRelation* = Handle[PrsDimIdenticRelation]

## ! Constructs a constraint by a relation of identity
## ! between two or more datums figuring in shape
## ! Interactive Objects.

type
  PrsDimIdenticRelation* {.importcpp: "PrsDim_IdenticRelation",
                          header: "PrsDim_IdenticRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                             ## !
                                                                                             ## Initializes
                                                                                             ## the
                                                                                             ## relation
                                                                                             ## of
                                                                                             ## identity
                                                                                             ## between
                                                                                             ## the
                                                                                             ## two
                                                                                             ##
                                                                                             ## !
                                                                                             ## entities,
                                                                                             ## FirstShape
                                                                                             ## and
                                                                                             ## SecondShape.
                                                                                             ## The
                                                                                             ## plane
                                                                                             ##
                                                                                             ## !
                                                                                             ## aPlane
                                                                                             ## is
                                                                                             ## initialized
                                                                                             ## in
                                                                                             ## case
                                                                                             ## a
                                                                                             ## visual
                                                                                             ## reference
                                                                                             ## is
                                                                                             ##
                                                                                             ## !
                                                                                             ## needed
                                                                                             ## to
                                                                                             ## show
                                                                                             ## identity.

  PrsDimIdenticRelationbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_IdenticRelation::get_type_name(@)",
                            header: "PrsDim_IdenticRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_IdenticRelation::get_type_descriptor(@)",
    header: "PrsDim_IdenticRelation.hxx".}
proc dynamicType*(this: PrsDimIdenticRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_IdenticRelation.hxx".}
proc constructPrsDimIdenticRelation*(firstShape: TopoDS_Shape;
                                    secondShape: TopoDS_Shape;
                                    aPlane: Handle[GeomPlane]): PrsDimIdenticRelation {.
    constructor, importcpp: "PrsDim_IdenticRelation(@)",
    header: "PrsDim_IdenticRelation.hxx".}
proc hasUsers*(this: PrsDimIdenticRelation): bool {.noSideEffect,
    importcpp: "HasUsers", header: "PrsDim_IdenticRelation.hxx".}
proc users*(this: PrsDimIdenticRelation): TColStdListOfTransient {.noSideEffect,
    importcpp: "Users", header: "PrsDim_IdenticRelation.hxx".}
proc addUser*(this: var PrsDimIdenticRelation; theUser: Handle[StandardTransient]) {.
    importcpp: "AddUser", header: "PrsDim_IdenticRelation.hxx".}
proc clearUsers*(this: var PrsDimIdenticRelation) {.importcpp: "ClearUsers",
    header: "PrsDim_IdenticRelation.hxx".}
proc isMovable*(this: PrsDimIdenticRelation): bool {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_IdenticRelation.hxx".}
