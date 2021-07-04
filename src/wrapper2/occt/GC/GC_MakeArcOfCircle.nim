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

discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GC_MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                       header: "GC_MakeArcOfCircle.hxx", bycopy.} = object of GC_Root ## !
                                                                               ## Make
                                                                               ## an
                                                                               ## arc
                                                                               ## of
                                                                               ## circle
                                                                               ## (TrimmedCurve
                                                                               ## from
                                                                               ## Geom)
                                                                               ## from
                                                                               ## ! a
                                                                               ## circle
                                                                               ## between
                                                                               ## two
                                                                               ## angles
                                                                               ## Alpha1
                                                                               ## and
                                                                               ## Alpha2
                                                                               ## !
                                                                               ## given
                                                                               ## in
                                                                               ## radiians.


proc constructGC_MakeArcOfCircle*(Circ: gp_Circ; Alpha1: Standard_Real;
                                 Alpha2: Standard_Real; Sense: Standard_Boolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(Circ: gp_Circ; P: gp_Pnt; Alpha: Standard_Real;
                                 Sense: Standard_Boolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(Circ: gp_Circ; P1: gp_Pnt; P2: gp_Pnt;
                                 Sense: Standard_Boolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc constructGC_MakeArcOfCircle*(P1: gp_Pnt; V: gp_Vec; P2: gp_Pnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: "GC_MakeArcOfCircle.hxx".}
proc Value*(this: GC_MakeArcOfCircle): handle[Geom_TrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeArcOfCircle.hxx".}
converter `constopencascade`*(this: GC_MakeArcOfCircle): handle[Geom_TrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfCircle::operator constopencascade",
    header: "GC_MakeArcOfCircle.hxx".}