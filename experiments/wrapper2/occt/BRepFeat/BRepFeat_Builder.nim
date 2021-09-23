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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BOPAlgo/BOPAlgo_BOP,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_MapOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
type
  BRepFeat_Builder* {.importcpp: "BRepFeat_Builder",
                     header: "BRepFeat_Builder.hxx", bycopy.} = object of BOPAlgo_BOP ## !
                                                                               ## Prepares
                                                                               ## builder
                                                                               ## of
                                                                               ## local
                                                                               ## operation.


proc constructBRepFeat_Builder*(): BRepFeat_Builder {.constructor,
    importcpp: "BRepFeat_Builder(@)", header: "BRepFeat_Builder.hxx".}
proc destroyBRepFeat_Builder*(this: var BRepFeat_Builder) {.
    importcpp: "#.~BRepFeat_Builder()", header: "BRepFeat_Builder.hxx".}
proc Clear*(this: var BRepFeat_Builder) {.importcpp: "Clear",
                                      header: "BRepFeat_Builder.hxx".}
proc Init*(this: var BRepFeat_Builder; theShape: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepFeat_Builder.hxx".}
proc Init*(this: var BRepFeat_Builder; theShape: TopoDS_Shape; theTool: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepFeat_Builder.hxx".}
proc SetOperation*(this: var BRepFeat_Builder; theFuse: Standard_Integer) {.
    importcpp: "SetOperation", header: "BRepFeat_Builder.hxx".}
proc SetOperation*(this: var BRepFeat_Builder; theFuse: Standard_Integer;
                  theFlag: Standard_Boolean) {.importcpp: "SetOperation",
    header: "BRepFeat_Builder.hxx".}
proc PartsOfTool*(this: var BRepFeat_Builder; theLT: var TopTools_ListOfShape) {.
    importcpp: "PartsOfTool", header: "BRepFeat_Builder.hxx".}
proc KeepParts*(this: var BRepFeat_Builder; theIm: TopTools_ListOfShape) {.
    importcpp: "KeepParts", header: "BRepFeat_Builder.hxx".}
proc KeepPart*(this: var BRepFeat_Builder; theS: TopoDS_Shape) {.
    importcpp: "KeepPart", header: "BRepFeat_Builder.hxx".}
proc PerformResult*(this: var BRepFeat_Builder) {.importcpp: "PerformResult",
    header: "BRepFeat_Builder.hxx".}
proc RebuildFaces*(this: var BRepFeat_Builder) {.importcpp: "RebuildFaces",
    header: "BRepFeat_Builder.hxx".}
proc RebuildEdge*(this: var BRepFeat_Builder; theE: TopoDS_Shape; theF: TopoDS_Face;
                 theME: TopTools_MapOfShape; aLEIm: var TopTools_ListOfShape) {.
    importcpp: "RebuildEdge", header: "BRepFeat_Builder.hxx".}
proc CheckSolidImages*(this: var BRepFeat_Builder) {.importcpp: "CheckSolidImages",
    header: "BRepFeat_Builder.hxx".}
proc FillRemoved*(this: var BRepFeat_Builder) {.importcpp: "FillRemoved",
    header: "BRepFeat_Builder.hxx".}
proc FillRemoved*(this: var BRepFeat_Builder; theS: TopoDS_Shape;
                 theM: var TopTools_MapOfShape) {.importcpp: "FillRemoved",
    header: "BRepFeat_Builder.hxx".}