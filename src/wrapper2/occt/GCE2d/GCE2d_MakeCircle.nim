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
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeCircle* {.importcpp: "GCE2d_MakeCircle", header: "GCE2d_MakeCircle.hxx",
                    bycopy.} = object of GCE2dRoot ## ! creates a circle from a non persistent one.


proc constructGCE2dMakeCircle*(c: GpCirc2d): GCE2dMakeCircle {.constructor,
    importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(a: GpAx2d; radius: StandardReal;
                              sense: StandardBoolean = standardTrue): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(a: GpAx22d; radius: StandardReal): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(circ: GpCirc2d; dist: StandardReal): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(circ: GpCirc2d; point: GpPnt2d): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(p1: GpPnt2d; p2: GpPnt2d; p3: GpPnt2d): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(p: GpPnt2d; radius: StandardReal;
                              sense: StandardBoolean = standardTrue): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2dMakeCircle*(center: GpPnt2d; point: GpPnt2d;
                              sense: StandardBoolean = standardTrue): GCE2dMakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc value*(this: GCE2dMakeCircle): Handle[Geom2dCircle] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeCircle.hxx".}
converter `constopencascade`*(this: GCE2dMakeCircle): Handle[Geom2dCircle] {.
    noSideEffect, importcpp: "GCE2d_MakeCircle::operator constopencascade",
    header: "GCE2d_MakeCircle.hxx".}

