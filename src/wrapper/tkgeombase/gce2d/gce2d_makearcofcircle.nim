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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  GCE2dMakeArcOfCircle* {.importcpp: "GCE2d_MakeArcOfCircle",
                         header: "GCE2d_MakeArcOfCircle.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                      ## !
                                                                                      ## Makes
                                                                                      ## an
                                                                                      ## arc
                                                                                      ## of
                                                                                      ## circle
                                                                                      ## (TrimmedCurve
                                                                                      ## from
                                                                                      ## Geom2d)
                                                                                      ## from
                                                                                      ##
                                                                                      ## !
                                                                                      ## a
                                                                                      ## circle
                                                                                      ## between
                                                                                      ## two
                                                                                      ## parameters
                                                                                      ## Alpha1
                                                                                      ## and
                                                                                      ## Alpha2.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## two
                                                                                      ## parameters
                                                                                      ## are
                                                                                      ## angles.
                                                                                      ## The
                                                                                      ## parameters
                                                                                      ## are
                                                                                      ##
                                                                                      ## !
                                                                                      ## in
                                                                                      ## radians.


proc newGCE2dMakeArcOfCircle*(circ: Circ2dObj; alpha1: cfloat; alpha2: cfloat;
                             sense: bool = true): GCE2dMakeArcOfCircle {.cdecl,
    constructor, importcpp: "GCE2d_MakeArcOfCircle(@)", header: "GCE2d_MakeArcOfCircle.hxx".}
proc newGCE2dMakeArcOfCircle*(circ: Circ2dObj; p: Pnt2dObj; alpha: cfloat; sense: bool = true): GCE2dMakeArcOfCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeArcOfCircle(@)", header: "GCE2d_MakeArcOfCircle.hxx".}
proc newGCE2dMakeArcOfCircle*(circ: Circ2dObj; p1: Pnt2dObj; p2: Pnt2dObj; sense: bool = true): GCE2dMakeArcOfCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeArcOfCircle(@)", header: "GCE2d_MakeArcOfCircle.hxx".}
proc newGCE2dMakeArcOfCircle*(p1: Pnt2dObj; p2: Pnt2dObj; p3: Pnt2dObj): GCE2dMakeArcOfCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeArcOfCircle(@)", header: "GCE2d_MakeArcOfCircle.hxx".}
proc newGCE2dMakeArcOfCircle*(p1: Pnt2dObj; v: Vec2dObj; p2: Pnt2dObj): GCE2dMakeArcOfCircle {.
    cdecl, constructor, importcpp: "GCE2d_MakeArcOfCircle(@)", header: "GCE2d_MakeArcOfCircle.hxx".}
proc value*(this: GCE2dMakeArcOfCircle): Handle[Geom2dTrimmedCurve] {.noSideEffect,
    cdecl, importcpp: "Value", header: "GCE2d_MakeArcOfCircle.hxx".}
converter `constopencascade`*(this: GCE2dMakeArcOfCircle): Handle[
    Geom2dTrimmedCurve] {.noSideEffect, cdecl, importcpp: "GCE2d_MakeArcOfCircle::operator constopencascade",
                         header: "GCE2d_MakeArcOfCircle.hxx".}