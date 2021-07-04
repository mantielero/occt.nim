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
  PrsDim_Relation, ../gp/gp_Dir

discard "forward decl of Geom_Plane"
discard "forward decl of PrsDim_ConcentricRelation"
type
  Handle_PrsDim_ConcentricRelation* = handle[PrsDim_ConcentricRelation]

## ! A framework to define a constraint by a relation of
## ! concentricity between two or more interactive datums.
## ! The display of this constraint is also defined.
## ! A plane is used to create an axis along which the
## ! relation of concentricity can be extended.

type
  PrsDim_ConcentricRelation* {.importcpp: "PrsDim_ConcentricRelation",
                              header: "PrsDim_ConcentricRelation.hxx", bycopy.} = object of PrsDim_Relation ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## the
                                                                                                     ## display
                                                                                                     ## object
                                                                                                     ## for
                                                                                                     ## concentric
                                                                                                     ## relations
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## between
                                                                                                     ## shapes.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## This
                                                                                                     ## object
                                                                                                     ## is
                                                                                                     ## defined
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ## two
                                                                                                     ## shapes,
                                                                                                     ## aFShape
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## and
                                                                                                     ## aSShape
                                                                                                     ## and
                                                                                                     ## the
                                                                                                     ## plane
                                                                                                     ## aPlane.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## aPlane
                                                                                                     ## is
                                                                                                     ## provided
                                                                                                     ## to
                                                                                                     ## create
                                                                                                     ## an
                                                                                                     ## axis
                                                                                                     ## along
                                                                                                     ## which
                                                                                                     ## the
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## relation
                                                                                                     ## of
                                                                                                     ## concentricity
                                                                                                     ## can
                                                                                                     ## be
                                                                                                     ## extended.

  PrsDim_ConcentricRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_ConcentricRelation::get_type_name(@)",
                              header: "PrsDim_ConcentricRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_ConcentricRelation::get_type_descriptor(@)",
    header: "PrsDim_ConcentricRelation.hxx".}
proc DynamicType*(this: PrsDim_ConcentricRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_ConcentricRelation.hxx".}
proc constructPrsDim_ConcentricRelation*(aFShape: TopoDS_Shape;
                                        aSShape: TopoDS_Shape;
                                        aPlane: handle[Geom_Plane]): PrsDim_ConcentricRelation {.
    constructor, importcpp: "PrsDim_ConcentricRelation(@)",
    header: "PrsDim_ConcentricRelation.hxx".}