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
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
type
  MakeConicalSurface* {.importcpp: "GC_MakeConicalSurface",
                       header: "GC_MakeConicalSurface.hxx", bycopy.} = object of Root ## !
                                                                               ## A2
                                                                               ## defines
                                                                               ## the
                                                                               ## local
                                                                               ## coordinate
                                                                               ## system
                                                                               ## of
                                                                               ## the
                                                                               ## conical
                                                                               ## surface.
                                                                               ## !
                                                                               ## Ang
                                                                               ## is
                                                                               ## the
                                                                               ## conical
                                                                               ## surface
                                                                               ## semi-angle
                                                                               ## ]0,
                                                                               ## PI/2[.
                                                                               ## !
                                                                               ## Radius
                                                                               ## is
                                                                               ## the
                                                                               ## radius
                                                                               ## of
                                                                               ## the
                                                                               ## circle
                                                                               ## Viso
                                                                               ## in
                                                                               ## the
                                                                               ## placement
                                                                               ## plane
                                                                               ## !
                                                                               ## of
                                                                               ## the
                                                                               ## conical
                                                                               ## surface
                                                                               ## defined
                                                                               ## with
                                                                               ## "XAxis"
                                                                               ## and
                                                                               ## "YAxis".
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
                                                                               ## !
                                                                               ## axis
                                                                               ## of
                                                                               ## symmetry.
                                                                               ## !
                                                                               ## If
                                                                               ## the
                                                                               ## location
                                                                               ## point
                                                                               ## of
                                                                               ## A2
                                                                               ## is
                                                                               ## the
                                                                               ## apex
                                                                               ## of
                                                                               ## the
                                                                               ## surface
                                                                               ## !
                                                                               ## Radius = 0 .
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
                                                                               ## !
                                                                               ## such
                                                                               ## that
                                                                               ## the
                                                                               ## normal
                                                                               ## Vector
                                                                               ## (N =
                                                                               ## D1U ^
                                                                               ## D1V)
                                                                               ## is
                                                                               ## oriented
                                                                               ## towards
                                                                               ## !
                                                                               ## the
                                                                               ## "outside
                                                                               ## region"
                                                                               ## of
                                                                               ## the
                                                                               ## surface.
                                                                               ## !
                                                                               ## Status
                                                                               ## is
                                                                               ## "NegativeRadius"
                                                                               ## if
                                                                               ## Radius <
                                                                               ## 0.0
                                                                               ## or
                                                                               ## "BadAngle"
                                                                               ## if
                                                                               ## !
                                                                               ## Ang <
                                                                               ## Resolution
                                                                               ## from
                                                                               ## gp
                                                                               ## or
                                                                               ## Ang
                                                                               ## >=
                                                                               ## PI/ -
                                                                               ## Resolution


proc newMakeConicalSurface*(a2: Ax2; ang: cfloat; radius: cfloat): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", dynlib: tkgeombase.}
proc newMakeConicalSurface*(c: Cone): MakeConicalSurface {.cdecl, constructor,
    importcpp: "GC_MakeConicalSurface(@)", dynlib: tkgeombase.}
proc newMakeConicalSurface*(p1: Pnt; p2: Pnt; p3: Pnt; p4: Pnt): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", dynlib: tkgeombase.}
proc newMakeConicalSurface*(p1: Pnt; p2: Pnt; r1: cfloat; r2: cfloat): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", dynlib: tkgeombase.}
proc value*(this: MakeConicalSurface): Handle[GeomConicalSurface] {.noSideEffect,
    cdecl, importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeConicalSurface): Handle[GeomConicalSurface] {.
    noSideEffect, cdecl,
    importcpp: "GC_MakeConicalSurface::operator constopencascade",
    dynlib: tkgeombase.}