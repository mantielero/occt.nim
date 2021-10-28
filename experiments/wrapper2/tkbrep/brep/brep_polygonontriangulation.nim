##  Created on: 1995-03-15
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnTriangulation"
type
  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]

## ! A representation by an array of nodes on a
## ! triangulation.

type
  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRepCurveRepresentation


proc newBRepPolygonOnTriangulation*(p: Handle[PolyPolygonOnTriangulation];
                                   t: Handle[PolyTriangulation]; L: TopLocLocation): BRepPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "BRep_PolygonOnTriangulation(@)", dynlib: tkbrep.}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", dynlib: tkbrep.}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", dynlib: tkbrep.}
proc polygonOnTriangulation*(this: var BRepPolygonOnTriangulation;
                            p: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation", dynlib: tkbrep.}
proc triangulation*(this: BRepPolygonOnTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "Triangulation", dynlib: tkbrep.}
proc polygonOnTriangulation*(this: BRepPolygonOnTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation",
                                 dynlib: tkbrep.}
proc copy*(this: BRepPolygonOnTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc dumpJson*(this: BRepPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}