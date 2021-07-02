##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Shape"
type
  ShapeExtendExplorer* {.importcpp: "ShapeExtend_Explorer",
                        header: "ShapeExtend_Explorer.hxx", bycopy.} = object ## ! Creates an object
                                                                         ## Explorer


proc constructShapeExtendExplorer*(): ShapeExtendExplorer {.constructor,
    importcpp: "ShapeExtend_Explorer(@)", header: "ShapeExtend_Explorer.hxx".}
proc compoundFromSeq*(this: ShapeExtendExplorer;
                     seqval: Handle[TopToolsHSequenceOfShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CompoundFromSeq", header: "ShapeExtend_Explorer.hxx".}
proc seqFromCompound*(this: ShapeExtendExplorer; comp: TopoDS_Shape;
                     expcomp: StandardBoolean): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "SeqFromCompound", header: "ShapeExtend_Explorer.hxx".}
proc listFromSeq*(this: ShapeExtendExplorer;
                 seqval: Handle[TopToolsHSequenceOfShape];
                 lisval: var TopToolsListOfShape;
                 clear: StandardBoolean = standardTrue) {.noSideEffect,
    importcpp: "ListFromSeq", header: "ShapeExtend_Explorer.hxx".}
proc seqFromList*(this: ShapeExtendExplorer; lisval: TopToolsListOfShape): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "SeqFromList",
                               header: "ShapeExtend_Explorer.hxx".}
proc shapeType*(this: ShapeExtendExplorer; shape: TopoDS_Shape;
               compound: StandardBoolean): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "ShapeExtend_Explorer.hxx".}
proc sortedCompound*(this: ShapeExtendExplorer; shape: TopoDS_Shape;
                    `type`: TopAbsShapeEnum; explore: StandardBoolean;
                    compound: StandardBoolean): TopoDS_Shape {.noSideEffect,
    importcpp: "SortedCompound", header: "ShapeExtend_Explorer.hxx".}
proc dispatchList*(this: ShapeExtendExplorer;
                  list: Handle[TopToolsHSequenceOfShape];
                  vertices: var Handle[TopToolsHSequenceOfShape];
                  edges: var Handle[TopToolsHSequenceOfShape];
                  wires: var Handle[TopToolsHSequenceOfShape];
                  faces: var Handle[TopToolsHSequenceOfShape];
                  shells: var Handle[TopToolsHSequenceOfShape];
                  solids: var Handle[TopToolsHSequenceOfShape];
                  compsols: var Handle[TopToolsHSequenceOfShape];
                  compounds: var Handle[TopToolsHSequenceOfShape]) {.noSideEffect,
    importcpp: "DispatchList", header: "ShapeExtend_Explorer.hxx".}

