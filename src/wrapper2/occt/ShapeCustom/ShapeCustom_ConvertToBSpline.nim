##  Created on: 1999-06-17
##  Created by: data exchange team
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
discard "forward decl of ShapeCustom_ConvertToBSpline"
discard "forward decl of ShapeCustom_ConvertToBSpline"
type
  HandleShapeCustomConvertToBSpline* = Handle[ShapeCustomConvertToBSpline]

## ! implement a modification for BRepTools
## ! Modifier algortihm. Converts Surface of
## ! Linear Exctrusion, Revolution and Offset
## ! surfaces into BSpline Surface according to
## ! flags.

type
  ShapeCustomConvertToBSpline* {.importcpp: "ShapeCustom_ConvertToBSpline",
                                header: "ShapeCustom_ConvertToBSpline.hxx", bycopy.} = object of ShapeCustomModification


proc constructShapeCustomConvertToBSpline*(): ShapeCustomConvertToBSpline {.
    constructor, importcpp: "ShapeCustom_ConvertToBSpline(@)",
    header: "ShapeCustom_ConvertToBSpline.hxx".}
proc setExtrusionMode*(this: var ShapeCustomConvertToBSpline;
                      extrMode: StandardBoolean) {.importcpp: "SetExtrusionMode",
    header: "ShapeCustom_ConvertToBSpline.hxx".}
proc setRevolutionMode*(this: var ShapeCustomConvertToBSpline;
                       revolMode: StandardBoolean) {.
    importcpp: "SetRevolutionMode", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc setOffsetMode*(this: var ShapeCustomConvertToBSpline;
                   offsetMode: StandardBoolean) {.importcpp: "SetOffsetMode",
    header: "ShapeCustom_ConvertToBSpline.hxx".}
proc setPlaneMode*(this: var ShapeCustomConvertToBSpline; planeMode: StandardBoolean) {.
    importcpp: "SetPlaneMode", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc newSurface*(this: var ShapeCustomConvertToBSpline; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation;
                tol: var StandardReal; revWires: var StandardBoolean;
                revFace: var StandardBoolean): StandardBoolean {.
    importcpp: "NewSurface", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc newCurve*(this: var ShapeCustomConvertToBSpline; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc newPoint*(this: var ShapeCustomConvertToBSpline; v: TopoDS_Vertex; p: var GpPnt;
              tol: var StandardReal): StandardBoolean {.importcpp: "NewPoint",
    header: "ShapeCustom_ConvertToBSpline.hxx".}
proc newCurve2d*(this: var ShapeCustomConvertToBSpline; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve2d", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc newParameter*(this: var ShapeCustomConvertToBSpline; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var StandardReal; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewParameter", header: "ShapeCustom_ConvertToBSpline.hxx".}
proc continuity*(this: var ShapeCustomConvertToBSpline; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "ShapeCustom_ConvertToBSpline.hxx".}
type
  ShapeCustomConvertToBSplinebaseType* = ShapeCustomModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_ConvertToBSpline::get_type_name(@)",
                            header: "ShapeCustom_ConvertToBSpline.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_ConvertToBSpline::get_type_descriptor(@)",
    header: "ShapeCustom_ConvertToBSpline.hxx".}
proc dynamicType*(this: ShapeCustomConvertToBSpline): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_ConvertToBSpline.hxx".}

