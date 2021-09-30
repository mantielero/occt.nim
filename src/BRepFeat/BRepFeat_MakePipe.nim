##  Created on: 1996-09-03
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
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatMakePipe* {.importcpp: "BRepFeat_MakePipe",
                     header: "BRepFeat_MakePipe.hxx", bycopy.} = object of BRepFeatForm


proc `new`*(this: var BRepFeatMakePipe; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakePipe::operator new", header: "BRepFeat_MakePipe.hxx".}
proc `delete`*(this: var BRepFeatMakePipe; theAddress: pointer) {.
    importcpp: "BRepFeat_MakePipe::operator delete",
    header: "BRepFeat_MakePipe.hxx".}
proc `new[]`*(this: var BRepFeatMakePipe; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakePipe::operator new[]",
    header: "BRepFeat_MakePipe.hxx".}
proc `delete[]`*(this: var BRepFeatMakePipe; theAddress: pointer) {.
    importcpp: "BRepFeat_MakePipe::operator delete[]",
    header: "BRepFeat_MakePipe.hxx".}
proc `new`*(this: var BRepFeatMakePipe; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_MakePipe::operator new", header: "BRepFeat_MakePipe.hxx".}
proc `delete`*(this: var BRepFeatMakePipe; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_MakePipe::operator delete",
    header: "BRepFeat_MakePipe.hxx".}
proc constructBRepFeatMakePipe*(): BRepFeatMakePipe {.constructor,
    importcpp: "BRepFeat_MakePipe(@)", header: "BRepFeat_MakePipe.hxx".}
proc constructBRepFeatMakePipe*(sbase: TopoDS_Shape; pbase: TopoDS_Shape;
                               skface: TopoDS_Face; spine: TopoDS_Wire; fuse: int;
                               modify: StandardBoolean): BRepFeatMakePipe {.
    constructor, importcpp: "BRepFeat_MakePipe(@)", header: "BRepFeat_MakePipe.hxx".}
proc init*(this: var BRepFeatMakePipe; sbase: TopoDS_Shape; pbase: TopoDS_Shape;
          skface: TopoDS_Face; spine: TopoDS_Wire; fuse: int; modify: StandardBoolean) {.
    importcpp: "Init", header: "BRepFeat_MakePipe.hxx".}
proc add*(this: var BRepFeatMakePipe; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakePipe.hxx".}
proc perform*(this: var BRepFeatMakePipe) {.importcpp: "Perform",
                                        header: "BRepFeat_MakePipe.hxx".}
proc perform*(this: var BRepFeatMakePipe; until: TopoDS_Shape) {.importcpp: "Perform",
    header: "BRepFeat_MakePipe.hxx".}
proc perform*(this: var BRepFeatMakePipe; `from`: TopoDS_Shape; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePipe.hxx".}
proc curves*(this: var BRepFeatMakePipe; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakePipe.hxx".}
proc barycCurve*(this: var BRepFeatMakePipe): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakePipe.hxx".}