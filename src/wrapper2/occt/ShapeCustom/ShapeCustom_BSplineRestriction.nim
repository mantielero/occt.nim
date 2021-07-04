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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ShapeCustom_Modification

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
  Handle_ShapeCustom_BSplineRestriction* = handle[ShapeCustom_BSplineRestriction]

## ! this tool intended for aproximation surfaces, curves and pcurves with
## ! specified degree , max number of segments, tolerance 2d, tolerance 3d. Specified
## ! continuity can be reduced if approximation with specified continuity was not done.

type
  ShapeCustom_BSplineRestriction* {.importcpp: "ShapeCustom_BSplineRestriction", header: "ShapeCustom_BSplineRestriction.hxx",
                                   bycopy.} = object of ShapeCustom_Modification ## !
                                                                            ## Empty
                                                                            ## constructor.


proc constructShapeCustom_BSplineRestriction*(): ShapeCustom_BSplineRestriction {.
    constructor, importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc constructShapeCustom_BSplineRestriction*(
    anApproxSurfaceFlag: Standard_Boolean; anApproxCurve3dFlag: Standard_Boolean;
    anApproxCurve2dFlag: Standard_Boolean; aTol3d: Standard_Real;
    aTol2d: Standard_Real; aContinuity3d: GeomAbs_Shape;
    aContinuity2d: GeomAbs_Shape; aMaxDegree: Standard_Integer;
    aNbMaxSeg: Standard_Integer; Degree: Standard_Boolean;
    Rational: Standard_Boolean): ShapeCustom_BSplineRestriction {.constructor,
    importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc constructShapeCustom_BSplineRestriction*(
    anApproxSurfaceFlag: Standard_Boolean; anApproxCurve3dFlag: Standard_Boolean;
    anApproxCurve2dFlag: Standard_Boolean; aTol3d: Standard_Real;
    aTol2d: Standard_Real; aContinuity3d: GeomAbs_Shape;
    aContinuity2d: GeomAbs_Shape; aMaxDegree: Standard_Integer;
    aNbMaxSeg: Standard_Integer; Degree: Standard_Boolean;
    Rational: Standard_Boolean; aModes: handle[ShapeCustom_RestrictionParameters]): ShapeCustom_BSplineRestriction {.
    constructor, importcpp: "ShapeCustom_BSplineRestriction(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc NewSurface*(this: var ShapeCustom_BSplineRestriction; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "ShapeCustom_BSplineRestriction.hxx".}
proc NewCurve*(this: var ShapeCustom_BSplineRestriction; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc NewCurve2d*(this: var ShapeCustom_BSplineRestriction; E: TopoDS_Edge;
                F: TopoDS_Face; NewE: TopoDS_Edge; NewF: TopoDS_Face;
                C: var handle[Geom2d_Curve]; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewCurve2d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc ConvertSurface*(this: var ShapeCustom_BSplineRestriction;
                    aSurface: handle[Geom_Surface]; S: var handle[Geom_Surface];
                    UF: Standard_Real; UL: Standard_Real; VF: Standard_Real;
                    VL: Standard_Real; IsOf: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ConvertSurface", header: "ShapeCustom_BSplineRestriction.hxx".}
proc ConvertCurve*(this: var ShapeCustom_BSplineRestriction;
                  aCurve: handle[Geom_Curve]; C: var handle[Geom_Curve];
                  IsConvert: Standard_Boolean; First: Standard_Real;
                  Last: Standard_Real; TolCur: var Standard_Real;
                  IsOf: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ConvertCurve", header: "ShapeCustom_BSplineRestriction.hxx".}
proc ConvertCurve2d*(this: var ShapeCustom_BSplineRestriction;
                    aCurve: handle[Geom2d_Curve]; C: var handle[Geom2d_Curve];
                    IsConvert: Standard_Boolean; First: Standard_Real;
                    Last: Standard_Real; TolCur: var Standard_Real;
                    IsOf: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ConvertCurve2d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetTol3d*(this: var ShapeCustom_BSplineRestriction; Tol3d: Standard_Real) {.
    importcpp: "SetTol3d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetTol2d*(this: var ShapeCustom_BSplineRestriction; Tol2d: Standard_Real) {.
    importcpp: "SetTol2d", header: "ShapeCustom_BSplineRestriction.hxx".}
proc ModifyApproxSurfaceFlag*(this: var ShapeCustom_BSplineRestriction): var Standard_Boolean {.
    importcpp: "ModifyApproxSurfaceFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc ModifyApproxCurve3dFlag*(this: var ShapeCustom_BSplineRestriction): var Standard_Boolean {.
    importcpp: "ModifyApproxCurve3dFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc ModifyApproxCurve2dFlag*(this: var ShapeCustom_BSplineRestriction): var Standard_Boolean {.
    importcpp: "ModifyApproxCurve2dFlag",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetContinuity3d*(this: var ShapeCustom_BSplineRestriction;
                     Continuity3d: GeomAbs_Shape) {.importcpp: "SetContinuity3d",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetContinuity2d*(this: var ShapeCustom_BSplineRestriction;
                     Continuity2d: GeomAbs_Shape) {.importcpp: "SetContinuity2d",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetMaxDegree*(this: var ShapeCustom_BSplineRestriction;
                  MaxDegree: Standard_Integer) {.importcpp: "SetMaxDegree",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetMaxNbSegments*(this: var ShapeCustom_BSplineRestriction;
                      MaxNbSegments: Standard_Integer) {.
    importcpp: "SetMaxNbSegments", header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetPriority*(this: var ShapeCustom_BSplineRestriction; Degree: Standard_Boolean) {.
    importcpp: "SetPriority", header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetConvRational*(this: var ShapeCustom_BSplineRestriction;
                     Rational: Standard_Boolean) {.importcpp: "SetConvRational",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc GetRestrictionParameters*(this: ShapeCustom_BSplineRestriction): handle[
    ShapeCustom_RestrictionParameters] {.noSideEffect,
                                        importcpp: "GetRestrictionParameters", header: "ShapeCustom_BSplineRestriction.hxx".}
proc SetRestrictionParameters*(this: var ShapeCustom_BSplineRestriction;
                              aModes: handle[ShapeCustom_RestrictionParameters]) {.
    importcpp: "SetRestrictionParameters",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc Curve3dError*(this: ShapeCustom_BSplineRestriction): Standard_Real {.
    noSideEffect, importcpp: "Curve3dError",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc Curve2dError*(this: ShapeCustom_BSplineRestriction): Standard_Real {.
    noSideEffect, importcpp: "Curve2dError",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc SurfaceError*(this: ShapeCustom_BSplineRestriction): Standard_Real {.
    noSideEffect, importcpp: "SurfaceError",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc NewPoint*(this: var ShapeCustom_BSplineRestriction; V: TopoDS_Vertex;
              P: var gp_Pnt; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewPoint", header: "ShapeCustom_BSplineRestriction.hxx".}
proc NewParameter*(this: var ShapeCustom_BSplineRestriction; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "ShapeCustom_BSplineRestriction.hxx".}
proc Continuity*(this: var ShapeCustom_BSplineRestriction; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "Continuity", header: "ShapeCustom_BSplineRestriction.hxx".}
proc MaxErrors*(this: ShapeCustom_BSplineRestriction;
               aCurve3dErr: var Standard_Real; aCurve2dErr: var Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "MaxErrors",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc NbOfSpan*(this: ShapeCustom_BSplineRestriction): Standard_Integer {.
    noSideEffect, importcpp: "NbOfSpan",
    header: "ShapeCustom_BSplineRestriction.hxx".}
type
  ShapeCustom_BSplineRestrictionbase_type* = ShapeCustom_Modification

proc get_type_name*(): cstring {.importcpp: "ShapeCustom_BSplineRestriction::get_type_name(@)",
                              header: "ShapeCustom_BSplineRestriction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeCustom_BSplineRestriction::get_type_descriptor(@)",
    header: "ShapeCustom_BSplineRestriction.hxx".}
proc DynamicType*(this: ShapeCustom_BSplineRestriction): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_BSplineRestriction.hxx".}