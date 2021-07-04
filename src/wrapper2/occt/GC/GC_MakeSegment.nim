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
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_TrimmedCurve

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


proc constructGC_MakeSegment*(P1: gp_Pnt; P2: gp_Pnt): GC_MakeSegment {.constructor,
    importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc constructGC_MakeSegment*(Line: gp_Lin; U1: Standard_Real; U2: Standard_Real): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc constructGC_MakeSegment*(Line: gp_Lin; Point: gp_Pnt; Ulast: Standard_Real): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc constructGC_MakeSegment*(Line: gp_Lin; P1: gp_Pnt; P2: gp_Pnt): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: "GC_MakeSegment.hxx".}
proc Value*(this: GC_MakeSegment): handle[Geom_TrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeSegment.hxx".}
converter `constopencascade`*(this: GC_MakeSegment): handle[Geom_TrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeSegment::operator constopencascade",
    header: "GC_MakeSegment.hxx".}