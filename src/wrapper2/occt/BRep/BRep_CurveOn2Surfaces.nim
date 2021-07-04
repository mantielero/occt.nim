##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopLoc/TopLoc_Location,
  ../GeomAbs/GeomAbs_Shape, BRep_CurveRepresentation,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOn2Surfaces"
discard "forward decl of BRep_CurveOn2Surfaces"
type
  Handle_BRep_CurveOn2Surfaces* = handle[BRep_CurveOn2Surfaces]

## ! Defines a continuity between two surfaces.

type
  BRep_CurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                          header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRep_CurveRepresentation


proc constructBRep_CurveOn2Surfaces*(S1: handle[Geom_Surface];
                                    S2: handle[Geom_Surface]; L1: TopLoc_Location;
                                    L2: TopLoc_Location; C: GeomAbs_Shape): BRep_CurveOn2Surfaces {.
    constructor, importcpp: "BRep_CurveOn2Surfaces(@)",
    header: "BRep_CurveOn2Surfaces.hxx".}
proc IsRegularity*(this: BRep_CurveOn2Surfaces): Standard_Boolean {.noSideEffect,
    importcpp: "IsRegularity", header: "BRep_CurveOn2Surfaces.hxx".}
proc IsRegularity*(this: BRep_CurveOn2Surfaces; S1: handle[Geom_Surface];
                  S2: handle[Geom_Surface]; L1: TopLoc_Location; L2: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegularity", header: "BRep_CurveOn2Surfaces.hxx".}
proc D0*(this: BRep_CurveOn2Surfaces; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRep_CurveOn2Surfaces.hxx".}
proc Surface*(this: BRep_CurveOn2Surfaces): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_CurveOn2Surfaces.hxx".}
proc Surface2*(this: BRep_CurveOn2Surfaces): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface2", header: "BRep_CurveOn2Surfaces.hxx".}
proc Location2*(this: BRep_CurveOn2Surfaces): TopLoc_Location {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveOn2Surfaces.hxx".}
proc Continuity*(this: BRep_CurveOn2Surfaces): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveOn2Surfaces.hxx".}
proc Continuity*(this: var BRep_CurveOn2Surfaces; C: GeomAbs_Shape) {.
    importcpp: "Continuity", header: "BRep_CurveOn2Surfaces.hxx".}
proc Copy*(this: BRep_CurveOn2Surfaces): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveOn2Surfaces.hxx".}
proc DumpJson*(this: BRep_CurveOn2Surfaces; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_CurveOn2Surfaces.hxx".}
type
  BRep_CurveOn2Surfacesbase_type* = BRep_CurveRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_CurveOn2Surfaces::get_type_name(@)",
                              header: "BRep_CurveOn2Surfaces.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_CurveOn2Surfaces::get_type_descriptor(@)",
    header: "BRep_CurveOn2Surfaces.hxx".}
proc DynamicType*(this: BRep_CurveOn2Surfaces): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_CurveOn2Surfaces.hxx".}