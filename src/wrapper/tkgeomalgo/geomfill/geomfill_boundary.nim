##  Created on: 1995-10-17
##  Created by: Laurent BOURESCHE
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Boundary"
type
  HandleGeomFillBoundary* = Handle[GeomFillBoundary]

## ! Root class to define a boundary  which will form part of a
## ! contour around a gap requiring filling.
## ! Any  new type  of  constrained boundary must inherit this class.
## ! The GeomFill package provides two classes to define constrained boundaries:
## ! -   GeomFill_SimpleBound to define an unattached boundary
## ! -   GeomFill_BoundWithSurf to define a boundary attached to a surface.
## ! These objects are used to define the boundaries for a
## ! GeomFill_ConstrainedFilling framework.

type
  GeomFillBoundary* {.importcpp: "GeomFill_Boundary",
                     header: "GeomFill_Boundary.hxx", bycopy.} = object of StandardTransient


proc value*(this: GeomFillBoundary; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_Boundary.hxx".}
proc d1*(this: GeomFillBoundary; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "GeomFill_Boundary.hxx".}
proc hasNormals*(this: GeomFillBoundary): bool {.noSideEffect, cdecl,
    importcpp: "HasNormals", header: "GeomFill_Boundary.hxx".}
proc norm*(this: GeomFillBoundary; u: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Norm", header: "GeomFill_Boundary.hxx".}
proc d1Norm*(this: GeomFillBoundary; u: cfloat; n: var VecObj; dn: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1Norm", header: "GeomFill_Boundary.hxx".}
proc reparametrize*(this: var GeomFillBoundary; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_Boundary.hxx".}
proc points*(this: GeomFillBoundary; pFirst: var PntObj; pLast: var PntObj) {.noSideEffect,
    cdecl, importcpp: "Points", header: "GeomFill_Boundary.hxx".}
proc bounds*(this: GeomFillBoundary; first: var cfloat; last: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Bounds", header: "GeomFill_Boundary.hxx".}
proc isDegenerated*(this: GeomFillBoundary): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_Boundary.hxx".}
proc tol3d*(this: GeomFillBoundary): cfloat {.noSideEffect, cdecl, importcpp: "Tol3d",
    header: "GeomFill_Boundary.hxx".}
proc tol3d*(this: var GeomFillBoundary; tol: cfloat) {.cdecl, importcpp: "Tol3d",
    header: "GeomFill_Boundary.hxx".}
proc tolang*(this: GeomFillBoundary): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolang", header: "GeomFill_Boundary.hxx".}
proc tolang*(this: var GeomFillBoundary; tol: cfloat) {.cdecl, importcpp: "Tolang",
    header: "GeomFill_Boundary.hxx".}