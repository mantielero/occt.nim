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
discard "forward decl of gp_Parab"
discard "forward decl of gp_Pnt"
type
  GC_MakeArcOfParabola* {.importcpp: "GC_MakeArcOfParabola",
                         header: "GC_MakeArcOfParabola.hxx", bycopy.} = object of GC_Root ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## arc
                                                                                   ## of
                                                                                   ## Parabola
                                                                                   ## (TrimmedCurve
                                                                                   ## from
                                                                                   ## Geom)
                                                                                   ## from
                                                                                   ##
                                                                                   ## !
                                                                                   ## a
                                                                                   ## Parabola
                                                                                   ## between
                                                                                   ## two
                                                                                   ## parameters
                                                                                   ## Alpha1
                                                                                   ## and
                                                                                   ## Alpha2
                                                                                   ##
                                                                                   ## !
                                                                                   ## (given
                                                                                   ## in
                                                                                   ## radians).


proc newGC_MakeArcOfParabola*(parab: Parab; alpha1: cfloat; alpha2: cfloat; sense: bool): GC_MakeArcOfParabola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfParabola(@)", header: "GC_MakeArcOfParabola.hxx".}
proc newGC_MakeArcOfParabola*(parab: Parab; p: Pnt; alpha: cfloat; sense: bool): GC_MakeArcOfParabola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfParabola(@)", header: "GC_MakeArcOfParabola.hxx".}
proc newGC_MakeArcOfParabola*(parab: Parab; p1: Pnt; p2: Pnt; sense: bool): GC_MakeArcOfParabola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfParabola(@)", header: "GC_MakeArcOfParabola.hxx".}
proc value*(this: GC_MakeArcOfParabola): Handle[GeomTrimmedCurve] {.noSideEffect,
    cdecl, importcpp: "Value", header: "GC_MakeArcOfParabola.hxx".}
converter `constopencascade`*(this: GC_MakeArcOfParabola): Handle[GeomTrimmedCurve] {.
    noSideEffect, cdecl,
    importcpp: "GC_MakeArcOfParabola::operator constopencascade",
    header: "GC_MakeArcOfParabola.hxx".}