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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Shape, BRepOffset_DataMapOfShapeListOfInterval,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../Standard/Standard_Real, BRepOffset_ListOfInterval,
  ../ChFiDS/ChFiDS_TypeOfConcavity,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeReal,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_MapOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Compound"
type
  BRepOffset_Analyse* {.importcpp: "BRepOffset_Analyse",
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


proc constructBRepOffset_Analyse*(): BRepOffset_Analyse {.constructor,
    importcpp: "BRepOffset_Analyse(@)", header: "BRepOffset_Analyse.hxx".}
proc constructBRepOffset_Analyse*(theS: TopoDS_Shape; theAngle: Standard_Real): BRepOffset_Analyse {.
    constructor, importcpp: "BRepOffset_Analyse(@)",
    header: "BRepOffset_Analyse.hxx".}
proc Perform*(this: var BRepOffset_Analyse; theS: TopoDS_Shape;
             theAngle: Standard_Real) {.importcpp: "Perform",
                                      header: "BRepOffset_Analyse.hxx".}
proc IsDone*(this: BRepOffset_Analyse): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffset_Analyse.hxx".}
proc Type*(this: BRepOffset_Analyse; theE: TopoDS_Edge): BRepOffset_ListOfInterval {.
    noSideEffect, importcpp: "Type", header: "BRepOffset_Analyse.hxx".}
proc Edges*(this: BRepOffset_Analyse; theV: TopoDS_Vertex;
           theType: ChFiDS_TypeOfConcavity; theL: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "Edges", header: "BRepOffset_Analyse.hxx".}
proc Edges*(this: BRepOffset_Analyse; theF: TopoDS_Face;
           theType: ChFiDS_TypeOfConcavity; theL: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "Edges", header: "BRepOffset_Analyse.hxx".}
proc TangentEdges*(this: BRepOffset_Analyse; theEdge: TopoDS_Edge;
                  theVertex: TopoDS_Vertex; theEdges: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "TangentEdges", header: "BRepOffset_Analyse.hxx".}
proc HasAncestor*(this: BRepOffset_Analyse; theS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasAncestor", header: "BRepOffset_Analyse.hxx".}
proc Ancestors*(this: BRepOffset_Analyse; theS: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Ancestors", header: "BRepOffset_Analyse.hxx".}
proc Explode*(this: BRepOffset_Analyse; theL: var TopTools_ListOfShape;
             theType: ChFiDS_TypeOfConcavity) {.noSideEffect, importcpp: "Explode",
    header: "BRepOffset_Analyse.hxx".}
proc Explode*(this: BRepOffset_Analyse; theL: var TopTools_ListOfShape;
             theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, importcpp: "Explode", header: "BRepOffset_Analyse.hxx".}
proc AddFaces*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopTools_MapOfShape;
              theType: ChFiDS_TypeOfConcavity) {.noSideEffect,
    importcpp: "AddFaces", header: "BRepOffset_Analyse.hxx".}
proc AddFaces*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopTools_MapOfShape;
              theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, importcpp: "AddFaces", header: "BRepOffset_Analyse.hxx".}
proc SetOffsetValue*(this: var BRepOffset_Analyse; theOffset: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "BRepOffset_Analyse.hxx".}
proc SetFaceOffsetMap*(this: var BRepOffset_Analyse;
                      theMap: TopTools_DataMapOfShapeReal) {.
    importcpp: "SetFaceOffsetMap", header: "BRepOffset_Analyse.hxx".}
proc NewFaces*(this: BRepOffset_Analyse): TopTools_ListOfShape {.noSideEffect,
    importcpp: "NewFaces", header: "BRepOffset_Analyse.hxx".}
proc Generated*(this: BRepOffset_Analyse; theS: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Generated", header: "BRepOffset_Analyse.hxx".}
proc HasGenerated*(this: BRepOffset_Analyse; theS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasGenerated", header: "BRepOffset_Analyse.hxx".}
proc EdgeReplacement*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
                     theEdge: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "EdgeReplacement", header: "BRepOffset_Analyse.hxx".}
proc Descendants*(this: BRepOffset_Analyse; theS: TopoDS_Shape;
                 theUpdate: Standard_Boolean = Standard_False): ptr TopTools_ListOfShape {.
    noSideEffect, importcpp: "Descendants", header: "BRepOffset_Analyse.hxx".}
proc Clear*(this: var BRepOffset_Analyse) {.importcpp: "Clear",
                                        header: "BRepOffset_Analyse.hxx".}