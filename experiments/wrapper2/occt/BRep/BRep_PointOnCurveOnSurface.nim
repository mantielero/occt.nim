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
  ../Standard/Standard, ../Standard/Standard_Type, BRep_PointsOnSurface,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurveOnSurface"
discard "forward decl of BRep_PointOnCurveOnSurface"
type
  Handle_BRep_PointOnCurveOnSurface* = handle[BRep_PointOnCurveOnSurface]

## ! Representation by   a parameter on  a curve   on a
## ! surface.

type
  BRep_PointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                               header: "BRep_PointOnCurveOnSurface.hxx", bycopy.} = object of BRep_PointsOnSurface


proc constructBRep_PointOnCurveOnSurface*(P: Standard_Real;
    C: handle[Geom2d_Curve]; S: handle[Geom_Surface]; L: TopLoc_Location): BRep_PointOnCurveOnSurface {.
    constructor, importcpp: "BRep_PointOnCurveOnSurface(@)",
    header: "BRep_PointOnCurveOnSurface.hxx".}
proc IsPointOnCurveOnSurface*(this: BRep_PointOnCurveOnSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsPointOnCurveOnSurface",
    header: "BRep_PointOnCurveOnSurface.hxx".}
proc IsPointOnCurveOnSurface*(this: BRep_PointOnCurveOnSurface;
                             PC: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                             L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointOnCurveOnSurface.hxx".}
proc PCurve*(this: BRep_PointOnCurveOnSurface): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc PCurve*(this: var BRep_PointOnCurveOnSurface; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc DumpJson*(this: BRep_PointOnCurveOnSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PointOnCurveOnSurface.hxx".}
type
  BRep_PointOnCurveOnSurfacebase_type* = BRep_PointsOnSurface

proc get_type_name*(): cstring {.importcpp: "BRep_PointOnCurveOnSurface::get_type_name(@)",
                              header: "BRep_PointOnCurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PointOnCurveOnSurface::get_type_descriptor(@)",
    header: "BRep_PointOnCurveOnSurface.hxx".}
proc DynamicType*(this: BRep_PointOnCurveOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PointOnCurveOnSurface.hxx".}