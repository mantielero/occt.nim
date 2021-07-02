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
proc isSpotFace*(this: ShapeAnalysisCheckSmallFace; f: TopoDS_Face; spot: var GpPnt;
                spotol: var StandardReal; tol: StandardReal = -1.0): StandardInteger {.
    noSideEffect, importcpp: "IsSpotFace",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSpotFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                   tol: StandardReal = -1.0): StandardBoolean {.
    importcpp: "CheckSpotFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc isStripSupport*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    tol: StandardReal = -1.0): StandardBoolean {.
    importcpp: "IsStripSupport", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkStripEdges*(this: ShapeAnalysisCheckSmallFace; e1: TopoDS_Edge;
                     e2: TopoDS_Edge; tol: StandardReal; dmax: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "CheckStripEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc findStripEdges*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    e1: var TopoDS_Edge; e2: var TopoDS_Edge; tol: StandardReal;
                    dmax: var StandardReal): StandardBoolean {.
    importcpp: "FindStripEdges", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSingleStrip*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                      e1: var TopoDS_Edge; e2: var TopoDS_Edge;
                      tol: StandardReal = -1.0): StandardBoolean {.
    importcpp: "CheckSingleStrip", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkStripFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                    e1: var TopoDS_Edge; e2: var TopoDS_Edge;
                    tol: StandardReal = -1.0): StandardBoolean {.
    importcpp: "CheckStripFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkSplittingVertices*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                            mapEdges: var TopToolsDataMapOfShapeListOfShape;
    mapParam: var ShapeAnalysisDataMapOfShapeListOfReal;
                            theAllVert: var TopoDS_Compound): StandardInteger {.
    importcpp: "CheckSplittingVertices",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPin*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
              whatrow: var StandardInteger; sence: var StandardInteger): StandardBoolean {.
    importcpp: "CheckPin", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkTwisted*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                  paramu: var StandardReal; paramv: var StandardReal): StandardBoolean {.
    importcpp: "CheckTwisted", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPinFace*(this: var ShapeAnalysisCheckSmallFace; f: TopoDS_Face;
                  mapEdges: var TopToolsDataMapOfShapeShape;
                  toler: StandardReal = -1.0): StandardBoolean {.
    importcpp: "CheckPinFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc checkPinEdges*(this: ShapeAnalysisCheckSmallFace; theFirstEdge: TopoDS_Edge;
                   theSecondEdge: TopoDS_Edge; coef1: StandardReal;
                   coef2: StandardReal; toler: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "CheckPinEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc status*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc setTolerance*(this: var ShapeAnalysisCheckSmallFace; tol: StandardReal) {.
    importcpp: "SetTolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc tolerance*(this: ShapeAnalysisCheckSmallFace): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusSpot*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSpot",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusStrip*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusStrip",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPin*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusPin",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusTwisted*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusTwisted",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusSplitVert*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSplitVert",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPinFace*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusPinFace",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc statusPinEdges*(this: ShapeAnalysisCheckSmallFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusPinEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}

