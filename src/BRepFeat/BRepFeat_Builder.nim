##  Created on: 2012-06-01
##  Created by: Eugeny MALTCHIKOV
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
discard "forward decl of TopoDS_Face"
type
  BRepFeatBuilder* {.importcpp: "BRepFeat_Builder", header: "BRepFeat_Builder.hxx",
                    bycopy.} = object of BOPAlgoBOP ## ! Prepares builder of local operation.


proc `new`*(this: var BRepFeatBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_Builder::operator new", header: "BRepFeat_Builder.hxx".}
proc `delete`*(this: var BRepFeatBuilder; theAddress: pointer) {.
    importcpp: "BRepFeat_Builder::operator delete", header: "BRepFeat_Builder.hxx".}
proc `new[]`*(this: var BRepFeatBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_Builder::operator new[]", header: "BRepFeat_Builder.hxx".}
proc `delete[]`*(this: var BRepFeatBuilder; theAddress: pointer) {.
    importcpp: "BRepFeat_Builder::operator delete[]",
    header: "BRepFeat_Builder.hxx".}
proc `new`*(this: var BRepFeatBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_Builder::operator new", header: "BRepFeat_Builder.hxx".}
proc `delete`*(this: var BRepFeatBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_Builder::operator delete", header: "BRepFeat_Builder.hxx".}
proc constructBRepFeatBuilder*(): BRepFeatBuilder {.constructor,
    importcpp: "BRepFeat_Builder(@)", header: "BRepFeat_Builder.hxx".}
proc destroyBRepFeatBuilder*(this: var BRepFeatBuilder) {.
    importcpp: "#.~BRepFeat_Builder()", header: "BRepFeat_Builder.hxx".}
proc clear*(this: var BRepFeatBuilder) {.importcpp: "Clear",
                                     header: "BRepFeat_Builder.hxx".}
proc init*(this: var BRepFeatBuilder; theShape: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepFeat_Builder.hxx".}
proc init*(this: var BRepFeatBuilder; theShape: TopoDS_Shape; theTool: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepFeat_Builder.hxx".}
proc setOperation*(this: var BRepFeatBuilder; theFuse: int) {.
    importcpp: "SetOperation", header: "BRepFeat_Builder.hxx".}
proc setOperation*(this: var BRepFeatBuilder; theFuse: int; theFlag: StandardBoolean) {.
    importcpp: "SetOperation", header: "BRepFeat_Builder.hxx".}
proc partsOfTool*(this: var BRepFeatBuilder; theLT: var TopToolsListOfShape) {.
    importcpp: "PartsOfTool", header: "BRepFeat_Builder.hxx".}
proc keepParts*(this: var BRepFeatBuilder; theIm: TopToolsListOfShape) {.
    importcpp: "KeepParts", header: "BRepFeat_Builder.hxx".}
proc keepPart*(this: var BRepFeatBuilder; theS: TopoDS_Shape) {.importcpp: "KeepPart",
    header: "BRepFeat_Builder.hxx".}
proc performResult*(this: var BRepFeatBuilder) {.importcpp: "PerformResult",
    header: "BRepFeat_Builder.hxx".}
proc rebuildFaces*(this: var BRepFeatBuilder) {.importcpp: "RebuildFaces",
    header: "BRepFeat_Builder.hxx".}
proc rebuildEdge*(this: var BRepFeatBuilder; theE: TopoDS_Shape; theF: TopoDS_Face;
                 theME: TopToolsMapOfShape; aLEIm: var TopToolsListOfShape) {.
    importcpp: "RebuildEdge", header: "BRepFeat_Builder.hxx".}
proc checkSolidImages*(this: var BRepFeatBuilder) {.importcpp: "CheckSolidImages",
    header: "BRepFeat_Builder.hxx".}
proc fillRemoved*(this: var BRepFeatBuilder) {.importcpp: "FillRemoved",
    header: "BRepFeat_Builder.hxx".}
proc fillRemoved*(this: var BRepFeatBuilder; theS: TopoDS_Shape;
                 theM: var TopToolsMapOfShape) {.importcpp: "FillRemoved",
    header: "BRepFeat_Builder.hxx".}