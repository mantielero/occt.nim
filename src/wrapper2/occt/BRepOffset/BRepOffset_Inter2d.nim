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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_Real, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of BRepOffset_Offset"
type
  BRepOffset_Inter2d* {.importcpp: "BRepOffset_Inter2d",
                       header: "BRepOffset_Inter2d.hxx", bycopy.} = object ## ! Computes the
                                                                      ## intersections between the edges stored
                                                                      ## ! is AsDes as
                                                                      ## descendants of <F> .
                                                                      ## Intersections is computed
                                                                      ## ! between two edges if one of them is bound in NewEdges.
                                                                      ## ! When all faces of the shape are treated the
                                                                      ## intersection
                                                                      ## ! vertices have to be fused using the
                                                                      ## FuseVertices method.
                                                                      ## ! theDMVV contains the vertices that should be fused


proc Compute*(AsDes: handle[BRepAlgo_AsDes]; F: TopoDS_Face;
             NewEdges: TopTools_IndexedMapOfShape; Tol: Standard_Real;
             theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Inter2d::Compute(@)", header: "BRepOffset_Inter2d.hxx".}
proc ConnexIntByInt*(FI: TopoDS_Face; OFI: var BRepOffset_Offset;
                    MES: var TopTools_DataMapOfShapeShape;
                    Build: TopTools_DataMapOfShapeShape;
                    AsDes2d: handle[BRepAlgo_AsDes]; Offset: Standard_Real;
                    Tol: Standard_Real; Analyse: BRepOffset_Analyse;
                    FacesWithVerts: var TopTools_IndexedMapOfShape;
                    theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "BRepOffset_Inter2d::ConnexIntByInt(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc ConnexIntByIntInVert*(FI: TopoDS_Face; OFI: var BRepOffset_Offset;
                          MES: var TopTools_DataMapOfShapeShape;
                          Build: TopTools_DataMapOfShapeShape;
                          AsDes: handle[BRepAlgo_AsDes];
                          AsDes2d: handle[BRepAlgo_AsDes]; Tol: Standard_Real;
                          Analyse: BRepOffset_Analyse; theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Inter2d::ConnexIntByIntInVert(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc FuseVertices*(theDMVV: TopTools_IndexedDataMapOfShapeListOfShape;
                  theAsDes: handle[BRepAlgo_AsDes]): Standard_Boolean {.
    importcpp: "BRepOffset_Inter2d::FuseVertices(@)",
    header: "BRepOffset_Inter2d.hxx".}
proc ExtentEdge*(E: TopoDS_Edge; NE: var TopoDS_Edge; theOffset: Standard_Real): Standard_Boolean {.
    importcpp: "BRepOffset_Inter2d::ExtentEdge(@)",
    header: "BRepOffset_Inter2d.hxx".}