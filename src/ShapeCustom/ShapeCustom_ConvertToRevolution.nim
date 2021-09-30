##  Created on: 1999-05-08
##  Created by: Andrey BETENEV
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

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeCustom_ConvertToRevolution"
discard "forward decl of ShapeCustom_ConvertToRevolution"
type
  HandleC1C1* = Handle[ShapeCustomConvertToRevolution]

## ! implements a modification for the BRepTools
## ! Modifier algortihm. Converts all elementary
## ! surfaces into surfaces of revolution.

type
  ShapeCustomConvertToRevolution* {.importcpp: "ShapeCustom_ConvertToRevolution", header: "ShapeCustom_ConvertToRevolution.hxx",
                                   bycopy.} = object of ShapeCustomModification


proc constructShapeCustomConvertToRevolution*(): ShapeCustomConvertToRevolution {.
    constructor, importcpp: "ShapeCustom_ConvertToRevolution(@)",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc newSurface*(this: var ShapeCustomConvertToRevolution; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var cfloat;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc newCurve*(this: var ShapeCustomConvertToRevolution; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var cfloat): bool {.
    importcpp: "NewCurve", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc newPoint*(this: var ShapeCustomConvertToRevolution; v: TopoDS_Vertex; p: var Pnt;
              tol: var cfloat): bool {.importcpp: "NewPoint", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc newCurve2d*(this: var ShapeCustomConvertToRevolution; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var cfloat): bool {.
    importcpp: "NewCurve2d", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc newParameter*(this: var ShapeCustomConvertToRevolution; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var cfloat; tol: var cfloat): bool {.
    importcpp: "NewParameter", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc continuity*(this: var ShapeCustomConvertToRevolution; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "ShapeCustom_ConvertToRevolution.hxx".}
type
  ShapeCustomConvertToRevolutionbaseType* = ShapeCustomModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_ConvertToRevolution::get_type_name(@)",
                            header: "ShapeCustom_ConvertToRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_ConvertToRevolution::get_type_descriptor(@)",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc dynamicType*(this: ShapeCustomConvertToRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_ConvertToRevolution.hxx".}

























