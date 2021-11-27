##  Created on: 1995-10-13
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

discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of GeomFill_TgtField"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of GeomFill_Boundary"
discard "forward decl of GeomFill_BoundWithSurf"
type
  GeomFillConstrainedFilling* {.importcpp: "GeomFill_ConstrainedFilling",
                               header: "GeomFill_ConstrainedFilling.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Constructs
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## framework
                                                                                       ## for
                                                                                       ## filling
                                                                                       ## a
                                                                                       ## surface
                                                                                       ## from
                                                                                       ## boundaries.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## boundaries
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## be
                                                                                       ## defined,
                                                                                       ## and
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## be
                                                                                       ## built
                                                                                       ## by
                                                                                       ## using
                                                                                       ## the
                                                                                       ## function
                                                                                       ## Init.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## surface
                                                                                       ## will
                                                                                       ## respect
                                                                                       ## the
                                                                                       ## following
                                                                                       ## constraints:
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## its
                                                                                       ## degree
                                                                                       ## will
                                                                                       ## not
                                                                                       ## be
                                                                                       ## greater
                                                                                       ## than
                                                                                       ## MaxDeg
                                                                                       ##
                                                                                       ## !
                                                                                       ## -
                                                                                       ## the
                                                                                       ## maximum
                                                                                       ## number
                                                                                       ## of
                                                                                       ## segments
                                                                                       ## MaxSeg
                                                                                       ## which
                                                                                       ##
                                                                                       ## !
                                                                                       ## BSpline
                                                                                       ## surfaces
                                                                                       ## can
                                                                                       ## have.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Performs
                                                                                       ## the
                                                                                       ## approximation
                                                                                       ## an
                                                                                       ## compute
                                                                                       ## the
                                                                                       ## poles
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## surface.


proc newGeomFillConstrainedFilling*(maxDeg: cint; maxSeg: cint): GeomFillConstrainedFilling {.
    cdecl, constructor, importcpp: "GeomFill_ConstrainedFilling(@)",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc init*(this: var GeomFillConstrainedFilling; b1: Handle[GeomFillBoundary];
          b2: Handle[GeomFillBoundary]; b3: Handle[GeomFillBoundary];
          noCheck: bool = false) {.cdecl, importcpp: "Init", header: "GeomFill_ConstrainedFilling.hxx".}
proc init*(this: var GeomFillConstrainedFilling; b1: Handle[GeomFillBoundary];
          b2: Handle[GeomFillBoundary]; b3: Handle[GeomFillBoundary];
          b4: Handle[GeomFillBoundary]; noCheck: bool = false) {.cdecl,
    importcpp: "Init", header: "GeomFill_ConstrainedFilling.hxx".}
proc setDomain*(this: var GeomFillConstrainedFilling; l: cfloat;
               b: Handle[GeomFillBoundWithSurf]) {.cdecl, importcpp: "SetDomain",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc reBuild*(this: var GeomFillConstrainedFilling) {.cdecl, importcpp: "ReBuild",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc boundary*(this: GeomFillConstrainedFilling; i: cint): Handle[GeomFillBoundary] {.
    noSideEffect, cdecl, importcpp: "Boundary", header: "GeomFill_ConstrainedFilling.hxx".}
proc surface*(this: GeomFillConstrainedFilling): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "Surface", header: "GeomFill_ConstrainedFilling.hxx".}
proc eval*(this: GeomFillConstrainedFilling; w: cfloat; ord: cint; result: var cfloat): cint {.
    noSideEffect, cdecl, importcpp: "Eval", header: "GeomFill_ConstrainedFilling.hxx".}
proc checkCoonsAlgPatch*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckCoonsAlgPatch", header: "GeomFill_ConstrainedFilling.hxx".}
proc checkTgteField*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckTgteField", header: "GeomFill_ConstrainedFilling.hxx".}
proc checkApprox*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckApprox", header: "GeomFill_ConstrainedFilling.hxx".}
proc checkResult*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckResult", header: "GeomFill_ConstrainedFilling.hxx".}