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


proc value*(this: GeomFillBoundary; u: float): Pnt {.noSideEffect, importcpp: "Value",
    header: "GeomFill_Boundary.hxx".}
proc d1*(this: GeomFillBoundary; u: float; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomFill_Boundary.hxx".}
proc hasNormals*(this: GeomFillBoundary): bool {.noSideEffect,
    importcpp: "HasNormals", header: "GeomFill_Boundary.hxx".}
proc norm*(this: GeomFillBoundary; u: float): Vec {.noSideEffect, importcpp: "Norm",
    header: "GeomFill_Boundary.hxx".}
proc d1Norm*(this: GeomFillBoundary; u: float; n: var Vec; dn: var Vec) {.noSideEffect,
    importcpp: "D1Norm", header: "GeomFill_Boundary.hxx".}
proc reparametrize*(this: var GeomFillBoundary; first: float; last: float; hasDF: bool;
                   hasDL: bool; df: float; dl: float; rev: bool) {.
    importcpp: "Reparametrize", header: "GeomFill_Boundary.hxx".}
proc points*(this: GeomFillBoundary; pFirst: var Pnt; pLast: var Pnt) {.noSideEffect,
    importcpp: "Points", header: "GeomFill_Boundary.hxx".}
proc bounds*(this: GeomFillBoundary; first: var float; last: var float) {.noSideEffect,
    importcpp: "Bounds", header: "GeomFill_Boundary.hxx".}
proc isDegenerated*(this: GeomFillBoundary): bool {.noSideEffect,
    importcpp: "IsDegenerated", header: "GeomFill_Boundary.hxx".}
proc tol3d*(this: GeomFillBoundary): float {.noSideEffect, importcpp: "Tol3d",
    header: "GeomFill_Boundary.hxx".}
proc tol3d*(this: var GeomFillBoundary; tol: float) {.importcpp: "Tol3d",
    header: "GeomFill_Boundary.hxx".}
proc tolang*(this: GeomFillBoundary): float {.noSideEffect, importcpp: "Tolang",
    header: "GeomFill_Boundary.hxx".}
proc tolang*(this: var GeomFillBoundary; tol: float) {.importcpp: "Tolang",
    header: "GeomFill_Boundary.hxx".}
type
  GeomFillBoundarybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomFill_Boundary::get_type_name(@)",
                            header: "GeomFill_Boundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_Boundary::get_type_descriptor(@)",
    header: "GeomFill_Boundary.hxx".}
proc dynamicType*(this: GeomFillBoundary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_Boundary.hxx".}
