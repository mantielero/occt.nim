##  Created on: 1996-02-13
##  Created by: Jacques GOUSSARD
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
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatMakePrism* {.importcpp: "BRepFeat_MakePrism",
                      header: "BRepFeat_MakePrism.hxx", bycopy.} = object of BRepFeatForm ##
                                                                                   ## !
                                                                                   ## Builds
                                                                                   ## a
                                                                                   ## prism
                                                                                   ## by
                                                                                   ## projecting
                                                                                   ## a
                                                                                   ##
                                                                                   ## !
                                                                                   ## wire
                                                                                   ## along
                                                                                   ## the
                                                                                   ## face
                                                                                   ## of
                                                                                   ## a
                                                                                   ## shape.
                                                                                   ## Initializes
                                                                                   ## the
                                                                                   ## prism
                                                                                   ## class.


proc constructBRepFeatMakePrism*(): BRepFeatMakePrism {.constructor,
    importcpp: "BRepFeat_MakePrism(@)", header: "BRepFeat_MakePrism.hxx".}
proc constructBRepFeatMakePrism*(sbase: TopoDS_Shape; pbase: TopoDS_Shape;
                                skface: TopoDS_Face; direction: Dir; fuse: int;
                                modify: bool): BRepFeatMakePrism {.constructor,
    importcpp: "BRepFeat_MakePrism(@)", header: "BRepFeat_MakePrism.hxx".}
proc init*(this: var BRepFeatMakePrism; sbase: TopoDS_Shape; pbase: TopoDS_Shape;
          skface: TopoDS_Face; direction: Dir; fuse: int; modify: bool) {.
    importcpp: "Init", header: "BRepFeat_MakePrism.hxx".}
proc add*(this: var BRepFeatMakePrism; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakePrism.hxx".}
proc perform*(this: var BRepFeatMakePrism; length: float) {.importcpp: "Perform",
    header: "BRepFeat_MakePrism.hxx".}
proc perform*(this: var BRepFeatMakePrism; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePrism.hxx".}
proc perform*(this: var BRepFeatMakePrism; `from`: TopoDS_Shape; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePrism.hxx".}
proc performUntilEnd*(this: var BRepFeatMakePrism) {.importcpp: "PerformUntilEnd",
    header: "BRepFeat_MakePrism.hxx".}
proc performFromEnd*(this: var BRepFeatMakePrism; fUntil: TopoDS_Shape) {.
    importcpp: "PerformFromEnd", header: "BRepFeat_MakePrism.hxx".}
proc performThruAll*(this: var BRepFeatMakePrism) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakePrism.hxx".}
proc performUntilHeight*(this: var BRepFeatMakePrism; until: TopoDS_Shape;
                        length: float) {.importcpp: "PerformUntilHeight",
                                       header: "BRepFeat_MakePrism.hxx".}
proc curves*(this: var BRepFeatMakePrism; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakePrism.hxx".}
proc barycCurve*(this: var BRepFeatMakePrism): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakePrism.hxx".}
