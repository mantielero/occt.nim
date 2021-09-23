##  Created on: 1993-07-06
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
  ../Standard/Standard, ../Standard/Standard_Type, ../GeomAbs/GeomAbs_Shape,
  ../gp/gp_Pnt2d, BRep_CurveOnSurface, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnClosedSurface"
discard "forward decl of BRep_CurveOnClosedSurface"
type
  Handle_BRep_CurveOnClosedSurface* = handle[BRep_CurveOnClosedSurface]

## ! Representation  of a    curve by two  pcurves   on
## ! a closed surface.

type
  BRep_CurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                              header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRep_CurveOnSurface


proc constructBRep_CurveOnClosedSurface*(PC1: handle[Geom2d_Curve];
                                        PC2: handle[Geom2d_Curve];
                                        S: handle[Geom_Surface];
                                        L: TopLoc_Location; C: GeomAbs_Shape): BRep_CurveOnClosedSurface {.
    constructor, importcpp: "BRep_CurveOnClosedSurface(@)",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc SetUVPoints2*(this: var BRep_CurveOnClosedSurface; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "SetUVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc UVPoints2*(this: BRep_CurveOnClosedSurface; P1: var gp_Pnt2d; P2: var gp_Pnt2d) {.
    noSideEffect, importcpp: "UVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc IsCurveOnClosedSurface*(this: BRep_CurveOnClosedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurveOnClosedSurface",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc IsRegularity*(this: BRep_CurveOnClosedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegularity",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc IsRegularity*(this: BRep_CurveOnClosedSurface; S1: handle[Geom_Surface];
                  S2: handle[Geom_Surface]; L1: TopLoc_Location; L2: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegularity",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc PCurve2*(this: BRep_CurveOnClosedSurface): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc Surface2*(this: BRep_CurveOnClosedSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface2", header: "BRep_CurveOnClosedSurface.hxx".}
proc Location2*(this: BRep_CurveOnClosedSurface): TopLoc_Location {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveOnClosedSurface.hxx".}
proc Continuity*(this: BRep_CurveOnClosedSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc Continuity*(this: var BRep_CurveOnClosedSurface; C: GeomAbs_Shape) {.
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc PCurve2*(this: var BRep_CurveOnClosedSurface; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc Copy*(this: BRep_CurveOnClosedSurface): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveOnClosedSurface.hxx".}
proc Update*(this: var BRep_CurveOnClosedSurface) {.importcpp: "Update",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc DumpJson*(this: BRep_CurveOnClosedSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_CurveOnClosedSurface.hxx".}
type
  BRep_CurveOnClosedSurfacebase_type* = BRep_CurveOnSurface

proc get_type_name*(): cstring {.importcpp: "BRep_CurveOnClosedSurface::get_type_name(@)",
                              header: "BRep_CurveOnClosedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_CurveOnClosedSurface::get_type_descriptor(@)",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc DynamicType*(this: BRep_CurveOnClosedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_CurveOnClosedSurface.hxx".}