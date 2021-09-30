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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnClosedSurface"
discard "forward decl of BRep_CurveOnClosedSurface"
type
  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRepCurveOnSurface

type
  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]

## ! Representation  of a    curve by two  pcurves   on
## ! a closed surface.

type
  BRepCurveOnClosedSurfacebaseType* = BRepCurveOnSurface

#[ 
proc constructBRepCurveOnClosedSurface*(pc1: Handle[Geom2dCurve];
                                       pc2: Handle[Geom2dCurve];
                                       s: Handle[GeomSurface]; L: TopLocLocation;
                                       c: GeomAbsShape): BRepCurveOnClosedSurface {.
    constructor, importcpp: "BRep_CurveOnClosedSurface(@)",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc setUVPoints2*(this: var BRepCurveOnClosedSurface; p1: Pnt2d; p2: Pnt2d) {.
    importcpp: "SetUVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc uVPoints2*(this: BRepCurveOnClosedSurface; p1: var Pnt2d; p2: var Pnt2d) {.
    noSideEffect, importcpp: "UVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc isCurveOnClosedSurface*(this: BRepCurveOnClosedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsCurveOnClosedSurface",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc isRegularity*(this: BRepCurveOnClosedSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsRegularity", header: "BRep_CurveOnClosedSurface.hxx".}
proc isRegularity*(this: BRepCurveOnClosedSurface; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsRegularity",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc pCurve2*(this: BRepCurveOnClosedSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc surface2*(this: BRepCurveOnClosedSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: "BRep_CurveOnClosedSurface.hxx".}
proc location2*(this: BRepCurveOnClosedSurface): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveOnClosedSurface.hxx".}
proc continuity*(this: BRepCurveOnClosedSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc continuity*(this: var BRepCurveOnClosedSurface; c: GeomAbsShape) {.
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc pCurve2*(this: var BRepCurveOnClosedSurface; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc copy*(this: BRepCurveOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveOnClosedSurface.hxx".}
proc update*(this: var BRepCurveOnClosedSurface) {.importcpp: "Update",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc dumpJson*(this: BRepCurveOnClosedSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "BRep_CurveOnClosedSurface.hxx".}

proc getTypeName*(): cstring {.importcpp: "BRep_CurveOnClosedSurface::get_type_name(@)",
                            header: "BRep_CurveOnClosedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveOnClosedSurface::get_type_descriptor(@)",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc dynamicType*(this: BRepCurveOnClosedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_CurveOnClosedSurface.hxx".} ]#