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
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  GC_MakeCircle* {.importcpp: "GC_MakeCircle", header: "GC_MakeCircle.hxx", bycopy.} = object of GC_Root ##
                                                                                               ## !
                                                                                               ## creates
                                                                                               ## a
                                                                                               ## circle
                                                                                               ## from
                                                                                               ## a
                                                                                               ## non
                                                                                               ## persistent
                                                                                               ## circle
                                                                                               ## C
                                                                                               ## by
                                                                                               ## its
                                                                                               ## conversion.


proc constructGC_MakeCircle*(c: GpCirc): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(a2: GpAx2; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(circ: GpCirc; dist: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(circ: GpCirc; point: GpPnt): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(center: GpPnt; norm: GpDir; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(center: GpPnt; ptAxis: GpPnt; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(axis: GpAx1; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc value*(this: GC_MakeCircle): Handle[GeomCircle] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeCircle.hxx".}
converter `constopencascade`*(this: GC_MakeCircle): Handle[GeomCircle] {.
    noSideEffect, importcpp: "GC_MakeCircle::operator constopencascade",
    header: "GC_MakeCircle.hxx".}

