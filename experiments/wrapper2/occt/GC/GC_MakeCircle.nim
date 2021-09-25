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


proc constructGC_MakeCircle*(c: Circ): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(a2: Ax2; radius: float): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(circ: Circ; dist: float): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(circ: Circ; point: Pnt): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(p1: Pnt; p2: Pnt; p3: Pnt): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(center: Pnt; norm: Dir; radius: float): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(center: Pnt; ptAxis: Pnt; radius: float): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(axis: Ax1; radius: float): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc value*(this: GC_MakeCircle): Handle[GeomCircle] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeCircle.hxx".}
converter `constopencascade`*(this: GC_MakeCircle): Handle[GeomCircle] {.
    noSideEffect, importcpp: "GC_MakeCircle::operator constopencascade",
    header: "GC_MakeCircle.hxx".}
