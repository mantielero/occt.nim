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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopoDS/TopoDS_Wire,
  ../TColGeom/TColGeom_SequenceOfCurve, BRepFeat_Form,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
type
  BRepFeat_MakePipe* {.importcpp: "BRepFeat_MakePipe",
                      header: "BRepFeat_MakePipe.hxx", bycopy.} = object of BRepFeat_Form ##
                                                                                   ## !
                                                                                   ## initializes
                                                                                   ## the
                                                                                   ## pipe
                                                                                   ## class.


proc constructBRepFeat_MakePipe*(): BRepFeat_MakePipe {.constructor,
    importcpp: "BRepFeat_MakePipe(@)", header: "BRepFeat_MakePipe.hxx".}
proc constructBRepFeat_MakePipe*(Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
                                Skface: TopoDS_Face; Spine: TopoDS_Wire;
                                Fuse: Standard_Integer; Modify: Standard_Boolean): BRepFeat_MakePipe {.
    constructor, importcpp: "BRepFeat_MakePipe(@)", header: "BRepFeat_MakePipe.hxx".}
proc Init*(this: var BRepFeat_MakePipe; Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
          Skface: TopoDS_Face; Spine: TopoDS_Wire; Fuse: Standard_Integer;
          Modify: Standard_Boolean) {.importcpp: "Init",
                                    header: "BRepFeat_MakePipe.hxx".}
proc Add*(this: var BRepFeat_MakePipe; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakePipe.hxx".}
proc Perform*(this: var BRepFeat_MakePipe) {.importcpp: "Perform",
    header: "BRepFeat_MakePipe.hxx".}
proc Perform*(this: var BRepFeat_MakePipe; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePipe.hxx".}
proc Perform*(this: var BRepFeat_MakePipe; From: TopoDS_Shape; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePipe.hxx".}
proc Curves*(this: var BRepFeat_MakePipe; S: var TColGeom_SequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakePipe.hxx".}
proc BarycCurve*(this: var BRepFeat_MakePipe): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakePipe.hxx".}