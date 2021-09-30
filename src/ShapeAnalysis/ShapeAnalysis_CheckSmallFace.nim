##  Created on: 1999-09-13
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
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Compound"
# when defined(Status):
#   discard
## ! Analysis of the face size

type
  ShapeAnalysisCheckSmallFace* {.importcpp: "ShapeAnalysis_CheckSmallFace",
                                header: "ShapeAnalysis_CheckSmallFace.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## tool
                                                                                         ##
                                                                                         ## !
                                                                                         ## Checks
                                                                                         ## a
                                                                                         ## Shape
                                                                                         ## i.e.
                                                                                         ## each
                                                                                         ## of
                                                                                         ## its
                                                                                         ## faces,
                                                                                         ## records
                                                                                         ## checks
                                                                                         ## as
                                                                                         ##
                                                                                         ## !
                                                                                         ## diagnostics
                                                                                         ## in
                                                                                         ## the
                                                                                         ## <infos>
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## If
                                                                                         ## <infos>
                                                                                         ## has
                                                                                         ## not
                                                                                         ## been
                                                                                         ## set
                                                                                         ## before,
                                                                                         ## no
                                                                                         ## check
                                                                                         ## is
                                                                                         ## done
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## For
                                                                                         ## faces
                                                                                         ## which
                                                                                         ## are
                                                                                         ## in
                                                                                         ## a
                                                                                         ## Shell,
                                                                                         ## topological
                                                                                         ## data
                                                                                         ## are
                                                                                         ## recorded
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## allow
                                                                                         ## recovering
                                                                                         ## connectivities
                                                                                         ## after
                                                                                         ## fixing
                                                                                         ## or
                                                                                         ## removing
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## small
                                                                                         ## faces
                                                                                         ## or
                                                                                         ## parts
                                                                                         ## of
                                                                                         ## faces
                                                                                         ##
                                                                                         ## !
                                                                                         ## Enchains
                                                                                         ## various
                                                                                         ## checks
                                                                                         ## on
                                                                                         ## a
                                                                                         ## face
                                                                                         ##
                                                                                         ## !
                                                                                         ## inshell
                                                                                         ## :
                                                                                         ## to
                                                                                         ## compute
                                                                                         ## more
                                                                                         ## informations,
                                                                                         ## relevant
                                                                                         ## to
                                                                                         ## topology


proc constructShapeAnalysisCheckSmallFace*(): ShapeAnalysisCheckSmallFace {.
    constructor, importcpp: "ShapeAnalysis_CheckSmallFace(@)",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc isSpotFace*(this: ShapeAnalysisCheckSmallFace; f: TopoDS_Face; spot: var Pnt;
                spotol: var cfloat; tol: cfloat = -1.0): cint {.noSideEffect,
    importcpp: "IsSpotFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSpotFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                   tol: cfloat = -1.0): bool {.importcpp: "CheckSpotFace",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc isStripSupport*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    tol: cfloat = -1.0): bool {.importcpp: "IsStripSupport",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkStripEdges*(this: ShapeAnalysisCheckSmallFace; e1: TopoDS_Edge;
                     e2: TopoDS_Edge; tol: cfloat; dmax: var cfloat): bool {.
    noSideEffect, importcpp: "CheckStripEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc findStripEdges*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    e1: var TopoDS_Edge; e2: var TopoDS_Edge; tol: cfloat;
                    dmax: var cfloat): bool {.importcpp: "FindStripEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSingleStrip*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                      e1: var TopoDS_Edge; e2: var TopoDS_Edge; tol: cfloat = -1.0): bool {.
    importcpp: "CheckSingleStrip", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkStripFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    e1: var TopoDS_Edge; e2: var TopoDS_Edge; tol: cfloat = -1.0): bool {.
    importcpp: "CheckStripFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSplittingVertices*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                            mapEdges: var TopToolsDataMapOfShapeListOfShape;
    mapParam: var ShapeAnalysisDataMapOfShapeListOfReal;
                            theAllVert: var TopoDS_Compound): cint {.
    importcpp: "CheckSplittingVertices",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPin*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
              whatrow: var cint; sence: var cint): bool {.importcpp: "CheckPin",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkTwisted*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                  paramu: var cfloat; paramv: var cfloat): bool {.
    importcpp: "CheckTwisted", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPinFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                  mapEdges: var TopToolsDataMapOfShapeShape; toler: cfloat = -1.0): bool {.
    importcpp: "CheckPinFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPinEdges*(this: ShapeAnalysisCheckSmallFace; theFirstEdge: TopoDS_Edge;
                   theSecondEdge: TopoDS_Edge; coef1: cfloat; coef2: cfloat;
                   toler: cfloat): bool {.noSideEffect, importcpp: "CheckPinEdges", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc status*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc setTolerance*(this: var ShapeAnalysisCheckSmallFace; tol: cfloat) {.
    importcpp: "SetTolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc tolerance*(this: ShapeAnalysisCheckSmallFace): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusSpot*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusSpot",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusStrip*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusStrip",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPin*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusPin",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusTwisted*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusTwisted",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusSplitVert*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusSplitVert",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPinFace*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusPinFace",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPinEdges*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "StatusPinEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}

























