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
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of BRepOffset_Offset"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepOffsetInter2d* {.importcpp: "BRepOffset_Inter2d",
                      header: "BRepOffset_Inter2d.hxx", bycopy.} = object


proc `new`*(this: var BRepOffsetInter2d; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Inter2d::operator new",
    header: "BRepOffset_Inter2d.hxx".}
proc `delete`*(this: var BRepOffsetInter2d; theAddress: pointer) {.
    importcpp: "BRepOffset_Inter2d::operator delete",
    header: "BRepOffset_Inter2d.hxx".}
proc `new[]`*(this: var BRepOffsetInter2d; theSize: csize_t): pointer {.
    importcpp: "BRepOffset_Inter2d::operator new[]",
    header: "BRepOffset_Inter2d.hxx".}
proc `delete[]`*(this: var BRepOffsetInter2d; theAddress: pointer) {.
    importcpp: "BRepOffset_Inter2d::operator delete[]",
    header: "BRepOffset_Inter2d.hxx".}
proc `new`*(this: var BRepOffsetInter2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffset_Inter2d::operator new",
    header: "BRepOffset_Inter2d.hxx".}
proc `delete`*(this: var BRepOffsetInter2d; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffset_Inter2d::operator delete",
    header: "BRepOffset_Inter2d.hxx".}
proc compute*(asDes: Handle[BRepAlgoAsDes]; f: TopoDS_Face;
             newEdges: TopToolsIndexedMapOfShape; tol: StandardReal;
             theEdgeIntEdges: TopToolsDataMapOfShapeListOfShape;
             theDMVV: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Inter2d::Compute(@)", header: "BRepOffset_Inter2d.hxx".}
proc connexIntByInt*(fi: TopoDS_Face; ofi: var BRepOffsetOffset;
                    mes: var TopToolsDataMapOfShapeShape;
                    build: TopToolsDataMapOfShapeShape;
                    theAsDes: Handle[BRepAlgoAsDes];
                    asDes2d: Handle[BRepAlgoAsDes]; offset: StandardReal;
                    tol: StandardReal; analyse: BRepOffsetAnalyse;
                    facesWithVerts: var TopToolsIndexedMapOfShape;
                    theImageVV: var BRepAlgoImage;
                    theEdgeIntEdges: var TopToolsDataMapOfShapeListOfShape;
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
                  theAsDes: Handle[BRepAlgoAsDes]; theImageVV: var BRepAlgoImage): StandardBoolean {.
    importcpp: "BRepOffset_Inter2d::FuseVertices(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc extentEdge*(e: TopoDS_Edge; ne: var TopoDS_Edge; theOffset: StandardReal): StandardBoolean {.
    importcpp: "BRepOffset_Inter2d::ExtentEdge(@)",
    header: "BRepOffset_Inter2d.hxx".}