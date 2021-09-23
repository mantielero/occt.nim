##  Created on: 1993-08-10
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  BRep_PointsOnSurface, ../Standard/Standard_Boolean

discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnSurface"
discard "forward decl of BRep_PointOnSurface"
type
  Handle_BRep_PointOnSurface* = handle[BRep_PointOnSurface]

## ! Representation by two parameters on a surface.

type
  BRep_PointOnSurface* {.importcpp: "BRep_PointOnSurface",
                        header: "BRep_PointOnSurface.hxx", bycopy.} = object of BRep_PointsOnSurface


proc constructBRep_PointOnSurface*(P1: Standard_Real; P2: Standard_Real;
                                  S: handle[Geom_Surface]; L: TopLoc_Location): BRep_PointOnSurface {.
    constructor, importcpp: "BRep_PointOnSurface(@)",
    header: "BRep_PointOnSurface.hxx".}
proc IsPointOnSurface*(this: BRep_PointOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: "BRep_PointOnSurface.hxx".}
proc IsPointOnSurface*(this: BRep_PointOnSurface; S: handle[Geom_Surface];
                      L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: "BRep_PointOnSurface.hxx".}
proc Parameter2*(this: BRep_PointOnSurface): Standard_Real {.noSideEffect,
    importcpp: "Parameter2", header: "BRep_PointOnSurface.hxx".}
proc Parameter2*(this: var BRep_PointOnSurface; P: Standard_Real) {.
    importcpp: "Parameter2", header: "BRep_PointOnSurface.hxx".}
type
  BRep_PointOnSurfacebase_type* = BRep_PointsOnSurface

proc get_type_name*(): cstring {.importcpp: "BRep_PointOnSurface::get_type_name(@)",
                              header: "BRep_PointOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PointOnSurface::get_type_descriptor(@)",
    header: "BRep_PointOnSurface.hxx".}
proc DynamicType*(this: BRep_PointOnSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_PointOnSurface.hxx".}