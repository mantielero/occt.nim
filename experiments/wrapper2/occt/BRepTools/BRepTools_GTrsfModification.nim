##  Created on: 1996-12-30
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

discard "forward decl of gp_GTrsf"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepTools_GTrsfModification"
discard "forward decl of BRepTools_GTrsfModification"
type
  HandleC1C1* = Handle[BRepToolsGTrsfModification]

## ! Defines a modification of the  geometry by a  GTrsf
## ! from gp. All methods return True and transform the
## ! geometry.

type
  BRepToolsGTrsfModification* {.importcpp: "BRepTools_GTrsfModification",
                               header: "BRepTools_GTrsfModification.hxx", bycopy.} = object of BRepToolsModification


proc constructBRepToolsGTrsfModification*(t: GTrsf): BRepToolsGTrsfModification {.
    constructor, importcpp: "BRepTools_GTrsfModification(@)",
    header: "BRepTools_GTrsfModification.hxx".}
proc gTrsf*(this: var BRepToolsGTrsfModification): var GTrsf {.importcpp: "GTrsf",
    header: "BRepTools_GTrsfModification.hxx".}
proc newSurface*(this: var BRepToolsGTrsfModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation;
                tol: var StandardReal; revWires: var StandardBoolean;
                revFace: var StandardBoolean): StandardBoolean {.
    importcpp: "NewSurface", header: "BRepTools_GTrsfModification.hxx".}
proc newCurve*(this: var BRepToolsGTrsfModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve", header: "BRepTools_GTrsfModification.hxx".}
proc newPoint*(this: var BRepToolsGTrsfModification; v: TopoDS_Vertex; p: var Pnt;
              tol: var StandardReal): StandardBoolean {.importcpp: "NewPoint",
    header: "BRepTools_GTrsfModification.hxx".}
proc newCurve2d*(this: var BRepToolsGTrsfModification; e: TopoDS_Edge; f: TopoDS_Face;
                newE: TopoDS_Edge; newF: TopoDS_Face; c: var Handle[Geom2dCurve];
                tol: var StandardReal): StandardBoolean {.importcpp: "NewCurve2d",
    header: "BRepTools_GTrsfModification.hxx".}
proc newParameter*(this: var BRepToolsGTrsfModification; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var StandardReal; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewParameter", header: "BRepTools_GTrsfModification.hxx".}
proc continuity*(this: var BRepToolsGTrsfModification; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "BRepTools_GTrsfModification.hxx".}
type
  BRepToolsGTrsfModificationbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "BRepTools_GTrsfModification::get_type_name(@)",
                            header: "BRepTools_GTrsfModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_GTrsfModification::get_type_descriptor(@)",
    header: "BRepTools_GTrsfModification.hxx".}
proc dynamicType*(this: BRepToolsGTrsfModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepTools_GTrsfModification.hxx".}