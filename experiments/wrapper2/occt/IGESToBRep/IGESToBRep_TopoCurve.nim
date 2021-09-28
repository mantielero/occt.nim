##  Created on: 1994-04-21
##  Created by: s:	Christophe GUYOT & Frederic UNTEREINER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESGeom_OffsetCurve"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
type
  IGESToBRepTopoCurve* {.importcpp: "IGESToBRep_TopoCurve",
                        header: "IGESToBRep_TopoCurve.hxx", bycopy.} = object of IGESToBRepCurveAndSurface ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## tool
                                                                                                    ## TopoCurve
                                                                                                    ## ready
                                                                                                    ## to
                                                                                                    ## run,
                                                                                                    ## with
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## epsilons
                                                                                                    ## set
                                                                                                    ## to
                                                                                                    ## 1.E-04,
                                                                                                    ## TheModeTopo
                                                                                                    ## to
                                                                                                    ## True,
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## optimization
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## continuity
                                                                                                    ## to
                                                                                                    ## False.


proc constructIGESToBRepTopoCurve*(): IGESToBRepTopoCurve {.constructor,
    importcpp: "IGESToBRep_TopoCurve(@)", header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRepTopoCurve*(cs: IGESToBRepCurveAndSurface): IGESToBRepTopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRepTopoCurve*(cs: IGESToBRepTopoCurve): IGESToBRepTopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRepTopoCurve*(eps: cfloat; epsGeom: cfloat; epsCoeff: cfloat;
                                  mode: bool; modeapprox: bool; optimized: bool): IGESToBRepTopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc transferTopoCurve*(this: var IGESToBRepTopoCurve;
                       start: Handle[IGESDataIGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transfer2dTopoCurve*(this: var IGESToBRepTopoCurve;
                         start: Handle[IGESDataIGESEntity]; face: TopoDS_Face;
                         trans: Trsf2d; uFact: cfloat): TopoDS_Shape {.
    importcpp: "Transfer2dTopoCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transferTopoBasicCurve*(this: var IGESToBRepTopoCurve;
                            start: Handle[IGESDataIGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoBasicCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transfer2dTopoBasicCurve*(this: var IGESToBRepTopoCurve;
                              start: Handle[IGESDataIGESEntity];
                              face: TopoDS_Face; trans: Trsf2d; uFact: cfloat): TopoDS_Shape {.
    importcpp: "Transfer2dTopoBasicCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transferPoint*(this: var IGESToBRepTopoCurve; start: Handle[IGESGeomPoint]): TopoDS_Vertex {.
    importcpp: "TransferPoint", header: "IGESToBRep_TopoCurve.hxx".}
proc transfer2dPoint*(this: var IGESToBRepTopoCurve; start: Handle[IGESGeomPoint]): TopoDS_Vertex {.
    importcpp: "Transfer2dPoint", header: "IGESToBRep_TopoCurve.hxx".}
proc transferCompositeCurve*(this: var IGESToBRepTopoCurve;
                            start: Handle[IGESGeomCompositeCurve]): TopoDS_Shape {.
    importcpp: "TransferCompositeCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transfer2dCompositeCurve*(this: var IGESToBRepTopoCurve;
                              start: Handle[IGESGeomCompositeCurve];
                              face: TopoDS_Face; trans: Trsf2d; uFact: cfloat): TopoDS_Shape {.
    importcpp: "Transfer2dCompositeCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transferOffsetCurve*(this: var IGESToBRepTopoCurve;
                         start: Handle[IGESGeomOffsetCurve]): TopoDS_Shape {.
    importcpp: "TransferOffsetCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transfer2dOffsetCurve*(this: var IGESToBRepTopoCurve;
                           start: Handle[IGESGeomOffsetCurve]; face: TopoDS_Face;
                           trans: Trsf2d; uFact: cfloat): TopoDS_Shape {.
    importcpp: "Transfer2dOffsetCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc transferCurveOnSurface*(this: var IGESToBRepTopoCurve;
                            start: Handle[IGESGeomCurveOnSurface]): TopoDS_Shape {.
    importcpp: "TransferCurveOnSurface", header: "IGESToBRep_TopoCurve.hxx".}
proc transferCurveOnFace*(this: var IGESToBRepTopoCurve; face: var TopoDS_Face;
                         start: Handle[IGESGeomCurveOnSurface]; trans: Trsf2d;
                         uFact: cfloat; isCurv: bool): TopoDS_Shape {.
    importcpp: "TransferCurveOnFace", header: "IGESToBRep_TopoCurve.hxx".}
proc transferBoundary*(this: var IGESToBRepTopoCurve;
                      start: Handle[IGESGeomBoundary]): TopoDS_Shape {.
    importcpp: "TransferBoundary", header: "IGESToBRep_TopoCurve.hxx".}
proc transferBoundaryOnFace*(this: var IGESToBRepTopoCurve; face: var TopoDS_Face;
                            start: Handle[IGESGeomBoundary]; trans: Trsf2d;
                            uFact: cfloat): TopoDS_Shape {.
    importcpp: "TransferBoundaryOnFace", header: "IGESToBRep_TopoCurve.hxx".}
proc approxBSplineCurve*(this: var IGESToBRepTopoCurve;
                        start: Handle[GeomBSplineCurve]) {.
    importcpp: "ApproxBSplineCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc nbCurves*(this: IGESToBRepTopoCurve): cint {.noSideEffect,
    importcpp: "NbCurves", header: "IGESToBRep_TopoCurve.hxx".}
proc curve*(this: IGESToBRepTopoCurve; num: cint = 1): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "IGESToBRep_TopoCurve.hxx".}
proc approx2dBSplineCurve*(this: var IGESToBRepTopoCurve;
                          start: Handle[Geom2dBSplineCurve]) {.
    importcpp: "Approx2dBSplineCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc nbCurves2d*(this: IGESToBRepTopoCurve): cint {.noSideEffect,
    importcpp: "NbCurves2d", header: "IGESToBRep_TopoCurve.hxx".}
proc curve2d*(this: IGESToBRepTopoCurve; num: cint = 1): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Curve2d", header: "IGESToBRep_TopoCurve.hxx".}
proc setBadCase*(this: var IGESToBRepTopoCurve; value: bool) {.
    importcpp: "SetBadCase", header: "IGESToBRep_TopoCurve.hxx".}
proc badCase*(this: IGESToBRepTopoCurve): bool {.noSideEffect, importcpp: "BadCase",
    header: "IGESToBRep_TopoCurve.hxx".}

























