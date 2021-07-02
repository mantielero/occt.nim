##  Created on: 1996-08-30
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of BRepOffset_Offset"
type
  BRepOffsetInter2d* {.importcpp: "BRepOffset_Inter2d",
                      header: "BRepOffset_Inter2d.hxx", bycopy.} = object ## ! Computes the
                                                                     ## intersections between the edges stored
                                                                     ## ! is AsDes as descendants of <F> .
                                                                     ## Intersections is computed
                                                                     ## ! between two edges if one of them is bound in NewEdges.
                                                                     ## ! When all faces of the shape are treated the
                                                                     ## intersection
                                                                     ## ! vertices have to be fused using the
                                                                     ## FuseVertices method.
                                                                     ## ! theDMVV contains the vertices that should be fused


proc compute*(asDes: Handle[BRepAlgoAsDes]; f: TopoDS_Face;
             newEdges: TopToolsIndexedMapOfShape; tol: StandardReal;
             theDMVV: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Inter2d::Compute(@)", header: "BRepOffset_Inter2d.hxx".}
proc connexIntByInt*(fi: TopoDS_Face; ofi: var BRepOffsetOffset;
                    mes: var TopToolsDataMapOfShapeShape;
                    build: TopToolsDataMapOfShapeShape;
                    asDes2d: Handle[BRepAlgoAsDes]; offset: StandardReal;
                    tol: StandardReal; analyse: BRepOffsetAnalyse;
                    facesWithVerts: var TopToolsIndexedMapOfShape;
                    theDMVV: var TopToolsIndexedDataMapOfShapeListOfShape): StandardBoolean {.
    importcpp: "BRepOffset_Inter2d::ConnexIntByInt(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc connexIntByIntInVert*(fi: TopoDS_Face; ofi: var BRepOffsetOffset;
                          mes: var TopToolsDataMapOfShapeShape;
                          build: TopToolsDataMapOfShapeShape;
                          asDes: Handle[BRepAlgoAsDes];
                          asDes2d: Handle[BRepAlgoAsDes]; tol: StandardReal;
                          analyse: BRepOffsetAnalyse;
                          theDMVV: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Inter2d::ConnexIntByIntInVert(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc fuseVertices*(theDMVV: TopToolsIndexedDataMapOfShapeListOfShape;
                  theAsDes: Handle[BRepAlgoAsDes]): StandardBoolean {.
    importcpp: "BRepOffset_Inter2d::FuseVertices(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc extentEdge*(e: TopoDS_Edge; ne: var TopoDS_Edge; theOffset: StandardReal): StandardBoolean {.
    importcpp: "BRepOffset_Inter2d::ExtentEdge(@)",
    header: "BRepOffset_Inter2d.hxx".}

