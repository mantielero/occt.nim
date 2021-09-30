##  Created on: 2003-12-10
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of ShapeCustom_SweptToElementary"
discard "forward decl of ShapeCustom_SweptToElementary"
type
  HandleC1C1* = Handle[ShapeCustomSweptToElementary]

## ! implements a modification for the BRepTools
## ! Modifier algortihm. Converts all elementary
## ! surfaces into surfaces of revolution.

type
  ShapeCustomSweptToElementary* {.importcpp: "ShapeCustom_SweptToElementary",
                                 header: "ShapeCustom_SweptToElementary.hxx",
                                 bycopy.} = object of ShapeCustomModification


proc constructShapeCustomSweptToElementary*(): ShapeCustomSweptToElementary {.
    constructor, importcpp: "ShapeCustom_SweptToElementary(@)",
    header: "ShapeCustom_SweptToElementary.hxx".}
proc newSurface*(this: var ShapeCustomSweptToElementary; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var cfloat;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "ShapeCustom_SweptToElementary.hxx".}
proc newCurve*(this: var ShapeCustomSweptToElementary; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var cfloat): bool {.
    importcpp: "NewCurve", header: "ShapeCustom_SweptToElementary.hxx".}
proc newPoint*(this: var ShapeCustomSweptToElementary; v: TopoDS_Vertex; p: var Pnt;
              tol: var cfloat): bool {.importcpp: "NewPoint",
                                   header: "ShapeCustom_SweptToElementary.hxx".}
proc newCurve2d*(this: var ShapeCustomSweptToElementary; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var cfloat): bool {.
    importcpp: "NewCurve2d", header: "ShapeCustom_SweptToElementary.hxx".}
proc newParameter*(this: var ShapeCustomSweptToElementary; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var cfloat; tol: var cfloat): bool {.
    importcpp: "NewParameter", header: "ShapeCustom_SweptToElementary.hxx".}
proc continuity*(this: var ShapeCustomSweptToElementary; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "ShapeCustom_SweptToElementary.hxx".}
type
  ShapeCustomSweptToElementarybaseType* = ShapeCustomModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_SweptToElementary::get_type_name(@)",
                            header: "ShapeCustom_SweptToElementary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_SweptToElementary::get_type_descriptor(@)",
    header: "ShapeCustom_SweptToElementary.hxx".}
proc dynamicType*(this: ShapeCustomSweptToElementary): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_SweptToElementary.hxx".}

























