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


proc newGCE2dMakeCircle*(c: Circ2d): GCE2dMakeCircle {.cdecl, constructor,
    importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(a: Ax2d; radius: cfloat; sense: bool = true): GCE2dMakeCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(a: Ax22d; radius: cfloat): GCE2dMakeCircle {.cdecl,
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(circ: Circ2d; dist: cfloat): GCE2dMakeCircle {.cdecl,
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(circ: Circ2d; point: Pnt2d): GCE2dMakeCircle {.cdecl,
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(p1: Pnt2d; p2: Pnt2d; p3: Pnt2d): GCE2dMakeCircle {.cdecl,
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(p: Pnt2d; radius: cfloat; sense: bool = true): GCE2dMakeCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc newGCE2dMakeCircle*(center: Pnt2d; point: Pnt2d; sense: bool = true): GCE2dMakeCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc value*(this: GCE2dMakeCircle): Handle[Geom2dCircle] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GCE2d_MakeCircle.hxx".}
converter `constopencascade`*(this: GCE2dMakeCircle): Handle[Geom2dCircle] {.
    noSideEffect, cdecl, importcpp: "GCE2d_MakeCircle::operator constopencascade",
    header: "GCE2d_MakeCircle.hxx".}