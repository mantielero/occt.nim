##  Created on: 1999-06-18
##  Created by: Galina Koulikova
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

discard "forward decl of ShapeCustom_RestrictionParameters"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of ShapeCustom_BSplineRestriction"
discard "forward decl of ShapeCustom_BSplineRestriction"
type
  HandleShapeCustomBSplineRestriction* = Handle[ShapeCustomBSplineRestriction]

## ! this tool intended for aproximation surfaces, curves and pcurves with
## ! specified degree , max number of segments, tolerance 2d, tolerance 3d. Specified
## ! continuity can be reduced if approximation with specified continuity was not done.

type
  ShapeCustomBSplineRestriction* {.importcpp: "ShapeCustom_BSplineRestriction",
                                  header: "ShapeCustom_BSplineRestriction.hxx",
                                  bycopy.} = object of ShapeCustomModification ## ! Empty
                                                                          ## constructor.


proc constructShapeCustomBSplineRestriction*(): ShapeCustomBSplineRestriction {.
    constructor, importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc constructShapeCustomBSplineRestriction*(anApproxSurfaceFlag: bool;
    anApproxCurve3dFlag: bool; anApproxCurve2dFlag: bool; aTol3d: float;
    aTol2d: float; aContinuity3d: GeomAbsShape; aContinuity2d: GeomAbsShape;
    aMaxDegree: int; aNbMaxSeg: int; degree: bool; rational: bool): ShapeCustomBSplineRestriction {.
    constructor, importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc constructShapeCustomBSplineRestriction*(anApproxSurfaceFlag: bool;
    anApproxCurve3dFlag: bool; anApproxCurve2dFlag: bool; aTol3d: float;
    aTol2d: float; aContinuity3d: GeomAbsShape; aContinuity2d: GeomAbsShape;
    aMaxDegree: int; aNbMaxSeg: int; degree: bool; rational: bool;
    aModes: Handle[ShapeCustomRestrictionParameters]): ShapeCustomBSplineRestriction {.
    constructor, importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc newSurface*(this: var ShapeCustomBSplineRestriction; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var float;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc newCurve*(this: var ShapeCustomBSplineRestriction; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var float): bool {.
    importcpp: "NewCurve", header: "ShapeCustom_BSplineRestriction.hxx".}
proc newCurve2d*(this: var ShapeCustomBSplineRestriction; e: TopoDS_Edge;
                f: TopoDS_Face; newE: TopoDS_Edge; newF: TopoDS_Face;
                c: var Handle[Geom2dCurve]; tol: var float): bool {.
    importcpp: "NewCurve2d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc convertSurface*(this: var ShapeCustomBSplineRestriction;
                    aSurface: Handle[GeomSurface]; s: var Handle[GeomSurface];
                    uf: float; ul: float; vf: float; vl: float; isOf: bool = true): bool {.
    importcpp: "ConvertSurface", header: "ShapeCustom_BSplineRestriction.hxx".}
proc convertCurve*(this: var ShapeCustomBSplineRestriction;
                  aCurve: Handle[GeomCurve]; c: var Handle[GeomCurve];
                  isConvert: bool; first: float; last: float; tolCur: var float;
                  isOf: bool = true): bool {.importcpp: "ConvertCurve", header: "ShapeCustom_BSplineRestriction.hxx".}
proc convertCurve2d*(this: var ShapeCustomBSplineRestriction;
                    aCurve: Handle[Geom2dCurve]; c: var Handle[Geom2dCurve];
                    isConvert: bool; first: float; last: float; tolCur: var float;
                    isOf: bool = true): bool {.importcpp: "ConvertCurve2d",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc setTol3d*(this: var ShapeCustomBSplineRestriction; tol3d: float) {.
    importcpp: "SetTol3d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc setTol2d*(this: var ShapeCustomBSplineRestriction; tol2d: float) {.
    importcpp: "SetTol2d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc modifyApproxSurfaceFlag*(this: var ShapeCustomBSplineRestriction): var bool {.
    importcpp: "ModifyApproxSurfaceFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc modifyApproxCurve3dFlag*(this: var ShapeCustomBSplineRestriction): var bool {.
    importcpp: "ModifyApproxCurve3dFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc modifyApproxCurve2dFlag*(this: var ShapeCustomBSplineRestriction): var bool {.
    importcpp: "ModifyApproxCurve2dFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc setContinuity3d*(this: var ShapeCustomBSplineRestriction;
                     continuity3d: GeomAbsShape) {.importcpp: "SetContinuity3d",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc setContinuity2d*(this: var ShapeCustomBSplineRestriction;
                     continuity2d: GeomAbsShape) {.importcpp: "SetContinuity2d",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc setMaxDegree*(this: var ShapeCustomBSplineRestriction; maxDegree: int) {.
    importcpp: "SetMaxDegree", header: "ShapeCustom_BSplineRestriction.hxx".}
proc setMaxNbSegments*(this: var ShapeCustomBSplineRestriction; maxNbSegments: int) {.
    importcpp: "SetMaxNbSegments", header: "ShapeCustom_BSplineRestriction.hxx".}
proc setPriority*(this: var ShapeCustomBSplineRestriction; degree: bool) {.
    importcpp: "SetPriority", header: "ShapeCustom_BSplineRestriction.hxx".}
proc setConvRational*(this: var ShapeCustomBSplineRestriction; rational: bool) {.
    importcpp: "SetConvRational", header: "ShapeCustom_BSplineRestriction.hxx".}
proc getRestrictionParameters*(this: ShapeCustomBSplineRestriction): Handle[
    ShapeCustomRestrictionParameters] {.noSideEffect,
                                       importcpp: "GetRestrictionParameters", header: "ShapeCustom_BSplineRestriction.hxx".}
proc setRestrictionParameters*(this: var ShapeCustomBSplineRestriction;
                              aModes: Handle[ShapeCustomRestrictionParameters]) {.
    importcpp: "SetRestrictionParameters",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc curve3dError*(this: ShapeCustomBSplineRestriction): float {.noSideEffect,
    importcpp: "Curve3dError", header: "ShapeCustom_BSplineRestriction.hxx".}
proc curve2dError*(this: ShapeCustomBSplineRestriction): float {.noSideEffect,
    importcpp: "Curve2dError", header: "ShapeCustom_BSplineRestriction.hxx".}
proc surfaceError*(this: ShapeCustomBSplineRestriction): float {.noSideEffect,
    importcpp: "SurfaceError", header: "ShapeCustom_BSplineRestriction.hxx".}
proc newPoint*(this: var ShapeCustomBSplineRestriction; v: TopoDS_Vertex; p: var Pnt;
              tol: var float): bool {.importcpp: "NewPoint",
                                  header: "ShapeCustom_BSplineRestriction.hxx".}
proc newParameter*(this: var ShapeCustomBSplineRestriction; v: TopoDS_Vertex;
                  e: TopoDS_Edge; p: var float; tol: var float): bool {.
    importcpp: "NewParameter", header: "ShapeCustom_BSplineRestriction.hxx".}
proc continuity*(this: var ShapeCustomBSplineRestriction; e: TopoDS_Edge;
                f1: TopoDS_Face; f2: TopoDS_Face; newE: TopoDS_Edge;
                newF1: TopoDS_Face; newF2: TopoDS_Face): GeomAbsShape {.
    importcpp: "Continuity", header: "ShapeCustom_BSplineRestriction.hxx".}
proc maxErrors*(this: ShapeCustomBSplineRestriction; aCurve3dErr: var float;
               aCurve2dErr: var float): float {.noSideEffect, importcpp: "MaxErrors",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc nbOfSpan*(this: ShapeCustomBSplineRestriction): int {.noSideEffect,
    importcpp: "NbOfSpan", header: "ShapeCustom_BSplineRestriction.hxx".}
type
  ShapeCustomBSplineRestrictionbaseType* = ShapeCustomModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_BSplineRestriction::get_type_name(@)",
                            header: "ShapeCustom_BSplineRestriction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_BSplineRestriction::get_type_descriptor(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc dynamicType*(this: ShapeCustomBSplineRestriction): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_BSplineRestriction.hxx".}
