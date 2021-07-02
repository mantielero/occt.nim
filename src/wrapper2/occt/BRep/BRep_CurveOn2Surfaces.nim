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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOn2Surfaces"
discard "forward decl of BRep_CurveOn2Surfaces"
type
  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]

## ! Defines a continuity between two surfaces.

type
  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRepCurveRepresentation


proc constructBRepCurveOn2Surfaces*(s1: Handle[GeomSurface];
                                   s2: Handle[GeomSurface]; l1: TopLocLocation;
                                   l2: TopLocLocation; c: GeomAbsShape): BRepCurveOn2Surfaces {.
    constructor, importcpp: "BRep_CurveOn2Surfaces(@)",
    header: "BRep_CurveOn2Surfaces.hxx".}
proc isRegularity*(this: BRepCurveOn2Surfaces): StandardBoolean {.noSideEffect,
    importcpp: "IsRegularity", header: "BRep_CurveOn2Surfaces.hxx".}
proc isRegularity*(this: BRepCurveOn2Surfaces; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsRegularity", header: "BRep_CurveOn2Surfaces.hxx".}
proc d0*(this: BRepCurveOn2Surfaces; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "BRep_CurveOn2Surfaces.hxx".}
proc surface*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_CurveOn2Surfaces.hxx".}
proc surface2*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: "BRep_CurveOn2Surfaces.hxx".}
proc location2*(this: BRepCurveOn2Surfaces): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveOn2Surfaces.hxx".}
proc continuity*(this: BRepCurveOn2Surfaces): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveOn2Surfaces.hxx".}
proc continuity*(this: var BRepCurveOn2Surfaces; c: GeomAbsShape) {.
    importcpp: "Continuity", header: "BRep_CurveOn2Surfaces.hxx".}
proc copy*(this: BRepCurveOn2Surfaces): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveOn2Surfaces.hxx".}
proc dumpJson*(this: BRepCurveOn2Surfaces; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_CurveOn2Surfaces.hxx".}
type
  BRepCurveOn2SurfacesbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_CurveOn2Surfaces::get_type_name(@)",
                            header: "BRep_CurveOn2Surfaces.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveOn2Surfaces::get_type_descriptor(@)",
    header: "BRep_CurveOn2Surfaces.hxx".}
proc dynamicType*(this: BRepCurveOn2Surfaces): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_CurveOn2Surfaces.hxx".}

