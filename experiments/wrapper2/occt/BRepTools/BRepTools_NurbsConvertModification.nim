##  Created on: 1996-07-12
##  Created by: Stagiaire Mary FABIEN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of BRepTools_NurbsConvertModification"
discard "forward decl of BRepTools_NurbsConvertModification"
type
  HandleC1C1* = Handle[BRepToolsNurbsConvertModification]

## ! Defines a modification of the  geometry by a  Trsf
## ! from gp. All methods return True and transform the
## ! geometry.

type
  BRepToolsNurbsConvertModification* {.importcpp: "BRepTools_NurbsConvertModification", header: "BRepTools_NurbsConvertModification.hxx",
                                      bycopy.} = object of BRepToolsModification


proc constructBRepToolsNurbsConvertModification*(): BRepToolsNurbsConvertModification {.
    constructor, importcpp: "BRepTools_NurbsConvertModification(@)",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc newSurface*(this: var BRepToolsNurbsConvertModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var cfloat;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc newCurve*(this: var BRepToolsNurbsConvertModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var cfloat): bool {.
    importcpp: "NewCurve", header: "BRepTools_NurbsConvertModification.hxx".}
proc newPoint*(this: var BRepToolsNurbsConvertModification; v: TopoDS_Vertex;
              p: var Pnt; tol: var cfloat): bool {.importcpp: "NewPoint",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc newCurve2d*(this: var BRepToolsNurbsConvertModification; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var cfloat): bool {.
    importcpp: "NewCurve2d", header: "BRepTools_NurbsConvertModification.hxx".}
proc newParameter*(this: var BRepToolsNurbsConvertModification; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var cfloat; tol: var cfloat): bool {.
    importcpp: "NewParameter", header: "BRepTools_NurbsConvertModification.hxx".}
proc continuity*(this: var BRepToolsNurbsConvertModification; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "BRepTools_NurbsConvertModification.hxx".}
proc getUpdatedEdges*(this: BRepToolsNurbsConvertModification): TopToolsListOfShape {.
    noSideEffect, importcpp: "GetUpdatedEdges",
    header: "BRepTools_NurbsConvertModification.hxx".}
type
  BRepToolsNurbsConvertModificationbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "BRepTools_NurbsConvertModification::get_type_name(@)",
                            header: "BRepTools_NurbsConvertModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_NurbsConvertModification::get_type_descriptor(@)",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc dynamicType*(this: BRepToolsNurbsConvertModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepTools_NurbsConvertModification.hxx".}

























