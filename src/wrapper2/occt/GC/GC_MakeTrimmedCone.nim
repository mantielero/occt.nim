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
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_RectangularTrimmedSurface

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
type
  GC_MakeTrimmedCone* {.importcpp: "GC_MakeTrimmedCone",
                       header: "GC_MakeTrimmedCone.hxx", bycopy.} = object of GC_Root ## !
                                                                               ## Make a
                                                                               ## RectangularTrimmedSurface
                                                                               ## <TheCone>
                                                                               ## from
                                                                               ## Geom
                                                                               ## !
                                                                               ## It
                                                                               ## is
                                                                               ## trimmed
                                                                               ## by
                                                                               ## P3
                                                                               ## and
                                                                               ## P4.
                                                                               ## !
                                                                               ## Its
                                                                               ## axis
                                                                               ## is
                                                                               ## <P1P2>
                                                                               ## and
                                                                               ## the
                                                                               ## radius
                                                                               ## of
                                                                               ## its
                                                                               ## base
                                                                               ## is
                                                                               ## !
                                                                               ## the
                                                                               ## distance
                                                                               ## between
                                                                               ## <P3>
                                                                               ## and
                                                                               ## <P1P2>.
                                                                               ## !
                                                                               ## The
                                                                               ## distance
                                                                               ## between
                                                                               ## <P4>
                                                                               ## and
                                                                               ## <P1P2>
                                                                               ## is
                                                                               ## the
                                                                               ## radius
                                                                               ## of
                                                                               ## !
                                                                               ## the
                                                                               ## section
                                                                               ## passing
                                                                               ## through
                                                                               ## <P4>.
                                                                               ## !
                                                                               ## An
                                                                               ## error
                                                                               ## iss
                                                                               ## raised
                                                                               ## if
                                                                               ## <P1>,<P2>,<P3>,<P4>
                                                                               ## are
                                                                               ## !
                                                                               ## colinear
                                                                               ## or
                                                                               ## if
                                                                               ## <P3P4>
                                                                               ## is
                                                                               ## perpendicular
                                                                               ## to
                                                                               ## <P1P2>
                                                                               ## or
                                                                               ## !
                                                                               ## <P3P4>
                                                                               ## is
                                                                               ## colinear
                                                                               ## to
                                                                               ## <P1P2>.


proc constructGC_MakeTrimmedCone*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt; P4: gp_Pnt): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: "GC_MakeTrimmedCone.hxx".}
proc constructGC_MakeTrimmedCone*(P1: gp_Pnt; P2: gp_Pnt; R1: Standard_Real;
                                 R2: Standard_Real): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: "GC_MakeTrimmedCone.hxx".}
proc Value*(this: GC_MakeTrimmedCone): handle[Geom_RectangularTrimmedSurface] {.
    noSideEffect, importcpp: "Value", header: "GC_MakeTrimmedCone.hxx".}
converter `constopencascade`*(this: GC_MakeTrimmedCone): handle[
    Geom_RectangularTrimmedSurface] {.noSideEffect, importcpp: "GC_MakeTrimmedCone::operator constopencascade",
                                     header: "GC_MakeTrimmedCone.hxx".}