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
type
  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]

## ! Representation  of a    curve by two  pcurves   on
## ! a closed surface.

type
  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRepCurveOnSurface


proc newBRepCurveOnClosedSurface*(pc1: Handle[Geom2dCurve];
                                 pc2: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                 L: TopLocLocation; c: GeomAbsShape): BRepCurveOnClosedSurface {.
    cdecl, constructor, importcpp: "BRep_CurveOnClosedSurface(@)", dynlib: tkbrep.}
proc setUVPoints2*(this: var BRepCurveOnClosedSurface; p1: Pnt2d; p2: Pnt2d) {.cdecl,
    importcpp: "SetUVPoints2", dynlib: tkbrep.}
proc uVPoints2*(this: BRepCurveOnClosedSurface; p1: var Pnt2d; p2: var Pnt2d) {.
    noSideEffect, cdecl, importcpp: "UVPoints2", dynlib: tkbrep.}
proc isCurveOnClosedSurface*(this: BRepCurveOnClosedSurface): bool {.noSideEffect,
    cdecl, importcpp: "IsCurveOnClosedSurface", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveOnClosedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsRegularity", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveOnClosedSurface; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsRegularity", dynlib: tkbrep.}
proc pCurve2*(this: BRepCurveOnClosedSurface): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve2", dynlib: tkbrep.}
proc surface2*(this: BRepCurveOnClosedSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface2", dynlib: tkbrep.}
proc location2*(this: BRepCurveOnClosedSurface): TopLocLocation {.noSideEffect,
    cdecl, importcpp: "Location2", dynlib: tkbrep.}
proc continuity*(this: BRepCurveOnClosedSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc continuity*(this: var BRepCurveOnClosedSurface; c: GeomAbsShape) {.cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc pCurve2*(this: var BRepCurveOnClosedSurface; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve2", dynlib: tkbrep.}
proc copy*(this: BRepCurveOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc update*(this: var BRepCurveOnClosedSurface) {.cdecl, importcpp: "Update",
    dynlib: tkbrep.}
proc dumpJson*(this: BRepCurveOnClosedSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}