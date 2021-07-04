##  Created on: 1996-12-05
##  Created by: Jean-Pierre COMBE/Odile Olivier
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
  PrsDim_Relation

discard "forward decl of PrsDim_PerpendicularRelation"
type
  Handle_PrsDim_PerpendicularRelation* = handle[PrsDim_PerpendicularRelation]

## ! A framework to display constraints of perpendicularity
## ! between two or more interactive datums. These
## ! datums can be edges or faces.

type
  PrsDim_PerpendicularRelation* {.importcpp: "PrsDim_PerpendicularRelation",
                                 header: "PrsDim_PerpendicularRelation.hxx",
                                 bycopy.} = object of PrsDim_Relation ## ! Constructs an object to display constraints of
                                                                 ## !
                                                                 ## perpendicularity on shapes.
                                                                 ## ! This object is defined by a first shape aFShape, a
                                                                 ## ! second shape aSShape, and a plane aPlane.
                                                                 ## ! aPlane is the plane of reference to show and test the
                                                                 ## ! perpendicular relation between two shapes, at least
                                                                 ## ! one of which has a revolved surface.

  PrsDim_PerpendicularRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_PerpendicularRelation::get_type_name(@)",
                              header: "PrsDim_PerpendicularRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_PerpendicularRelation::get_type_descriptor(@)",
    header: "PrsDim_PerpendicularRelation.hxx".}
proc DynamicType*(this: PrsDim_PerpendicularRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsDim_PerpendicularRelation.hxx".}
proc constructPrsDim_PerpendicularRelation*(aFShape: TopoDS_Shape;
    aSShape: TopoDS_Shape; aPlane: handle[Geom_Plane]): PrsDim_PerpendicularRelation {.
    constructor, importcpp: "PrsDim_PerpendicularRelation(@)",
    header: "PrsDim_PerpendicularRelation.hxx".}
proc constructPrsDim_PerpendicularRelation*(aFShape: TopoDS_Shape;
    aSShape: TopoDS_Shape): PrsDim_PerpendicularRelation {.constructor,
    importcpp: "PrsDim_PerpendicularRelation(@)",
    header: "PrsDim_PerpendicularRelation.hxx".}