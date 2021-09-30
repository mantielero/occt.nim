##  Created on: 1995-10-20
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Compound"
type
  BRepOffsetAnalyse* {.importcpp: "BRepOffset_Analyse",
                      header: "BRepOffset_Analyse.hxx", bycopy.} = object ## ! @name
                                                                     ## Constructors
                                                                     ## ! Empty c-tor
                                                                     ## ! @name Performing analysis
                                                                     ## ! Performs the analysis
                                                                     ## ! @name Results
                                                                     ## ! Returns status of the algorithm
                                                                     ## ! @name Clearing the content
                                                                     ## ! Clears the content of the algorithm
                                                                     ## ! @name Treatment of tangential cases
                                                                     ## ! Treatment of the tangential cases.
                                                                     ## ! @param theEdges List of edges connecting tangent faces
                                                                     ## ! @name Fields
                                                                     ##  Inputs
    ## !< Input shape to analyze
    ## !< Criteria angle to check tangency
    ## !< Offset value
    ## !< Map to store offset values for the faces.
    ## !  Should be set by the calling algorithm.
    ##  Results
    ## !< Status of the algorithm
    ## !< Map containing the list of intervals on the edge
    ## !< Ancestors map
    ## !< Replacement of an edge in the face
    ## !< Map of shapes descendants built on the base of
    ## !< Ancestors map. Filled on the first query.
    ## !< New faces generated to close the gaps between adjacent
    ## !  tangential faces having different offset values
    ## !< Binding between edge and face generated from the edge


proc `new`*(this: var BRepOffsetAnalyse; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Analyse::operator new",
    header: "BRepOffset_Analyse.hxx".}
proc `delete`*(this: var BRepOffsetAnalyse; theAddress: pointer) {.
    importcpp: "BRepOffset_Analyse::operator delete",
    header: "BRepOffset_Analyse.hxx".}
proc `new[]`*(this: var BRepOffsetAnalyse; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Analyse::operator new[]",
    header: "BRepOffset_Analyse.hxx".}
proc `delete[]`*(this: var BRepOffsetAnalyse; theAddress: pointer) {.
    importcpp: "BRepOffset_Analyse::operator delete[]",
    header: "BRepOffset_Analyse.hxx".}
proc `new`*(this: var BRepOffsetAnalyse; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffset_Analyse::operator new",
    header: "BRepOffset_Analyse.hxx".}
proc `delete`*(this: var BRepOffsetAnalyse; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffset_Analyse::operator delete",
    header: "BRepOffset_Analyse.hxx".}
proc constructBRepOffsetAnalyse*(): BRepOffsetAnalyse {.constructor,
    importcpp: "BRepOffset_Analyse(@)", header: "BRepOffset_Analyse.hxx".}
proc constructBRepOffsetAnalyse*(theS: TopoDS_Shape; theAngle: StandardReal): BRepOffsetAnalyse {.
    constructor, importcpp: "BRepOffset_Analyse(@)",
    header: "BRepOffset_Analyse.hxx".}
proc perform*(this: var BRepOffsetAnalyse; theS: TopoDS_Shape; theAngle: StandardReal) {.
    importcpp: "Perform", header: "BRepOffset_Analyse.hxx".}
proc isDone*(this: BRepOffsetAnalyse): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffset_Analyse.hxx".}
proc `type`*(this: BRepOffsetAnalyse; theE: TopoDS_Edge): BRepOffsetListOfInterval {.
    noSideEffect, importcpp: "Type", header: "BRepOffset_Analyse.hxx".}
proc edges*(this: BRepOffsetAnalyse; theV: TopoDS_Vertex;
           theType: ChFiDS_TypeOfConcavity; theL: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "Edges", header: "BRepOffset_Analyse.hxx".}
proc edges*(this: BRepOffsetAnalyse; theF: TopoDS_Face;
           theType: ChFiDS_TypeOfConcavity; theL: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "Edges", header: "BRepOffset_Analyse.hxx".}
proc tangentEdges*(this: BRepOffsetAnalyse; theEdge: TopoDS_Edge;
                  theVertex: TopoDS_Vertex; theEdges: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "TangentEdges", header: "BRepOffset_Analyse.hxx".}
proc hasAncestor*(this: BRepOffsetAnalyse; theS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "HasAncestor", header: "BRepOffset_Analyse.hxx".}
proc ancestors*(this: BRepOffsetAnalyse; theS: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Ancestors", header: "BRepOffset_Analyse.hxx".}
proc explode*(this: BRepOffsetAnalyse; theL: var TopToolsListOfShape;
             theType: ChFiDS_TypeOfConcavity) {.noSideEffect, importcpp: "Explode",
    header: "BRepOffset_Analyse.hxx".}
proc explode*(this: BRepOffsetAnalyse; theL: var TopToolsListOfShape;
             theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, importcpp: "Explode", header: "BRepOffset_Analyse.hxx".}
proc addFaces*(this: BRepOffsetAnalyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopToolsMapOfShape;
              theType: ChFiDS_TypeOfConcavity) {.noSideEffect,
    importcpp: "AddFaces", header: "BRepOffset_Analyse.hxx".}
proc addFaces*(this: BRepOffsetAnalyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopToolsMapOfShape;
              theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, importcpp: "AddFaces", header: "BRepOffset_Analyse.hxx".}
proc setOffsetValue*(this: var BRepOffsetAnalyse; theOffset: StandardReal) {.
    importcpp: "SetOffsetValue", header: "BRepOffset_Analyse.hxx".}
proc setFaceOffsetMap*(this: var BRepOffsetAnalyse;
                      theMap: TopToolsDataMapOfShapeReal) {.
    importcpp: "SetFaceOffsetMap", header: "BRepOffset_Analyse.hxx".}
proc newFaces*(this: BRepOffsetAnalyse): TopToolsListOfShape {.noSideEffect,
    importcpp: "NewFaces", header: "BRepOffset_Analyse.hxx".}
proc generated*(this: BRepOffsetAnalyse; theS: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Generated", header: "BRepOffset_Analyse.hxx".}
proc hasGenerated*(this: BRepOffsetAnalyse; theS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "HasGenerated", header: "BRepOffset_Analyse.hxx".}
proc edgeReplacement*(this: BRepOffsetAnalyse; theFace: TopoDS_Face;
                     theEdge: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "EdgeReplacement", header: "BRepOffset_Analyse.hxx".}
proc descendants*(this: BRepOffsetAnalyse; theS: TopoDS_Shape;
                 theUpdate: StandardBoolean = false): ptr TopToolsListOfShape {.
    noSideEffect, importcpp: "Descendants", header: "BRepOffset_Analyse.hxx".}
proc clear*(this: var BRepOffsetAnalyse) {.importcpp: "Clear",
                                       header: "BRepOffset_Analyse.hxx".}