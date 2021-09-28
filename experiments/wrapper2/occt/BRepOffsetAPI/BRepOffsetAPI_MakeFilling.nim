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


proc constructBRepOffsetAPI_MakeFilling*(degree: cint = 3; nbPtsOnCur: cint = 15;
                                        nbIter: cint = 2; anisotropie: bool = false;
                                        tol2d: cfloat = 0.00001;
                                        tol3d: cfloat = 0.0001;
                                        tolAng: cfloat = 0.01;
                                        tolCurv: cfloat = 0.1; maxDeg: cint = 8;
                                        maxSegments: cint = 9): BRepOffsetAPI_MakeFilling {.
    constructor, importcpp: "BRepOffsetAPI_MakeFilling(@)",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setConstrParam*(this: var BRepOffsetAPI_MakeFilling; tol2d: cfloat = 0.00001;
                    tol3d: cfloat = 0.0001; tolAng: cfloat = 0.01; tolCurv: cfloat = 0.1) {.
    importcpp: "SetConstrParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setResolParam*(this: var BRepOffsetAPI_MakeFilling; degree: cint = 3;
                   nbPtsOnCur: cint = 15; nbIter: cint = 2; anisotropie: bool = false) {.
    importcpp: "SetResolParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setApproxParam*(this: var BRepOffsetAPI_MakeFilling; maxDeg: cint = 8;
                    maxSegments: cint = 9) {.importcpp: "SetApproxParam",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc loadInitSurface*(this: var BRepOffsetAPI_MakeFilling; surf: TopoDS_Face) {.
    importcpp: "LoadInitSurface", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; constr: TopoDS_Edge;
         order: GeomAbsShape; isBound: bool = true): cint {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; constr: TopoDS_Edge;
         support: TopoDS_Face; order: GeomAbsShape; isBound: bool = true): cint {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; support: TopoDS_Face;
         order: GeomAbsShape): cint {.importcpp: "Add",
                                   header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; point: Pnt): cint {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; u: cfloat; v: cfloat;
         support: TopoDS_Face; order: GeomAbsShape): cint {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc build*(this: var BRepOffsetAPI_MakeFilling) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc isDone*(this: BRepOffsetAPI_MakeFilling): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc generated*(this: var BRepOffsetAPI_MakeFilling; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g0Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect,
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g1Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect,
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g2Error*(this: BRepOffsetAPI_MakeFilling): cfloat {.noSideEffect,
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g0Error*(this: var BRepOffsetAPI_MakeFilling; index: cint): cfloat {.
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g1Error*(this: var BRepOffsetAPI_MakeFilling; index: cint): cfloat {.
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g2Error*(this: var BRepOffsetAPI_MakeFilling; index: cint): cfloat {.
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}

























