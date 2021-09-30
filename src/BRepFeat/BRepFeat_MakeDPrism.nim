##  Created on: 1996-09-03
##  Created by: Olga PILLOT
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

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatMakeDPrism* {.importcpp: "BRepFeat_MakeDPrism",
                       header: "BRepFeat_MakeDPrism.hxx", bycopy.} = object of BRepFeatForm


proc `new`*(this: var BRepFeatMakeDPrism; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeDPrism::operator new",
    header: "BRepFeat_MakeDPrism.hxx".}
proc `delete`*(this: var BRepFeatMakeDPrism; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeDPrism::operator delete",
    header: "BRepFeat_MakeDPrism.hxx".}
proc `new[]`*(this: var BRepFeatMakeDPrism; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeDPrism::operator new[]",
    header: "BRepFeat_MakeDPrism.hxx".}
proc `delete[]`*(this: var BRepFeatMakeDPrism; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeDPrism::operator delete[]",
    header: "BRepFeat_MakeDPrism.hxx".}
proc `new`*(this: var BRepFeatMakeDPrism; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_MakeDPrism::operator new",
    header: "BRepFeat_MakeDPrism.hxx".}
proc `delete`*(this: var BRepFeatMakeDPrism; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_MakeDPrism::operator delete",
    header: "BRepFeat_MakeDPrism.hxx".}
proc constructBRepFeatMakeDPrism*(sbase: TopoDS_Shape; pbase: TopoDS_Face;
                                 skface: TopoDS_Face; angle: StandardReal;
                                 fuse: int; modify: StandardBoolean): BRepFeatMakeDPrism {.
    constructor, importcpp: "BRepFeat_MakeDPrism(@)",
    header: "BRepFeat_MakeDPrism.hxx".}
proc constructBRepFeatMakeDPrism*(): BRepFeatMakeDPrism {.constructor,
    importcpp: "BRepFeat_MakeDPrism(@)", header: "BRepFeat_MakeDPrism.hxx".}
proc init*(this: var BRepFeatMakeDPrism; sbase: TopoDS_Shape; pbase: TopoDS_Face;
          skface: TopoDS_Face; angle: StandardReal; fuse: int; modify: StandardBoolean) {.
    importcpp: "Init", header: "BRepFeat_MakeDPrism.hxx".}
proc add*(this: var BRepFeatMakeDPrism; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; height: StandardReal) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; `from`: TopoDS_Shape; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc performUntilEnd*(this: var BRepFeatMakeDPrism) {.importcpp: "PerformUntilEnd",
    header: "BRepFeat_MakeDPrism.hxx".}
proc performFromEnd*(this: var BRepFeatMakeDPrism; fUntil: TopoDS_Shape) {.
    importcpp: "PerformFromEnd", header: "BRepFeat_MakeDPrism.hxx".}
proc performThruAll*(this: var BRepFeatMakeDPrism) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakeDPrism.hxx".}
proc performUntilHeight*(this: var BRepFeatMakeDPrism; until: TopoDS_Shape;
                        height: StandardReal) {.importcpp: "PerformUntilHeight",
    header: "BRepFeat_MakeDPrism.hxx".}
proc curves*(this: var BRepFeatMakeDPrism; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakeDPrism.hxx".}
proc barycCurve*(this: var BRepFeatMakeDPrism): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakeDPrism.hxx".}
proc bossEdges*(this: var BRepFeatMakeDPrism; sig: int) {.importcpp: "BossEdges",
    header: "BRepFeat_MakeDPrism.hxx".}
proc topEdges*(this: var BRepFeatMakeDPrism): TopToolsListOfShape {.
    importcpp: "TopEdges", header: "BRepFeat_MakeDPrism.hxx".}
proc latEdges*(this: var BRepFeatMakeDPrism): TopToolsListOfShape {.
    importcpp: "LatEdges", header: "BRepFeat_MakeDPrism.hxx".}