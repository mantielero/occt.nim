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
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnSurface"
type
  HandleBRepCurveOnSurface* = Handle[BRepCurveOnSurface]

## ! Representation  of a  curve   by a   curve  in the
## ! parametric space of a surface.

type
  BRepCurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                       header: "BRep_CurveOnSurface.hxx", bycopy.} = object of BRepGCurve


proc newBRepCurveOnSurface*(pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                           L: TopLocLocation): BRepCurveOnSurface {.cdecl,
    constructor, importcpp: "BRep_CurveOnSurface(@)", dynlib: tkbrep.}
proc setUVPoints*(this: var BRepCurveOnSurface; p1: Pnt2d; p2: Pnt2d) {.cdecl,
    importcpp: "SetUVPoints", dynlib: tkbrep.}
proc uVPoints*(this: BRepCurveOnSurface; p1: var Pnt2d; p2: var Pnt2d) {.noSideEffect,
    cdecl, importcpp: "UVPoints", dynlib: tkbrep.}
proc d0*(this: BRepCurveOnSurface; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkbrep.}
proc isCurveOnSurface*(this: BRepCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", dynlib: tkbrep.}
proc isCurveOnSurface*(this: BRepCurveOnSurface; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", dynlib: tkbrep.}
proc surface*(this: BRepCurveOnSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkbrep.}
proc pCurve*(this: BRepCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "PCurve", dynlib: tkbrep.}
proc pCurve*(this: var BRepCurveOnSurface; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve", dynlib: tkbrep.}
proc copy*(this: BRepCurveOnSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc update*(this: var BRepCurveOnSurface) {.cdecl, importcpp: "Update", dynlib: tkbrep.}
proc dumpJson*(this: BRepCurveOnSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}