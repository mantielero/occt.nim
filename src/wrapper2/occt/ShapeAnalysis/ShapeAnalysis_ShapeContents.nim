##  Created on: 1999-02-25
##  Created by: Pavel DURANDIN
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_HSequenceOfShape

discard "forward decl of TopoDS_Shape"
type
  ShapeAnalysis_ShapeContents* {.importcpp: "ShapeAnalysis_ShapeContents",
                                header: "ShapeAnalysis_ShapeContents.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Initialize
                                                                                        ## fields
                                                                                        ## and
                                                                                        ## call
                                                                                        ## ClearFlags()


proc constructShapeAnalysis_ShapeContents*(): ShapeAnalysis_ShapeContents {.
    constructor, importcpp: "ShapeAnalysis_ShapeContents(@)",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc Clear*(this: var ShapeAnalysis_ShapeContents) {.importcpp: "Clear",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc ClearFlags*(this: var ShapeAnalysis_ShapeContents) {.importcpp: "ClearFlags",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc Perform*(this: var ShapeAnalysis_ShapeContents; shape: TopoDS_Shape) {.
    importcpp: "Perform", header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyBigSplineMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyBigSplineMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyIndirectMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyIndirectMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyOffestSurfaceMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyOffestSurfaceMode",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyTrimmed3dMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyTrimmed3dMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyOffsetCurveMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyOffsetCurveMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc ModifyTrimmed2dMode*(this: var ShapeAnalysis_ShapeContents): var Standard_Boolean {.
    importcpp: "ModifyTrimmed2dMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSolids*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.noSideEffect,
    importcpp: "NbSolids", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbShells*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.noSideEffect,
    importcpp: "NbShells", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbFaces*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.noSideEffect,
    importcpp: "NbFaces", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbWires*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.noSideEffect,
    importcpp: "NbWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbEdges*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbVertices*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbVertices",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSolidsWithVoids*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSolidsWithVoids",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbBigSplines*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbBigSplines",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbC0Surfaces*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbC0Surfaces",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbC0Curves*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbC0Curves",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbOffsetSurf*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbOffsetSurf",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbIndirectSurf*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbIndirectSurf",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbOffsetCurves*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbOffsetCurves",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbTrimmedCurve2d*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbTrimmedCurve2d",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbTrimmedCurve3d*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbTrimmedCurve3d",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbBSplibeSurf*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbBSplibeSurf",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbBezierSurf*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbBezierSurf",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbTrimSurf*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbTrimSurf",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbWireWitnSeam*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbWireWitnSeam",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbWireWithSevSeams*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbWireWithSevSeams",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbFaceWithSevWires*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbFaceWithSevWires",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbNoPCurve*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbNoPCurve",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbFreeFaces*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbFreeFaces",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbFreeWires*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbFreeWires",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbFreeEdges*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbFreeEdges",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedSolids*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedSolids",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedShells*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedShells",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedFaces*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedFaces",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedWires*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedWires",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedFreeWires*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedFreeWires",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedFreeEdges*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedFreeEdges",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedEdges*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedEdges",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc NbSharedVertices*(this: ShapeAnalysis_ShapeContents): Standard_Integer {.
    noSideEffect, importcpp: "NbSharedVertices",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc BigSplineSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "BigSplineSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}
proc IndirectSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "IndirectSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}
proc OffsetSurfaceSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "OffsetSurfaceSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}
proc Trimmed3dSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "Trimmed3dSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}
proc OffsetCurveSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "OffsetCurveSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}
proc Trimmed2dSec*(this: ShapeAnalysis_ShapeContents): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "Trimmed2dSec",
                                header: "ShapeAnalysis_ShapeContents.hxx".}