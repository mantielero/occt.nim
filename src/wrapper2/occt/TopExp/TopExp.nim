##  Created on: 1990-12-20
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_IndexedMapOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopExp_Explorer"
type
  TopExp* {.importcpp: "TopExp", header: "TopExp.hxx", bycopy.} = object ## ! Tool to explore a topological data structure.
                                                                 ## ! Stores in the map <M> all  the sub-shapes of <S>
                                                                 ## ! of type <T>.
                                                                 ## !
                                                                 ## ! Warning: The map is not cleared at first.


proc MapShapes*(S: TopoDS_Shape; T: TopAbs_ShapeEnum;
               M: var TopTools_IndexedMapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc MapShapes*(S: TopoDS_Shape; M: var TopTools_IndexedMapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc MapShapes*(S: TopoDS_Shape; M: var TopTools_MapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc MapShapesAndAncestors*(S: TopoDS_Shape; TS: TopAbs_ShapeEnum;
                           TA: TopAbs_ShapeEnum;
                           M: var TopTools_IndexedDataMapOfShapeListOfShape) {.
    importcpp: "TopExp::MapShapesAndAncestors(@)", header: "TopExp.hxx".}
proc MapShapesAndUniqueAncestors*(S: TopoDS_Shape; TS: TopAbs_ShapeEnum;
                                 TA: TopAbs_ShapeEnum; M: var TopTools_IndexedDataMapOfShapeListOfShape;
    useOrientation: Standard_Boolean = Standard_False) {.
    importcpp: "TopExp::MapShapesAndUniqueAncestors(@)", header: "TopExp.hxx".}
proc FirstVertex*(E: TopoDS_Edge; CumOri: Standard_Boolean = Standard_False): TopoDS_Vertex {.
    importcpp: "TopExp::FirstVertex(@)", header: "TopExp.hxx".}
proc LastVertex*(E: TopoDS_Edge; CumOri: Standard_Boolean = Standard_False): TopoDS_Vertex {.
    importcpp: "TopExp::LastVertex(@)", header: "TopExp.hxx".}
proc Vertices*(E: TopoDS_Edge; Vfirst: var TopoDS_Vertex; Vlast: var TopoDS_Vertex;
              CumOri: Standard_Boolean = Standard_False) {.
    importcpp: "TopExp::Vertices(@)", header: "TopExp.hxx".}
proc Vertices*(W: TopoDS_Wire; Vfirst: var TopoDS_Vertex; Vlast: var TopoDS_Vertex) {.
    importcpp: "TopExp::Vertices(@)", header: "TopExp.hxx".}
proc CommonVertex*(E1: TopoDS_Edge; E2: TopoDS_Edge; V: var TopoDS_Vertex): Standard_Boolean {.
    importcpp: "TopExp::CommonVertex(@)", header: "TopExp.hxx".}