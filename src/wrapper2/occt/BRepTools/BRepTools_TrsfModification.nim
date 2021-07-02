##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepTools_TrsfModification"
discard "forward decl of BRepTools_TrsfModification"
type
  HandleBRepToolsTrsfModification* = Handle[BRepToolsTrsfModification]

## ! Describes a modification that uses a gp_Trsf to
## ! change the geometry of a shape. All functions return
## ! true and transform the geometry of the shape.

type
  BRepToolsTrsfModification* {.importcpp: "BRepTools_TrsfModification",
                              header: "BRepTools_TrsfModification.hxx", bycopy.} = object of BRepToolsModification


proc constructBRepToolsTrsfModification*(t: GpTrsf): BRepToolsTrsfModification {.
    constructor, importcpp: "BRepTools_TrsfModification(@)",
    header: "BRepTools_TrsfModification.hxx".}
proc trsf*(this: var BRepToolsTrsfModification): var GpTrsf {.importcpp: "Trsf",
    header: "BRepTools_TrsfModification.hxx".}
proc newSurface*(this: var BRepToolsTrsfModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation;
                tol: var StandardReal; revWires: var StandardBoolean;
                revFace: var StandardBoolean): StandardBoolean {.
    importcpp: "NewSurface", header: "BRepTools_TrsfModification.hxx".}
proc newCurve*(this: var BRepToolsTrsfModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve", header: "BRepTools_TrsfModification.hxx".}
proc newPoint*(this: var BRepToolsTrsfModification; v: TopoDS_Vertex; p: var GpPnt;
              tol: var StandardReal): StandardBoolean {.importcpp: "NewPoint",
    header: "BRepTools_TrsfModification.hxx".}
proc newCurve2d*(this: var BRepToolsTrsfModification; e: TopoDS_Edge; f: TopoDS_Face;
                newE: TopoDS_Edge; newF: TopoDS_Face; c: var Handle[Geom2dCurve];
                tol: var StandardReal): StandardBoolean {.importcpp: "NewCurve2d",
    header: "BRepTools_TrsfModification.hxx".}
proc newParameter*(this: var BRepToolsTrsfModification; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var StandardReal; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewParameter", header: "BRepTools_TrsfModification.hxx".}
proc continuity*(this: var BRepToolsTrsfModification; e: TopoDS_Edge; f1: TopoDS_Face;
                f2: TopoDS_Face; newE: TopoDS_Edge; newF1: TopoDS_Face;
                newF2: TopoDS_Face): GeomAbsShape {.importcpp: "Continuity",
    header: "BRepTools_TrsfModification.hxx".}
type
  BRepToolsTrsfModificationbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "BRepTools_TrsfModification::get_type_name(@)",
                            header: "BRepTools_TrsfModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_TrsfModification::get_type_descriptor(@)",
    header: "BRepTools_TrsfModification.hxx".}
proc dynamicType*(this: BRepToolsTrsfModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepTools_TrsfModification.hxx".}

