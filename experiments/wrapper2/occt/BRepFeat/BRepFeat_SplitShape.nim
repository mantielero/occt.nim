##  Created on: 1995-09-04
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../LocOpe/LocOpe_Spliter,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_SequenceOfShape

discard "forward decl of LocOpe_WiresOnShape"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Compound"
type
  BRepFeat_SplitShape* {.importcpp: "BRepFeat_SplitShape",
                        header: "BRepFeat_SplitShape.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructBRepFeat_SplitShape*(): BRepFeat_SplitShape {.constructor,
    importcpp: "BRepFeat_SplitShape(@)", header: "BRepFeat_SplitShape.hxx".}
proc constructBRepFeat_SplitShape*(S: TopoDS_Shape): BRepFeat_SplitShape {.
    constructor, importcpp: "BRepFeat_SplitShape(@)",
    header: "BRepFeat_SplitShape.hxx".}
proc Add*(this: var BRepFeat_SplitShape; theEdges: TopTools_SequenceOfShape): Standard_Boolean {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc Init*(this: var BRepFeat_SplitShape; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepFeat_SplitShape.hxx".}
proc SetCheckInterior*(this: var BRepFeat_SplitShape;
                      ToCheckInterior: Standard_Boolean) {.
    importcpp: "SetCheckInterior", header: "BRepFeat_SplitShape.hxx".}
proc Add*(this: var BRepFeat_SplitShape; W: TopoDS_Wire; F: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc Add*(this: var BRepFeat_SplitShape; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc Add*(this: var BRepFeat_SplitShape; Comp: TopoDS_Compound; F: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc Add*(this: var BRepFeat_SplitShape; E: TopoDS_Edge; EOn: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc DirectLeft*(this: BRepFeat_SplitShape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "DirectLeft", header: "BRepFeat_SplitShape.hxx".}
proc Left*(this: BRepFeat_SplitShape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Left", header: "BRepFeat_SplitShape.hxx".}
proc Right*(this: BRepFeat_SplitShape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Right", header: "BRepFeat_SplitShape.hxx".}
proc Build*(this: var BRepFeat_SplitShape) {.importcpp: "Build",
    header: "BRepFeat_SplitShape.hxx".}
proc IsDeleted*(this: var BRepFeat_SplitShape; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFeat_SplitShape.hxx".}
proc Modified*(this: var BRepFeat_SplitShape; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFeat_SplitShape.hxx".}