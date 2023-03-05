import brepoffset_types
import ../tkernel/standard/standard_types
import ../tkbrep/topods/topods_types
import ../tkbrep/toptools/toptools_types


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


# proc Compute*(AsDes: Handle[BRepAlgo_AsDes]; F: TopoDS_Face;
#              NewEdges: TopTools_IndexedMapOfShape; Tol: cfloat;
#              theEdgeIntEdges: TopTools_DataMapOfShapeListOfShape;
#              theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape;
#              theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "BRepOffset_Inter2d::Compute(@)".}
# proc ConnexIntByInt*(FI: TopoDS_Face; OFI: var BRepOffset_Offset;
#                     MES: var TopTools_DataMapOfShapeShape;
#                     Build: TopTools_DataMapOfShapeShape;
#                     theAsDes: Handle[BRepAlgo_AsDes];
#                     AsDes2d: Handle[BRepAlgo_AsDes]; Offset: cfloat; Tol: cfloat;
#                     Analyse: BRepOffset_Analyse;
#                     FacesWithVerts: var TopTools_IndexedMapOfShape;
#                     theImageVV: var BRepAlgo_Image;
#                     theEdgeIntEdges: var TopTools_DataMapOfShapeListOfShape;
#                     theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape;
#                     theRange: Message_ProgressRange): bool {.cdecl,
#     importcpp: "BRepOffset_Inter2d::ConnexIntByInt(@)".}
# proc ConnexIntByIntInVert*(FI: TopoDS_Face; OFI: var BRepOffset_Offset;
#                           MES: var TopTools_DataMapOfShapeShape;
#                           Build: TopTools_DataMapOfShapeShape;
#                           AsDes: Handle[BRepAlgo_AsDes];
#                           AsDes2d: Handle[BRepAlgo_AsDes]; Tol: cfloat;
#                           Analyse: BRepOffset_Analyse; theDMVV: var TopTools_IndexedDataMapOfShapeListOfShape;
#                           theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "BRepOffset_Inter2d::ConnexIntByIntInVert(@)".}
# proc FuseVertices*(theDMVV: TopTools_IndexedDataMapOfShapeListOfShape;
#                   theAsDes: Handle[BRepAlgo_AsDes]; theImageVV: var BRepAlgo_Image): bool {.
#     cdecl, importcpp: "BRepOffset_Inter2d::FuseVertices(@)".}
proc ExtentEdge*(E: TopoDS_Edge; NE: var TopoDS_Edge; theOffset: cfloat): bool {.cdecl,
    importcpp: "BRepOffset_Inter2d::ExtentEdge(@)".}