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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ShapeAnalysis_DataMapOfShapeListOfReal,
  ../TopTools/TopTools_DataMapOfShapeShape, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Compound"
when defined(Status):
  discard
## ! Analysis of the face size

type
  ShapeAnalysis_CheckSmallFace* {.importcpp: "ShapeAnalysis_CheckSmallFace",
                                 header: "ShapeAnalysis_CheckSmallFace.hxx",
                                 bycopy.} = object ## ! Creates an empty tool
                                                ## ! Checks a Shape i.e. each of its faces, records checks as
                                                ## ! diagnostics in the <infos>
                                                ## !
                                                ## ! If <infos> has not been set before, no check is done
                                                ## !
                                                ## ! For faces which are in a Shell, topological data are recorded
                                                ## ! to allow recovering connectivities after fixing or removing
                                                ## ! the small faces or parts of faces
                                                ## ! Enchains various checks on a face
                                                ## ! inshell : to compute more informations, relevant to topology


proc constructShapeAnalysis_CheckSmallFace*(): ShapeAnalysis_CheckSmallFace {.
    constructor, importcpp: "ShapeAnalysis_CheckSmallFace(@)",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc IsSpotFace*(this: ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                spot: var gp_Pnt; spotol: var Standard_Real;
                tol: Standard_Real = -1.0): Standard_Integer {.noSideEffect,
    importcpp: "IsSpotFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckSpotFace*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                   tol: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "CheckSpotFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc IsStripSupport*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                    tol: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "IsStripSupport", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckStripEdges*(this: ShapeAnalysis_CheckSmallFace; E1: TopoDS_Edge;
                     E2: TopoDS_Edge; tol: Standard_Real; dmax: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "CheckStripEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc FindStripEdges*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                    E1: var TopoDS_Edge; E2: var TopoDS_Edge; tol: Standard_Real;
                    dmax: var Standard_Real): Standard_Boolean {.
    importcpp: "FindStripEdges", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckSingleStrip*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                      E1: var TopoDS_Edge; E2: var TopoDS_Edge;
                      tol: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "CheckSingleStrip", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckStripFace*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                    E1: var TopoDS_Edge; E2: var TopoDS_Edge;
                    tol: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "CheckStripFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckSplittingVertices*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                            MapEdges: var TopTools_DataMapOfShapeListOfShape;
    MapParam: var ShapeAnalysis_DataMapOfShapeListOfReal;
                            theAllVert: var TopoDS_Compound): Standard_Integer {.
    importcpp: "CheckSplittingVertices",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckPin*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
              whatrow: var Standard_Integer; sence: var Standard_Integer): Standard_Boolean {.
    importcpp: "CheckPin", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckTwisted*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                  paramu: var Standard_Real; paramv: var Standard_Real): Standard_Boolean {.
    importcpp: "CheckTwisted", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckPinFace*(this: var ShapeAnalysis_CheckSmallFace; F: TopoDS_Face;
                  mapEdges: var TopTools_DataMapOfShapeShape;
                  toler: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "CheckPinFace", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc CheckPinEdges*(this: ShapeAnalysis_CheckSmallFace; theFirstEdge: TopoDS_Edge;
                   theSecondEdge: TopoDS_Edge; coef1: Standard_Real;
                   coef2: Standard_Real; toler: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "CheckPinEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc Status*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc SetTolerance*(this: var ShapeAnalysis_CheckSmallFace; tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc Tolerance*(this: ShapeAnalysis_CheckSmallFace): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusSpot*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSpot",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusStrip*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusStrip",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusPin*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusPin",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusTwisted*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusTwisted",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusSplitVert*(this: ShapeAnalysis_CheckSmallFace;
                     status: ShapeExtend_Status): Standard_Boolean {.noSideEffect,
    importcpp: "StatusSplitVert", header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusPinFace*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusPinFace",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}
proc StatusPinEdges*(this: ShapeAnalysis_CheckSmallFace; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusPinEdges",
    header: "ShapeAnalysis_CheckSmallFace.hxx".}