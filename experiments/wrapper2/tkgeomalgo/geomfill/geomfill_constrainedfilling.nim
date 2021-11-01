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
    dynlib: tkgeomalgo.}
proc init*(this: var GeomFillConstrainedFilling; b1: Handle[GeomFillBoundary];
          b2: Handle[GeomFillBoundary]; b3: Handle[GeomFillBoundary];
          noCheck: bool = false) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillConstrainedFilling; b1: Handle[GeomFillBoundary];
          b2: Handle[GeomFillBoundary]; b3: Handle[GeomFillBoundary];
          b4: Handle[GeomFillBoundary]; noCheck: bool = false) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc setDomain*(this: var GeomFillConstrainedFilling; l: cfloat;
               b: Handle[GeomFillBoundWithSurf]) {.cdecl, importcpp: "SetDomain",
    dynlib: tkgeomalgo.}
proc reBuild*(this: var GeomFillConstrainedFilling) {.cdecl, importcpp: "ReBuild",
    dynlib: tkgeomalgo.}
proc boundary*(this: GeomFillConstrainedFilling; i: cint): Handle[GeomFillBoundary] {.
    noSideEffect, cdecl, importcpp: "Boundary", dynlib: tkgeomalgo.}
proc surface*(this: GeomFillConstrainedFilling): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "Surface", dynlib: tkgeomalgo.}
proc eval*(this: GeomFillConstrainedFilling; w: cfloat; ord: cint; result: var cfloat): cint {.
    noSideEffect, cdecl, importcpp: "Eval", dynlib: tkgeomalgo.}
proc checkCoonsAlgPatch*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckCoonsAlgPatch", dynlib: tkgeomalgo.}
proc checkTgteField*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckTgteField", dynlib: tkgeomalgo.}
proc checkApprox*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckApprox", dynlib: tkgeomalgo.}
proc checkResult*(this: var GeomFillConstrainedFilling; i: cint) {.cdecl,
    importcpp: "CheckResult", dynlib: tkgeomalgo.}