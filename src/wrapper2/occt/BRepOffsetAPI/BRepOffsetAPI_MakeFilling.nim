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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepFill/BRepFill_Filling,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../TopTools/TopTools_ListOfShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MakeFilling* {.importcpp: "BRepOffsetAPI_MakeFilling",
                              header: "BRepOffsetAPI_MakeFilling.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## a
                                                                                                              ## wire
                                                                                                              ## filling
                                                                                                              ## object
                                                                                                              ## defined
                                                                                                              ## by
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## energy
                                                                                                              ## minimizing
                                                                                                              ## criterion
                                                                                                              ## Degree
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## number
                                                                                                              ## of
                                                                                                              ## points
                                                                                                              ## on
                                                                                                              ## the
                                                                                                              ## curve
                                                                                                              ## NbPntsOnCur
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## number
                                                                                                              ## of
                                                                                                              ## iterations
                                                                                                              ## NbIter
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## Boolean
                                                                                                              ## Anisotropie
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## 2D
                                                                                                              ## tolerance
                                                                                                              ## Tol2d
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## 3D
                                                                                                              ## tolerance
                                                                                                              ## Tol3d
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## angular
                                                                                                              ## tolerance
                                                                                                              ## TolAng
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## tolerance
                                                                                                              ## for
                                                                                                              ## curvature
                                                                                                              ## TolCur
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## highest
                                                                                                              ## polynomial
                                                                                                              ## degree
                                                                                                              ## MaxDeg
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## -
                                                                                                              ## the
                                                                                                              ## greatest
                                                                                                              ## number
                                                                                                              ## of
                                                                                                              ## segments
                                                                                                              ## MaxSeg.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## If
                                                                                                              ## the
                                                                                                              ## Boolean
                                                                                                              ## Anistropie
                                                                                                              ## is
                                                                                                              ## true,
                                                                                                              ## the
                                                                                                              ## algorithm's
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## performance
                                                                                                              ## is
                                                                                                              ## better
                                                                                                              ## in
                                                                                                              ## cases
                                                                                                              ## where
                                                                                                              ## the
                                                                                                              ## ratio
                                                                                                              ## of
                                                                                                              ## the
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## length
                                                                                                              ## U
                                                                                                              ## and
                                                                                                              ## the
                                                                                                              ## length
                                                                                                              ## V
                                                                                                              ## indicate
                                                                                                              ## a
                                                                                                              ## great
                                                                                                              ## difference
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## between
                                                                                                              ## the
                                                                                                              ## two.
                                                                                                              ## In
                                                                                                              ## other
                                                                                                              ## words,
                                                                                                              ## when
                                                                                                              ## the
                                                                                                              ## surface
                                                                                                              ## is,
                                                                                                              ## for
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## example,
                                                                                                              ## extremely
                                                                                                              ## long.


proc constructBRepOffsetAPI_MakeFilling*(Degree: Standard_Integer = 3;
                                        NbPtsOnCur: Standard_Integer = 15;
                                        NbIter: Standard_Integer = 2; Anisotropie: Standard_Boolean = Standard_False;
                                        Tol2d: Standard_Real = 0.00001;
                                        Tol3d: Standard_Real = 0.0001;
                                        TolAng: Standard_Real = 0.01;
                                        TolCurv: Standard_Real = 0.1;
                                        MaxDeg: Standard_Integer = 8;
                                        MaxSegments: Standard_Integer = 9): BRepOffsetAPI_MakeFilling {.
    constructor, importcpp: "BRepOffsetAPI_MakeFilling(@)",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc SetConstrParam*(this: var BRepOffsetAPI_MakeFilling;
                    Tol2d: Standard_Real = 0.00001; Tol3d: Standard_Real = 0.0001;
                    TolAng: Standard_Real = 0.01; TolCurv: Standard_Real = 0.1) {.
    importcpp: "SetConstrParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc SetResolParam*(this: var BRepOffsetAPI_MakeFilling;
                   Degree: Standard_Integer = 3; NbPtsOnCur: Standard_Integer = 15;
                   NbIter: Standard_Integer = 2;
                   Anisotropie: Standard_Boolean = Standard_False) {.
    importcpp: "SetResolParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc SetApproxParam*(this: var BRepOffsetAPI_MakeFilling;
                    MaxDeg: Standard_Integer = 8; MaxSegments: Standard_Integer = 9) {.
    importcpp: "SetApproxParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc LoadInitSurface*(this: var BRepOffsetAPI_MakeFilling; Surf: TopoDS_Face) {.
    importcpp: "LoadInitSurface", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Constr: TopoDS_Edge;
         Order: GeomAbs_Shape; IsBound: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Constr: TopoDS_Edge;
         Support: TopoDS_Face; Order: GeomAbs_Shape;
         IsBound: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Support: TopoDS_Face;
         Order: GeomAbs_Shape): Standard_Integer {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; Point: gp_Pnt): Standard_Integer {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Add*(this: var BRepOffsetAPI_MakeFilling; U: Standard_Real; V: Standard_Real;
         Support: TopoDS_Face; Order: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Build*(this: var BRepOffsetAPI_MakeFilling) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc IsDone*(this: BRepOffsetAPI_MakeFilling): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc Generated*(this: var BRepOffsetAPI_MakeFilling; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G0Error*(this: BRepOffsetAPI_MakeFilling): Standard_Real {.noSideEffect,
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G1Error*(this: BRepOffsetAPI_MakeFilling): Standard_Real {.noSideEffect,
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G2Error*(this: BRepOffsetAPI_MakeFilling): Standard_Real {.noSideEffect,
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G0Error*(this: var BRepOffsetAPI_MakeFilling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G1Error*(this: var BRepOffsetAPI_MakeFilling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc G2Error*(this: var BRepOffsetAPI_MakeFilling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}