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


proc makeTrimmedCone*(p1: Pnt; p2: Pnt; p3: Pnt; p4: Pnt): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: "GC_MakeTrimmedCone.hxx".}
proc makeTrimmedCone*(p1: Pnt; p2: Pnt; r1: cfloat; r2: cfloat): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: "GC_MakeTrimmedCone.hxx".}
proc value*(this: GC_MakeTrimmedCone): Handle[GeomRectangularTrimmedSurface] {.
    noSideEffect, importcpp: "Value", header: "GC_MakeTrimmedCone.hxx".}
converter `constopencascade`*(this: GC_MakeTrimmedCone): Handle[
    GeomRectangularTrimmedSurface] {.noSideEffect, importcpp: "GC_MakeTrimmedCone::operator constopencascade",
                                    header: "GC_MakeTrimmedCone.hxx".}





















