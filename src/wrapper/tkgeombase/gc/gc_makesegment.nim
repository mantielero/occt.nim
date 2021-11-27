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
discard "forward decl of gp_Lin"
type
  GC_MakeSegment* {.importcpp: "GC_MakeSegment", header: "GC_MakeSegment.hxx", bycopy.} = object of GC_Root ##
                                                                                                  ## !
                                                                                                  ## Make
                                                                                                  ## a
                                                                                                  ## segment
                                                                                                  ## of
                                                                                                  ## Line
                                                                                                  ## from
                                                                                                  ## the
                                                                                                  ## 2
                                                                                                  ## points
                                                                                                  ## <P1>
                                                                                                  ## and
                                                                                                  ## <P2>.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## returns
                                                                                                  ## NullObject
                                                                                                  ## if
                                                                                                  ## <P1>
                                                                                                  ## and
                                                                                                  ## <P2>
                                                                                                  ## are
                                                                                                  ## confused.


proc newGC_MakeSegment*(p1: Pnt; p2: Pnt): GC_MakeSegment {.cdecl, constructor,
    importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc newGC_MakeSegment*(line: Lin; u1: cfloat; u2: cfloat): GC_MakeSegment {.cdecl,
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc newGC_MakeSegment*(line: Lin; point: Pnt; ulast: cfloat): GC_MakeSegment {.cdecl,
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc newGC_MakeSegment*(line: Lin; p1: Pnt; p2: Pnt): GC_MakeSegment {.cdecl,
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc value*(this: GC_MakeSegment): Handle[GeomTrimmedCurve] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeSegment.hxx".}
converter `constopencascade`*(this: GC_MakeSegment): Handle[GeomTrimmedCurve] {.
    noSideEffect, cdecl, importcpp: "GC_MakeSegment::operator constopencascade",
    header: "GC_MakeSegment.hxx".}