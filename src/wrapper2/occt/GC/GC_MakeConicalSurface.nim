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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_ConicalSurface

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
type
  GC_MakeConicalSurface* {.importcpp: "GC_MakeConicalSurface",
                          header: "GC_MakeConicalSurface.hxx", bycopy.} = object of GC_Root ##
                                                                                     ## !
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
                                                                                     ##
                                                                                     ## !
                                                                                     ## Ang
                                                                                     ## is
                                                                                     ## the
                                                                                     ## conical
                                                                                     ## surface
                                                                                     ## semi-angle
                                                                                     ## ]0,
                                                                                     ## PI/2[.
                                                                                     ##
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
                                                                                     ##
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
                                                                                     ##
                                                                                     ## !
                                                                                     ## Radius
                                                                                     ## =
                                                                                     ## 0
                                                                                     ## .
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
                                                                                     ## Status
                                                                                     ## is
                                                                                     ## "NegativeRadius"
                                                                                     ## if
                                                                                     ## Radius
                                                                                     ## <
                                                                                     ## 0.0
                                                                                     ## or
                                                                                     ## "BadAngle"
                                                                                     ## if
                                                                                     ##
                                                                                     ## !
                                                                                     ## Ang
                                                                                     ## <
                                                                                     ## Resolution
                                                                                     ## from
                                                                                     ## gp
                                                                                     ## or
                                                                                     ## Ang
                                                                                     ## >=
                                                                                     ## PI/
                                                                                     ## -
                                                                                     ## Resolution


proc constructGC_MakeConicalSurface*(A2: gp_Ax2; Ang: Standard_Real;
                                    Radius: Standard_Real): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: "GC_MakeConicalSurface.hxx".}
proc constructGC_MakeConicalSurface*(C: gp_Cone): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: "GC_MakeConicalSurface.hxx".}
proc constructGC_MakeConicalSurface*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt; P4: gp_Pnt): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: "GC_MakeConicalSurface.hxx".}
proc constructGC_MakeConicalSurface*(P1: gp_Pnt; P2: gp_Pnt; R1: Standard_Real;
                                    R2: Standard_Real): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: "GC_MakeConicalSurface.hxx".}
proc Value*(this: GC_MakeConicalSurface): handle[Geom_ConicalSurface] {.
    noSideEffect, importcpp: "Value", header: "GC_MakeConicalSurface.hxx".}
converter `constopencascade`*(this: GC_MakeConicalSurface): handle[
    Geom_ConicalSurface] {.noSideEffect, importcpp: "GC_MakeConicalSurface::operator constopencascade",
                          header: "GC_MakeConicalSurface.hxx".}