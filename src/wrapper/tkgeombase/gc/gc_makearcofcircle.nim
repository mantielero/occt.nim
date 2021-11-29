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

discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                    header: "GC_MakeArcOfCircle.hxx", bycopy.} = object of Root ## ! Make an arc of circle
                                                                         ## (TrimmedCurve from Geom) from
                                                                         ## ! a circle between two angles Alpha1 and Alpha2
                                                                         ## ! given in
                                                                         ## radiians.


proc newMakeArcOfCircle*(circ: Circ; alpha1: cfloat; alpha2: cfloat; sense: bool): MakeArcOfCircle {.
    cdecl, constructor, importcpp: "GC_MakeArcOfCircle(@)", header: "GC_MakeArcOfCircle.hxx".}
proc newMakeArcOfCircle*(circ: Circ; p: Pnt; alpha: cfloat; sense: bool): MakeArcOfCircle {.
    cdecl, constructor, importcpp: "GC_MakeArcOfCircle(@)", header: "GC_MakeArcOfCircle.hxx".}
proc newMakeArcOfCircle*(circ: Circ; p1: Pnt; p2: Pnt; sense: bool): MakeArcOfCircle {.
    cdecl, constructor, importcpp: "GC_MakeArcOfCircle(@)", header: "GC_MakeArcOfCircle.hxx".}
proc newMakeArcOfCircle*(p1: Pnt; p2: Pnt; p3: Pnt): MakeArcOfCircle {.cdecl,
    constructor, importcpp: "GC_MakeArcOfCircle(@)", header: "GC_MakeArcOfCircle.hxx".}
proc newMakeArcOfCircle*(p1: Pnt; v: Vec; p2: Pnt): MakeArcOfCircle {.cdecl, constructor,
    importcpp: "GC_MakeArcOfCircle(@)", header: "GC_MakeArcOfCircle.hxx".}
proc value*(this: MakeArcOfCircle): HandleGeomTrimmedCurve {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeArcOfCircle.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeArcOfCircle): HandleGeomTrimmedCurve {.
    noSideEffect, cdecl,
    importcpp: "(Handle_Geom_TrimmedCurve)(#)", header: "GC_MakeArcOfCircle.hxx".}