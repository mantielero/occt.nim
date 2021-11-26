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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopExp_Explorer"
type
  TopExp* {.importcpp: "TopExp", header: "TopExp.hxx", bycopy.} = object


proc `new`*(this: var TopExp; theSize: csize_t): pointer {.
    importcpp: "TopExp::operator new", header: "TopExp.hxx".}
proc `delete`*(this: var TopExp; theAddress: pointer) {.
    importcpp: "TopExp::operator delete", header: "TopExp.hxx".}
proc `new[]`*(this: var TopExp; theSize: csize_t): pointer {.
    importcpp: "TopExp::operator new[]", header: "TopExp.hxx".}
proc `delete[]`*(this: var TopExp; theAddress: pointer) {.
    importcpp: "TopExp::operator delete[]", header: "TopExp.hxx".}
proc `new`*(this: var TopExp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopExp::operator new", header: "TopExp.hxx".}
proc `delete`*(this: var TopExp; a2: pointer; a3: pointer) {.
    importcpp: "TopExp::operator delete", header: "TopExp.hxx".}
proc mapShapes*(s: TopoDS_Shape; t: TopAbsShapeEnum; m: var TopToolsIndexedMapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc mapShapes*(s: TopoDS_Shape; m: var TopToolsIndexedMapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc mapShapes*(s: TopoDS_Shape; m: var TopToolsMapOfShape) {.
    importcpp: "TopExp::MapShapes(@)", header: "TopExp.hxx".}
proc mapShapesAndAncestors*(s: TopoDS_Shape; ts: TopAbsShapeEnum;
                           ta: TopAbsShapeEnum;
                           m: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "TopExp::MapShapesAndAncestors(@)", header: "TopExp.hxx".}
proc mapShapesAndUniqueAncestors*(s: TopoDS_Shape; ts: TopAbsShapeEnum;
                                 ta: TopAbsShapeEnum; m: var TopToolsIndexedDataMapOfShapeListOfShape;
                                 useOrientation: StandardBoolean = false) {.
    importcpp: "TopExp::MapShapesAndUniqueAncestors(@)", header: "TopExp.hxx".}
proc firstVertex*(e: TopoDS_Edge; cumOri: StandardBoolean = false): TopoDS_Vertex {.
    importcpp: "TopExp::FirstVertex(@)", header: "TopExp.hxx".}
proc lastVertex*(e: TopoDS_Edge; cumOri: StandardBoolean = false): TopoDS_Vertex {.
    importcpp: "TopExp::LastVertex(@)", header: "TopExp.hxx".}
proc vertices*(e: TopoDS_Edge; vfirst: var TopoDS_Vertex; vlast: var TopoDS_Vertex;
              cumOri: StandardBoolean = false) {.importcpp: "TopExp::Vertices(@)",
    header: "TopExp.hxx".}
proc vertices*(w: TopoDS_Wire; vfirst: var TopoDS_Vertex; vlast: var TopoDS_Vertex) {.
    importcpp: "TopExp::Vertices(@)", header: "TopExp.hxx".}
proc commonVertex*(e1: TopoDS_Edge; e2: TopoDS_Edge; v: var TopoDS_Vertex): StandardBoolean {.
    importcpp: "TopExp::CommonVertex(@)", header: "TopExp.hxx".}