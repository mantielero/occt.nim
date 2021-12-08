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
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Pnt"
type
  MakeArcOfHyperbola* {.importcpp: "GC_MakeArcOfHyperbola",
                       header: "GC_MakeArcOfHyperbola.hxx", bycopy.} = object of Root ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## arc
                                                                               ## of
                                                                               ## Hyperbola
                                                                               ## (TrimmedCurve
                                                                               ## from
                                                                               ## Geom)
                                                                               ## from
                                                                               ## ! a
                                                                               ## Hyperbola
                                                                               ## between
                                                                               ## two
                                                                               ## parameters
                                                                               ## Alpha1
                                                                               ## and
                                                                               ## Alpha2
                                                                               ## !
                                                                               ## (given
                                                                               ## in
                                                                               ## radians).


proc arcHyperbola*(hypr: Hypr; alpha1: cfloat; alpha2: cfloat; sense: bool): MakeArcOfHyperbola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfHyperbola(@)", header: "GC_MakeArcOfHyperbola.hxx".}
proc arcHyperbola*(hypr: Hypr; p: Pnt; alpha: cfloat; sense: bool): MakeArcOfHyperbola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfHyperbola(@)", header: "GC_MakeArcOfHyperbola.hxx".}
proc arcHyperbola*(hypr: Hypr; p1: Pnt; p2: Pnt; sense: bool): MakeArcOfHyperbola {.
    cdecl, constructor, importcpp: "GC_MakeArcOfHyperbola(@)", header: "GC_MakeArcOfHyperbola.hxx".}
proc value*(this: MakeArcOfHyperbola): HandleGeomTrimmedCurve {.noSideEffect,
    cdecl, importcpp: "Value", header: "GC_MakeArcOfHyperbola.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeArcOfHyperbola): HandleGeomTrimmedCurve {.
    noSideEffect, cdecl,
    importcpp: "(Handle_Geom_TrimmedCurve)(#)",
    header: "GC_MakeArcOfHyperbola.hxx".}