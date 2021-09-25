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
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatMakeRevol* {.importcpp: "BRepFeat_MakeRevol",
                      header: "BRepFeat_MakeRevol.hxx", bycopy.} = object of BRepFeatForm ##
                                                                                   ## !
                                                                                   ## initializes
                                                                                   ## the
                                                                                   ## revolved
                                                                                   ## shell
                                                                                   ## class.


proc constructBRepFeatMakeRevol*(): BRepFeatMakeRevol {.constructor,
    importcpp: "BRepFeat_MakeRevol(@)", header: "BRepFeat_MakeRevol.hxx".}
proc constructBRepFeatMakeRevol*(sbase: TopoDS_Shape; pbase: TopoDS_Shape;
                                skface: TopoDS_Face; axis: Ax1; fuse: int;
                                modify: bool): BRepFeatMakeRevol {.constructor,
    importcpp: "BRepFeat_MakeRevol(@)", header: "BRepFeat_MakeRevol.hxx".}
proc init*(this: var BRepFeatMakeRevol; sbase: TopoDS_Shape; pbase: TopoDS_Shape;
          skface: TopoDS_Face; axis: Ax1; fuse: int; modify: bool) {.importcpp: "Init",
    header: "BRepFeat_MakeRevol.hxx".}
proc add*(this: var BRepFeatMakeRevol; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeRevol.hxx".}
proc perform*(this: var BRepFeatMakeRevol; angle: float) {.importcpp: "Perform",
    header: "BRepFeat_MakeRevol.hxx".}
proc perform*(this: var BRepFeatMakeRevol; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeRevol.hxx".}
proc perform*(this: var BRepFeatMakeRevol; `from`: TopoDS_Shape; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeRevol.hxx".}
proc performThruAll*(this: var BRepFeatMakeRevol) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakeRevol.hxx".}
proc performUntilAngle*(this: var BRepFeatMakeRevol; until: TopoDS_Shape; angle: float) {.
    importcpp: "PerformUntilAngle", header: "BRepFeat_MakeRevol.hxx".}
proc curves*(this: var BRepFeatMakeRevol; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakeRevol.hxx".}
proc barycCurve*(this: var BRepFeatMakeRevol): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakeRevol.hxx".}
