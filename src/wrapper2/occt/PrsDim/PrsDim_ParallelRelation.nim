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
  PrsDim_Relation, ../DsgPrs/DsgPrs_ArrowSide

discard "forward decl of PrsDim_ParallelRelation"
type
  Handle_PrsDim_ParallelRelation* = handle[PrsDim_ParallelRelation]

## ! A framework to display constraints of parallelism
## ! between two or more Interactive Objects. These
## ! entities can be faces or edges.

type
  PrsDim_ParallelRelation* {.importcpp: "PrsDim_ParallelRelation",
                            header: "PrsDim_ParallelRelation.hxx", bycopy.} = object of PrsDim_Relation ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## object
                                                                                                 ## to
                                                                                                 ## display
                                                                                                 ## parallel
                                                                                                 ## constraints.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## object
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## first
                                                                                                 ## shape
                                                                                                 ## aFShape
                                                                                                 ## and
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## second
                                                                                                 ## shape
                                                                                                 ## aSShape
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## plane
                                                                                                 ## aPlane.

  PrsDim_ParallelRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_ParallelRelation::get_type_name(@)",
                              header: "PrsDim_ParallelRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_ParallelRelation::get_type_descriptor(@)",
    header: "PrsDim_ParallelRelation.hxx".}
proc DynamicType*(this: PrsDim_ParallelRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_ParallelRelation.hxx".}
proc constructPrsDim_ParallelRelation*(aFShape: TopoDS_Shape;
                                      aSShape: TopoDS_Shape;
                                      aPlane: handle[Geom_Plane]): PrsDim_ParallelRelation {.
    constructor, importcpp: "PrsDim_ParallelRelation(@)",
    header: "PrsDim_ParallelRelation.hxx".}
proc constructPrsDim_ParallelRelation*(aFShape: TopoDS_Shape;
                                      aSShape: TopoDS_Shape;
                                      aPlane: handle[Geom_Plane];
                                      aPosition: gp_Pnt;
                                      aSymbolPrs: DsgPrs_ArrowSide;
                                      anArrowSize: Standard_Real = 0.01): PrsDim_ParallelRelation {.
    constructor, importcpp: "PrsDim_ParallelRelation(@)",
    header: "PrsDim_ParallelRelation.hxx".}
proc IsMovable*(this: PrsDim_ParallelRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_ParallelRelation.hxx".}