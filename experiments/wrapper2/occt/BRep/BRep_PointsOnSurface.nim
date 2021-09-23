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
  ../Standard/Standard, ../Standard/Standard_Type, BRep_PointRepresentation,
  ../Standard/Standard_Real

discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointsOnSurface"
discard "forward decl of BRep_PointsOnSurface"
type
  Handle_BRep_PointsOnSurface* = handle[BRep_PointsOnSurface]

## ! Root for points on surface.

type
  BRep_PointsOnSurface* {.importcpp: "BRep_PointsOnSurface",
                         header: "BRep_PointsOnSurface.hxx", bycopy.} = object of BRep_PointRepresentation


proc Surface*(this: BRep_PointsOnSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_PointsOnSurface.hxx".}
proc Surface*(this: var BRep_PointsOnSurface; S: handle[Geom_Surface]) {.
    importcpp: "Surface", header: "BRep_PointsOnSurface.hxx".}
proc DumpJson*(this: BRep_PointsOnSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PointsOnSurface.hxx".}
type
  BRep_PointsOnSurfacebase_type* = BRep_PointRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_PointsOnSurface::get_type_name(@)",
                              header: "BRep_PointsOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PointsOnSurface::get_type_descriptor(@)",
    header: "BRep_PointsOnSurface.hxx".}
proc DynamicType*(this: BRep_PointsOnSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_PointsOnSurface.hxx".}