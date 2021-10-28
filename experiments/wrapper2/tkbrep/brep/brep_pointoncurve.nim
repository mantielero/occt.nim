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

discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurve"
type
  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]

## ! Representation by a parameter on a 3D curve.

type
  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRepPointRepresentation


proc newBRepPointOnCurve*(p: cfloat; c: Handle[GeomCurve]; L: TopLocLocation): BRepPointOnCurve {.
    cdecl, constructor, importcpp: "BRep_PointOnCurve(@)", dynlib: tkbrep.}
proc isPointOnCurve*(this: BRepPointOnCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPointOnCurve", dynlib: tkbrep.}
proc isPointOnCurve*(this: BRepPointOnCurve; c: Handle[GeomCurve]; L: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsPointOnCurve", dynlib: tkbrep.}
proc curve*(this: BRepPointOnCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkbrep.}
proc curve*(this: var BRepPointOnCurve; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Curve", dynlib: tkbrep.}
proc dumpJson*(this: BRepPointOnCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}