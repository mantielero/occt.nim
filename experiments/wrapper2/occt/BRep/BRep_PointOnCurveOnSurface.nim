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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurveOnSurface"
discard "forward decl of BRep_PointOnCurveOnSurface"
type
  HandleBRepPointOnCurveOnSurface* = Handle[BRepPointOnCurveOnSurface]

## ! Representation by   a parameter on  a curve   on a
## ! surface.

type
  BRepPointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                              header: "BRep_PointOnCurveOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface


proc constructBRepPointOnCurveOnSurface*(p: float; c: Handle[Geom2dCurve];
                                        s: Handle[GeomSurface]; L: TopLocLocation): BRepPointOnCurveOnSurface {.
    constructor, importcpp: "BRep_PointOnCurveOnSurface(@)",
    header: "BRep_PointOnCurveOnSurface.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface): bool {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointOnCurveOnSurface.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface;
                             pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                             L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointOnCurveOnSurface.hxx".}
proc pCurve*(this: BRepPointOnCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc pCurve*(this: var BRepPointOnCurveOnSurface; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc dumpJson*(this: BRepPointOnCurveOnSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "BRep_PointOnCurveOnSurface.hxx".}
type
  BRepPointOnCurveOnSurfacebaseType* = BRepPointsOnSurface

proc getTypeName*(): cstring {.importcpp: "BRep_PointOnCurveOnSurface::get_type_name(@)",
                            header: "BRep_PointOnCurveOnSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointOnCurveOnSurface::get_type_descriptor(@)",
    header: "BRep_PointOnCurveOnSurface.hxx".}
proc dynamicType*(this: BRepPointOnCurveOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PointOnCurveOnSurface.hxx".}
