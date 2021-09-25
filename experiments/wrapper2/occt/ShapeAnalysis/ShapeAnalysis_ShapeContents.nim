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

discard "forward decl of TopoDS_Shape"
type
  ShapeAnalysisShapeContents* {.importcpp: "ShapeAnalysis_ShapeContents",
                               header: "ShapeAnalysis_ShapeContents.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Initialize
                                                                                       ## fields
                                                                                       ## and
                                                                                       ## call
                                                                                       ## ClearFlags()


proc constructShapeAnalysisShapeContents*(): ShapeAnalysisShapeContents {.
    constructor, importcpp: "ShapeAnalysis_ShapeContents(@)",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc clear*(this: var ShapeAnalysisShapeContents) {.importcpp: "Clear",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc clearFlags*(this: var ShapeAnalysisShapeContents) {.importcpp: "ClearFlags",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc perform*(this: var ShapeAnalysisShapeContents; shape: TopoDS_Shape) {.
    importcpp: "Perform", header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyBigSplineMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyBigSplineMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyIndirectMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyIndirectMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyOffestSurfaceMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyOffestSurfaceMode",
    header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyTrimmed3dMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyTrimmed3dMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyOffsetCurveMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyOffsetCurveMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc modifyTrimmed2dMode*(this: var ShapeAnalysisShapeContents): var bool {.
    importcpp: "ModifyTrimmed2dMode", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSolids*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSolids", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbShells*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbShells", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbFaces*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbFaces", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbWires*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbEdges*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbVertices*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbVertices", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSolidsWithVoids*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSolidsWithVoids", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbBigSplines*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbBigSplines", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbC0Surfaces*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbC0Surfaces", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbC0Curves*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbC0Curves", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbOffsetSurf*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbOffsetSurf", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbIndirectSurf*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbIndirectSurf", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbOffsetCurves*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbOffsetCurves", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbTrimmedCurve2d*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbTrimmedCurve2d", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbTrimmedCurve3d*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbTrimmedCurve3d", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbBSplibeSurf*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbBSplibeSurf", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbBezierSurf*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbBezierSurf", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbTrimSurf*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbTrimSurf", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbWireWitnSeam*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbWireWitnSeam", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbWireWithSevSeams*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbWireWithSevSeams", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbFaceWithSevWires*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbFaceWithSevWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbNoPCurve*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbNoPCurve", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbFreeFaces*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbFreeFaces", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbFreeWires*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbFreeWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbFreeEdges*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbFreeEdges", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedSolids*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedSolids", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedShells*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedShells", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedFaces*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedFaces", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedWires*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedFreeWires*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedFreeWires", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedFreeEdges*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedFreeEdges", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedEdges*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedEdges", header: "ShapeAnalysis_ShapeContents.hxx".}
proc nbSharedVertices*(this: ShapeAnalysisShapeContents): int {.noSideEffect,
    importcpp: "NbSharedVertices", header: "ShapeAnalysis_ShapeContents.hxx".}
proc bigSplineSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "BigSplineSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
proc indirectSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "IndirectSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
proc offsetSurfaceSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "OffsetSurfaceSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
proc trimmed3dSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "Trimmed3dSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
proc offsetCurveSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "OffsetCurveSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
proc trimmed2dSec*(this: ShapeAnalysisShapeContents): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "Trimmed2dSec",
                               header: "ShapeAnalysis_ShapeContents.hxx".}
