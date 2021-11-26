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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOn2Surfaces"
type
  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]

## ! Defines a continuity between two surfaces.

type
  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRepCurveRepresentation


proc newBRepCurveOn2Surfaces*(s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                             l1: TopLocLocation; l2: TopLocLocation; c: GeomAbsShape): BRepCurveOn2Surfaces {.
    cdecl, constructor, importcpp: "BRep_CurveOn2Surfaces(@)", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveOn2Surfaces): bool {.noSideEffect, cdecl,
    importcpp: "IsRegularity", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveOn2Surfaces; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsRegularity", dynlib: tkbrep.}
proc d0*(this: BRepCurveOn2Surfaces; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkbrep.}
proc surface*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkbrep.}
proc surface2*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface2", dynlib: tkbrep.}
proc location2*(this: BRepCurveOn2Surfaces): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location2", dynlib: tkbrep.}
proc continuity*(this: BRepCurveOn2Surfaces): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc continuity*(this: var BRepCurveOn2Surfaces; c: GeomAbsShape) {.cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc copy*(this: BRepCurveOn2Surfaces): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc dumpJson*(this: BRepCurveOn2Surfaces; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}