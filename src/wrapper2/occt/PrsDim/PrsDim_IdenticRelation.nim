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

import
  PrsDim_Relation, ../gp/gp_Pnt, ../PrsMgr/PrsMgr_PresentationManager3d,
  ../SelectMgr/SelectMgr_Selection, ../TColStd/TColStd_ListOfTransient

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
  Handle_PrsDim_IdenticRelation* = handle[PrsDim_IdenticRelation]

## ! Constructs a constraint by a relation of identity
## ! between two or more datums figuring in shape
## ! Interactive Objects.

type
  PrsDim_IdenticRelation* {.importcpp: "PrsDim_IdenticRelation",
                           header: "PrsDim_IdenticRelation.hxx", bycopy.} = object of PrsDim_Relation ##
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

  PrsDim_IdenticRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_IdenticRelation::get_type_name(@)",
                              header: "PrsDim_IdenticRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_IdenticRelation::get_type_descriptor(@)",
    header: "PrsDim_IdenticRelation.hxx".}
proc DynamicType*(this: PrsDim_IdenticRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_IdenticRelation.hxx".}
proc constructPrsDim_IdenticRelation*(FirstShape: TopoDS_Shape;
                                     SecondShape: TopoDS_Shape;
                                     aPlane: handle[Geom_Plane]): PrsDim_IdenticRelation {.
    constructor, importcpp: "PrsDim_IdenticRelation(@)",
    header: "PrsDim_IdenticRelation.hxx".}
proc HasUsers*(this: PrsDim_IdenticRelation): Standard_Boolean {.noSideEffect,
    importcpp: "HasUsers", header: "PrsDim_IdenticRelation.hxx".}
proc Users*(this: PrsDim_IdenticRelation): TColStd_ListOfTransient {.noSideEffect,
    importcpp: "Users", header: "PrsDim_IdenticRelation.hxx".}
proc AddUser*(this: var PrsDim_IdenticRelation; theUser: handle[Standard_Transient]) {.
    importcpp: "AddUser", header: "PrsDim_IdenticRelation.hxx".}
proc ClearUsers*(this: var PrsDim_IdenticRelation) {.importcpp: "ClearUsers",
    header: "PrsDim_IdenticRelation.hxx".}
proc IsMovable*(this: PrsDim_IdenticRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_IdenticRelation.hxx".}