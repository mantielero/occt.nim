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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColGeom/TColGeom_SequenceOfCurve,
  ../TColGeom2d/TColGeom2d_SequenceOfCurve, ../Standard/Standard_Boolean,
  IGESToBRep_CurveAndSurface, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

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
  IGESToBRep_TopoCurve* {.importcpp: "IGESToBRep_TopoCurve",
                         header: "IGESToBRep_TopoCurve.hxx", bycopy.} = object of IGESToBRep_CurveAndSurface ##
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


proc constructIGESToBRep_TopoCurve*(): IGESToBRep_TopoCurve {.constructor,
    importcpp: "IGESToBRep_TopoCurve(@)", header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRep_TopoCurve*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_TopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRep_TopoCurve*(CS: IGESToBRep_TopoCurve): IGESToBRep_TopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc constructIGESToBRep_TopoCurve*(eps: Standard_Real; epsGeom: Standard_Real;
                                   epsCoeff: Standard_Real;
                                   mode: Standard_Boolean;
                                   modeapprox: Standard_Boolean;
                                   optimized: Standard_Boolean): IGESToBRep_TopoCurve {.
    constructor, importcpp: "IGESToBRep_TopoCurve(@)",
    header: "IGESToBRep_TopoCurve.hxx".}
proc TransferTopoCurve*(this: var IGESToBRep_TopoCurve;
                       start: handle[IGESData_IGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc Transfer2dTopoCurve*(this: var IGESToBRep_TopoCurve;
                         start: handle[IGESData_IGESEntity]; face: TopoDS_Face;
                         trans: gp_Trsf2d; uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "Transfer2dTopoCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferTopoBasicCurve*(this: var IGESToBRep_TopoCurve;
                            start: handle[IGESData_IGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoBasicCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc Transfer2dTopoBasicCurve*(this: var IGESToBRep_TopoCurve;
                              start: handle[IGESData_IGESEntity];
                              face: TopoDS_Face; trans: gp_Trsf2d;
                              uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "Transfer2dTopoBasicCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferPoint*(this: var IGESToBRep_TopoCurve; start: handle[IGESGeom_Point]): TopoDS_Vertex {.
    importcpp: "TransferPoint", header: "IGESToBRep_TopoCurve.hxx".}
proc Transfer2dPoint*(this: var IGESToBRep_TopoCurve; start: handle[IGESGeom_Point]): TopoDS_Vertex {.
    importcpp: "Transfer2dPoint", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferCompositeCurve*(this: var IGESToBRep_TopoCurve;
                            start: handle[IGESGeom_CompositeCurve]): TopoDS_Shape {.
    importcpp: "TransferCompositeCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc Transfer2dCompositeCurve*(this: var IGESToBRep_TopoCurve;
                              start: handle[IGESGeom_CompositeCurve];
                              face: TopoDS_Face; trans: gp_Trsf2d;
                              uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "Transfer2dCompositeCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferOffsetCurve*(this: var IGESToBRep_TopoCurve;
                         start: handle[IGESGeom_OffsetCurve]): TopoDS_Shape {.
    importcpp: "TransferOffsetCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc Transfer2dOffsetCurve*(this: var IGESToBRep_TopoCurve;
                           start: handle[IGESGeom_OffsetCurve]; face: TopoDS_Face;
                           trans: gp_Trsf2d; uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "Transfer2dOffsetCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferCurveOnSurface*(this: var IGESToBRep_TopoCurve;
                            start: handle[IGESGeom_CurveOnSurface]): TopoDS_Shape {.
    importcpp: "TransferCurveOnSurface", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferCurveOnFace*(this: var IGESToBRep_TopoCurve; face: var TopoDS_Face;
                         start: handle[IGESGeom_CurveOnSurface]; trans: gp_Trsf2d;
                         uFact: Standard_Real; IsCurv: Standard_Boolean): TopoDS_Shape {.
    importcpp: "TransferCurveOnFace", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferBoundary*(this: var IGESToBRep_TopoCurve;
                      start: handle[IGESGeom_Boundary]): TopoDS_Shape {.
    importcpp: "TransferBoundary", header: "IGESToBRep_TopoCurve.hxx".}
proc TransferBoundaryOnFace*(this: var IGESToBRep_TopoCurve; face: var TopoDS_Face;
                            start: handle[IGESGeom_Boundary]; trans: gp_Trsf2d;
                            uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "TransferBoundaryOnFace", header: "IGESToBRep_TopoCurve.hxx".}
proc ApproxBSplineCurve*(this: var IGESToBRep_TopoCurve;
                        start: handle[Geom_BSplineCurve]) {.
    importcpp: "ApproxBSplineCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc NbCurves*(this: IGESToBRep_TopoCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "IGESToBRep_TopoCurve.hxx".}
proc Curve*(this: IGESToBRep_TopoCurve; num: Standard_Integer = 1): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Curve", header: "IGESToBRep_TopoCurve.hxx".}
proc Approx2dBSplineCurve*(this: var IGESToBRep_TopoCurve;
                          start: handle[Geom2d_BSplineCurve]) {.
    importcpp: "Approx2dBSplineCurve", header: "IGESToBRep_TopoCurve.hxx".}
proc NbCurves2d*(this: IGESToBRep_TopoCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "IGESToBRep_TopoCurve.hxx".}
proc Curve2d*(this: IGESToBRep_TopoCurve; num: Standard_Integer = 1): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "Curve2d",
                   header: "IGESToBRep_TopoCurve.hxx".}
proc SetBadCase*(this: var IGESToBRep_TopoCurve; value: Standard_Boolean) {.
    importcpp: "SetBadCase", header: "IGESToBRep_TopoCurve.hxx".}
proc BadCase*(this: IGESToBRep_TopoCurve): Standard_Boolean {.noSideEffect,
    importcpp: "BadCase", header: "IGESToBRep_TopoCurve.hxx".}