##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Circ"
type
  MakeCylindricalSurface* {.importcpp: "GC_MakeCylindricalSurface",
                           header: "GC_MakeCylindricalSurface.hxx", bycopy.} = object of Root ##
                                                                                       ## !
                                                                                       ## A2
                                                                                       ## defines
                                                                                       ## the
                                                                                       ## local
                                                                                       ## coordinate
                                                                                       ## system
                                                                                       ## of
                                                                                       ## the
                                                                                       ## cylindrical
                                                                                       ## surface.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## "ZDirection"
                                                                                       ## of
                                                                                       ## A2
                                                                                       ## defines
                                                                                       ## the
                                                                                       ## direction
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface's
                                                                                       ##
                                                                                       ## !
                                                                                       ## axis
                                                                                       ## of
                                                                                       ## symmetry.
                                                                                       ##
                                                                                       ## !
                                                                                       ## At
                                                                                       ## the
                                                                                       ## creation
                                                                                       ## the
                                                                                       ## parametrization
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface
                                                                                       ## is
                                                                                       ## defined
                                                                                       ##
                                                                                       ## !
                                                                                       ## such
                                                                                       ## that
                                                                                       ## the
                                                                                       ## normal
                                                                                       ## Vector
                                                                                       ## (N
                                                                                       ## =
                                                                                       ## D1U
                                                                                       ## ^
                                                                                       ## D1V)
                                                                                       ## is
                                                                                       ## oriented
                                                                                       ## towards
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## "outside
                                                                                       ## region"
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Warnings
                                                                                       ## :
                                                                                       ##
                                                                                       ## !
                                                                                       ## It
                                                                                       ## is
                                                                                       ## not
                                                                                       ## forbidden
                                                                                       ## to
                                                                                       ## create
                                                                                       ## a
                                                                                       ## cylindrical
                                                                                       ## surface
                                                                                       ## with
                                                                                       ##
                                                                                       ## !
                                                                                       ## Radius
                                                                                       ## =
                                                                                       ## 0.0
                                                                                       ##
                                                                                       ## !
                                                                                       ## Status
                                                                                       ## is
                                                                                       ## "NegativeRadius"
                                                                                       ## if
                                                                                       ## Radius
                                                                                       ## <
                                                                                       ## 0.0


proc newMakeCylindricalSurface*(a2: Ax2; radius: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(c: Cylinder): MakeCylindricalSurface {.cdecl,
    constructor, importcpp: "GC_MakeCylindricalSurface(@)", dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(cyl: Cylinder; point: Pnt): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(cyl: Cylinder; dist: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(p1: Pnt; p2: Pnt; p3: Pnt): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(axis: Ax1; radius: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    dynlib: tkgeombase.}
proc newMakeCylindricalSurface*(circ: Circ): MakeCylindricalSurface {.cdecl,
    constructor, importcpp: "GC_MakeCylindricalSurface(@)", dynlib: tkgeombase.}
proc value*(this: MakeCylindricalSurface): Handle[GeomCylindricalSurface] {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeCylindricalSurface): Handle[
    GeomCylindricalSurface] {.noSideEffect, cdecl, importcpp: "GC_MakeCylindricalSurface::operator constopencascade",
                             dynlib: tkgeombase.}