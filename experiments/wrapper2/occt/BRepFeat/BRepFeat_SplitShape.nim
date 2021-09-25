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
  BRepFeatSplitShape* {.importcpp: "BRepFeat_SplitShape",
                       header: "BRepFeat_SplitShape.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructBRepFeatSplitShape*(): BRepFeatSplitShape {.constructor,
    importcpp: "BRepFeat_SplitShape(@)", header: "BRepFeat_SplitShape.hxx".}
proc constructBRepFeatSplitShape*(s: TopoDS_Shape): BRepFeatSplitShape {.
    constructor, importcpp: "BRepFeat_SplitShape(@)",
    header: "BRepFeat_SplitShape.hxx".}
proc add*(this: var BRepFeatSplitShape; theEdges: TopToolsSequenceOfShape): bool {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc init*(this: var BRepFeatSplitShape; s: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepFeat_SplitShape.hxx".}
proc setCheckInterior*(this: var BRepFeatSplitShape; toCheckInterior: bool) {.
    importcpp: "SetCheckInterior", header: "BRepFeat_SplitShape.hxx".}
proc add*(this: var BRepFeatSplitShape; w: TopoDS_Wire; f: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc add*(this: var BRepFeatSplitShape; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc add*(this: var BRepFeatSplitShape; comp: TopoDS_Compound; f: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc add*(this: var BRepFeatSplitShape; e: TopoDS_Edge; eOn: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFeat_SplitShape.hxx".}
proc directLeft*(this: BRepFeatSplitShape): TopToolsListOfShape {.noSideEffect,
    importcpp: "DirectLeft", header: "BRepFeat_SplitShape.hxx".}
proc left*(this: BRepFeatSplitShape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Left", header: "BRepFeat_SplitShape.hxx".}
proc right*(this: BRepFeatSplitShape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Right", header: "BRepFeat_SplitShape.hxx".}
proc build*(this: var BRepFeatSplitShape) {.importcpp: "Build",
                                        header: "BRepFeat_SplitShape.hxx".}
proc isDeleted*(this: var BRepFeatSplitShape; s: TopoDS_Shape): bool {.
    importcpp: "IsDeleted", header: "BRepFeat_SplitShape.hxx".}
proc modified*(this: var BRepFeatSplitShape; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFeat_SplitShape.hxx".}
