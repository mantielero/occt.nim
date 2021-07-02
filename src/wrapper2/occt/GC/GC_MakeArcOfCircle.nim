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

discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GC_MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                       header: "GC_MakeArcOfCircle.hxx", bycopy.} = object of GC_Root ## !
                                                                               ## Make
                                                                               ## an
                                                                               ## arc
                                                                               ## of
                                                                               ## circle
                                                                               ## (TrimmedCurve
                                                                               ## from
                                                                               ## Geom)
                                                                               ## from
                                                                               ## ! a
                                                                               ## circle
                                                                               ## between
                                                                               ## two
                                                                               ## angles
                                                                               ## Alpha1
                                                                               ## and
                                                                               ## Alpha2
                                                                               ## !
                                                                               ## given
                                                                               ## in
                                                                               ## radiians.


proc constructGC_MakeArcOfCircle*(circ: GpCirc; alpha1: StandardReal;
                                 alpha2: StandardReal; sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(circ: GpCirc; p: GpPnt; alpha: StandardReal;
                                 sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(circ: GpCirc; p1: GpPnt; p2: GpPnt;
                                 sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(p1: GpPnt; v: GpVec; p2: GpPnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc value*(this: GC_MakeArcOfCircle): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeArcOfCircle.hxx".}
converter `constopencascade`*(this: GC_MakeArcOfCircle): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfCircle::operator constopencascade",
    header: "GC_MakeArcOfCircle.hxx".}

