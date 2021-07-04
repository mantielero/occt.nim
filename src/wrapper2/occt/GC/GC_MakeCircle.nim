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
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_Circle

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


proc constructGC_MakeCircle*(C: gp_Circ): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(A2: gp_Ax2; Radius: Standard_Real): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(Circ: gp_Circ; Dist: Standard_Real): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(Circ: gp_Circ; Point: gp_Pnt): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(Center: gp_Pnt; Norm: gp_Dir; Radius: Standard_Real): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(Center: gp_Pnt; PtAxis: gp_Pnt; Radius: Standard_Real): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc constructGC_MakeCircle*(Axis: gp_Ax1; Radius: Standard_Real): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc Value*(this: GC_MakeCircle): handle[Geom_Circle] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeCircle.hxx".}
converter `constopencascade`*(this: GC_MakeCircle): handle[Geom_Circle] {.
    noSideEffect, importcpp: "GC_MakeCircle::operator constopencascade",
    header: "GC_MakeCircle.hxx".}