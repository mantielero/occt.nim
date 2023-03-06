import brep_types
import ../toploc/toploc_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types
import ../geom2d/geom2d_types





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





proc newBRepCurveOnSurface*(pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                           L: TopLocLocation): BRepCurveOnSurface {.cdecl,
    constructor, importcpp: "BRep_CurveOnSurface(@)", header: "BRep_CurveOnSurface.hxx".}
proc setUVPoints*(this: var BRepCurveOnSurface; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl,
    importcpp: "SetUVPoints", header: "BRep_CurveOnSurface.hxx".}
proc uVPoints*(this: BRepCurveOnSurface; p1: var gp_Pnt2d; p2: var gp_Pnt2d) {.noSideEffect,
    cdecl, importcpp: "UVPoints", header: "BRep_CurveOnSurface.hxx".}
proc d0*(this: BRepCurveOnSurface; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "BRep_CurveOnSurface.hxx".}
proc isCurveOnSurface*(this: BRepCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveOnSurface.hxx".}
proc isCurveOnSurface*(this: BRepCurveOnSurface; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveOnSurface.hxx".}
proc surface*(this: BRepCurveOnSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRep_CurveOnSurface.hxx".}
proc pCurve*(this: BRepCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "PCurve", header: "BRep_CurveOnSurface.hxx".}
proc pCurve*(this: var BRepCurveOnSurface; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve", header: "BRep_CurveOnSurface.hxx".}
proc copy*(this: BRepCurveOnSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_CurveOnSurface.hxx".}
proc update*(this: var BRepCurveOnSurface) {.cdecl, importcpp: "Update", header: "BRep_CurveOnSurface.hxx".}
proc dumpJson*(this: BRepCurveOnSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_CurveOnSurface.hxx".}


