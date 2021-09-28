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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Lin2d"
type
  GCE2dMakeSegment* {.importcpp: "GCE2d_MakeSegment",
                     header: "GCE2d_MakeSegment.hxx", bycopy.} = object of GCE2dRoot ## !
                                                                              ## Make a
                                                                              ## segment of
                                                                              ## Line
                                                                              ## from
                                                                              ## the 2
                                                                              ## points
                                                                              ## <P1>
                                                                              ## and
                                                                              ## <P2>.
                                                                              ## !
                                                                              ## Status is
                                                                              ## "ConfusedPoints" if
                                                                              ## <P1>
                                                                              ## and
                                                                              ## <P2>
                                                                              ## are
                                                                              ## confused.


proc constructGCE2dMakeSegment*(p1: Pnt2d; p2: Pnt2d): GCE2dMakeSegment {.constructor,
    importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc constructGCE2dMakeSegment*(p1: Pnt2d; v: Dir2d; p2: Pnt2d): GCE2dMakeSegment {.
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc constructGCE2dMakeSegment*(line: Lin2d; u1: cfloat; u2: cfloat): GCE2dMakeSegment {.
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc constructGCE2dMakeSegment*(line: Lin2d; point: Pnt2d; ulast: cfloat): GCE2dMakeSegment {.
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc constructGCE2dMakeSegment*(line: Lin2d; p1: Pnt2d; p2: Pnt2d): GCE2dMakeSegment {.
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc value*(this: GCE2dMakeSegment): Handle[Geom2dTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeSegment.hxx".}
converter `constopencascade`*(this: GCE2dMakeSegment): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, importcpp: "GCE2d_MakeSegment::operator constopencascade",
    header: "GCE2d_MakeSegment.hxx".}

























