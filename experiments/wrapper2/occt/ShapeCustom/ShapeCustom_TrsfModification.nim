##  Created on: 1999-03-09
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of ShapeCustom_TrsfModification"
discard "forward decl of ShapeCustom_TrsfModification"
type
  HandleShapeCustomTrsfModification* = Handle[ShapeCustomTrsfModification]

## ! Complements BRepTools_TrsfModification to provide reversible
## ! scaling regarding tolerances.
## ! Uses actual tolerances (attached to the shapes) not ones
## ! returned by BRep_Tool::Tolerance to work with tolerances
## ! lower than Precision::Confusion.

type
  ShapeCustomTrsfModification* {.importcpp: "ShapeCustom_TrsfModification",
                                header: "ShapeCustom_TrsfModification.hxx", bycopy.} = object of BRepToolsTrsfModification ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructShapeCustomTrsfModification*(t: Trsf): ShapeCustomTrsfModification {.
    constructor, importcpp: "ShapeCustom_TrsfModification(@)",
    header: "ShapeCustom_TrsfModification.hxx".}
proc newSurface*(this: var ShapeCustomTrsfModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var float;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "ShapeCustom_TrsfModification.hxx".}
proc newCurve*(this: var ShapeCustomTrsfModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var float): bool {.
    importcpp: "NewCurve", header: "ShapeCustom_TrsfModification.hxx".}
proc newPoint*(this: var ShapeCustomTrsfModification; v: TopoDS_Vertex; p: var Pnt;
              tol: var float): bool {.importcpp: "NewPoint",
                                  header: "ShapeCustom_TrsfModification.hxx".}
proc newCurve2d*(this: var ShapeCustomTrsfModification; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var float): bool {.
    importcpp: "NewCurve2d", header: "ShapeCustom_TrsfModification.hxx".}
proc newParameter*(this: var ShapeCustomTrsfModification; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var float; tol: var float): bool {.
    importcpp: "NewParameter", header: "ShapeCustom_TrsfModification.hxx".}
type
  ShapeCustomTrsfModificationbaseType* = BRepToolsTrsfModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_TrsfModification::get_type_name(@)",
                            header: "ShapeCustom_TrsfModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_TrsfModification::get_type_descriptor(@)",
    header: "ShapeCustom_TrsfModification.hxx".}
proc dynamicType*(this: ShapeCustomTrsfModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_TrsfModification.hxx".}
