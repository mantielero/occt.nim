import brepoffset_types
import ../topods/topods_types
import ../geomabs/geomabs_types
import ../gp/gp_types
import ../message/message_types
import ../toptools/toptools_types

##  Created on: 1998-08-26
##  Created by: Julia GERASIMOVA
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

# discard "forward decl of TopoDS_Face"
# discard "forward decl of TopoDS_Edge"
# discard "forward decl of gp_Pnt"
# discard "forward decl of TopoDS_Shape"
#                                                                                                        ## filling
#                                                                                                               ## object
#                                                                                                               ## defined
#                                                                                                               ## by
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## energy
#                                                                                                               ## minimizing
#                                                                                                               ## criterion
#                                                                                                               ## Degree
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## number
#                                                                                                               ## of
#                                                                                                               ## points
#                                                                                                               ## on
#                                                                                                               ## the
#                                                                                                               ## curve
#                                                                                                               ## NbPntsOnCur
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## number
#                                                                                                               ## of
#                                                                                                               ## iterations
#                                                                                                               ## NbIter
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## Boolean
#                                                                                                               ## Anisotropie
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## 2D
#                                                                                                               ## tolerance
#                                                                                                               ## Tol2d
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## 3D
#                                                                                                               ## tolerance
#                                                                                                               ## Tol3d
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## angular
#                                                                                                               ## tolerance
#                                                                                                               ## TolAng
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## tolerance
#                                                                                                               ## for
#                                                                                                               ## curvature
#                                                                                                               ## TolCur
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## highest
#                                                                                                               ## polynomial
#                                                                                                               ## degree
#                                                                                                               ## MaxDeg
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## -
#                                                                                                               ## the
#                                                                                                               ## greatest
#                                                                                                               ## number
#                                                                                                               ## of
#                                                                                                               ## segments
#                                                                                                               ## MaxSeg.
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## If
#                                                                                                               ## the
#                                                                                                               ## Boolean
#                                                                                                               ## Anistropie
#                                                                                                               ## is
#                                                                                                               ## true,
#                                                                                                               ## the
#                                                                                                               ## algorithm's
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## performance
#                                                                                                               ## is
#                                                                                                               ## better
#                                                                                                               ## in
#                                                                                                               ## cases
#                                                                                                               ## where
#                                                                                                               ## the
#                                                                                                               ## ratio
#                                                                                                               ## of
#                                                                                                               ## the
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## length
#                                                                                                               ## U
#                                                                                                               ## and
#                                                                                                               ## the
#                                                                                                               ## length
#                                                                                                               ## V
#                                                                                                               ## indicate
#                                                                                                               ## a
#                                                                                                               ## great
#                                                                                                               ## difference
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## between
#                                                                                                               ## the
#                                                                                                               ## two.
#                                                                                                               ## In
#                                                                                                               ## other
#                                                                                                               ## words,
#                                                                                                               ## when
#                                                                                                               ## the
#                                                                                                               ## surface
#                                                                                                               ## is,
#                                                                                                               ## for
#                                                                                                               ##
#                                                                                                               ## !
#                                                                                                               ## example,
#                                                                                                               ## extremely
#                                                                                                               ## long.


proc newBRepOffsetAPI_MakeFilling*(Degree: cint = 3; NbPtsOnCur: cint = 15;
                                  NbIter: cint = 2; Anisotropie: bool = false;
                                  Tol2d: cfloat = 0.00001; Tol3d: cfloat = 0.0001;
                                  TolAng: cfloat = 0.01; TolCurv: cfloat = 0.1;
                                  MaxDeg: cint = 8; MaxSegments: cint = 9): BRepOffsetAPI_MakeFilling {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakeFilling(@)".}
proc SetConstrParam*(this: var BRepOffsetAPI_MakeFilling; Tol2d: cfloat = 0.00001;
                    Tol3d: cfloat = 0.0001; TolAng: cfloat = 0.01; TolCurv: cfloat = 0.1) {.
    cdecl, importcpp: "SetConstrParam".}
proc SetResolParam*(this: var BRepOffsetAPI_MakeFilling; Degree: cint = 3;
                   NbPtsOnCur: cint = 15; NbIter: cint = 2; Anisotropie: bool = false) {.
    cdecl, importcpp: "SetResolParam".}
proc SetApproxParam*(this: var BRepOffsetAPI_MakeFilling; MaxDeg: cint = 8;
                    MaxSegments: cint = 9) {.cdecl, importcpp: "SetApproxParam",
    .}
proc LoadInitSurface*(this: var BRepOffsetAPI_MakeFilling; Surf: TopoDS_Face) {.cdecl,
    importcpp: "LoadInitSurface".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Constr: TopoDS_Edge;
         Order: GeomAbs_Shape; IsBound: bool = true): cint {.cdecl, importcpp: "Add",
    .}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Constr: TopoDS_Edge;
         Support: TopoDS_Face; Order: GeomAbs_Shape; IsBound: bool = true): cint {.cdecl,
    importcpp: "Add".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Support: TopoDS_Face;
         Order: GeomAbs_Shape): cint {.cdecl, importcpp: "Add".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Point: gp_Pnt): cint {.cdecl,
    importcpp: "Add".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; U: cfloat; V: cfloat;
         Support: TopoDS_Face; Order: GeomAbs_Shape): cint {.cdecl, importcpp: "Add",
    .}
proc Build*(this: var BRepOffsetAPI_MakeFilling;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc IsDone*(this: BRepOffsetAPI_MakeFilling): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc Generated*(this: var BRepOffsetAPI_MakeFilling; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc G0Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect, cdecl,
    importcpp: "G0Error".}
proc G1Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect, cdecl,
    importcpp: "G1Error".}
proc G2Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect, cdecl,
    importcpp: "G2Error".}
proc G0Error*(this: var BRepOffsetAPI_MakeFilling; Index: cint): cfloat {.cdecl,
    importcpp: "G0Error".}
proc G1Error*(this: var BRepOffsetAPI_MakeFilling; Index: cint): cfloat {.cdecl,
    importcpp: "G1Error".}
proc G2Error*(this: var BRepOffsetAPI_MakeFilling; Index: cint): cfloat {.cdecl,
    importcpp: "G2Error".}