##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeCustom_DirectModification"
discard "forward decl of ShapeCustom_DirectModification"
type
  HandleC1C1* = Handle[ShapeCustomDirectModification]

## ! implements a modification for the BRepTools
## ! Modifier algortihm. Will redress indirect
## ! surfaces.

type
  ShapeCustomDirectModification* {.importcpp: "ShapeCustom_DirectModification",
                                  header: "ShapeCustom_DirectModification.hxx",
                                  bycopy.} = object of ShapeCustomModification


proc constructShapeCustomDirectModification*(): ShapeCustomDirectModification {.
    constructor, importcpp: "ShapeCustom_DirectModification(@)",
    header: "ShapeCustom_DirectModification.hxx".}
proc newSurface*(this: var ShapeCustomDirectModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var cfloat;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "ShapeCustom_DirectModification.hxx".}
proc newCurve*(this: var ShapeCustomDirectModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var cfloat): bool {.
    importcpp: "NewCurve", header: "ShapeCustom_DirectModification.hxx".}
proc newPoint*(this: var ShapeCustomDirectModification; v: TopoDS_Vertex; p: var Pnt;
              tol: var cfloat): bool {.importcpp: "NewPoint",
                                   header: "ShapeCustom_DirectModification.hxx".}
proc newCurve2d*(this: var ShapeCustomDirectModification; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var cfloat): bool {.
    importcpp: "NewCurve2d", header: "ShapeCustom_DirectModification.hxx".}
proc newParameter*(this: var ShapeCustomDirectModification; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var cfloat; tol: var cfloat): bool {.
    importcpp: "NewParameter", header: "ShapeCustom_DirectModification.hxx".}
proc continuity*(this: var ShapeCustomDirectModification; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "ShapeCustom_DirectModification.hxx".}
type
  ShapeCustomDirectModificationbaseType* = ShapeCustomModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_DirectModification::get_type_name(@)",
                            header: "ShapeCustom_DirectModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_DirectModification::get_type_descriptor(@)",
    header: "ShapeCustom_DirectModification.hxx".}
proc dynamicType*(this: ShapeCustomDirectModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_DirectModification.hxx".}

























