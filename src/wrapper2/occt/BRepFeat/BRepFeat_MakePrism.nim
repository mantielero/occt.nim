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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../gp/gp_Dir,
  ../TColGeom/TColGeom_SequenceOfCurve, BRepFeat_StatusError, BRepFeat_Form,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Edge"
type
  BRepFeat_MakePrism* {.importcpp: "BRepFeat_MakePrism",
                       header: "BRepFeat_MakePrism.hxx", bycopy.} = object of BRepFeat_Form ##
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


proc constructBRepFeat_MakePrism*(): BRepFeat_MakePrism {.constructor,
    importcpp: "BRepFeat_MakePrism(@)", header: "BRepFeat_MakePrism.hxx".}
proc constructBRepFeat_MakePrism*(Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
                                 Skface: TopoDS_Face; Direction: gp_Dir;
                                 Fuse: Standard_Integer; Modify: Standard_Boolean): BRepFeat_MakePrism {.
    constructor, importcpp: "BRepFeat_MakePrism(@)",
    header: "BRepFeat_MakePrism.hxx".}
proc Init*(this: var BRepFeat_MakePrism; Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
          Skface: TopoDS_Face; Direction: gp_Dir; Fuse: Standard_Integer;
          Modify: Standard_Boolean) {.importcpp: "Init",
                                    header: "BRepFeat_MakePrism.hxx".}
proc Add*(this: var BRepFeat_MakePrism; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakePrism.hxx".}
proc Perform*(this: var BRepFeat_MakePrism; Length: Standard_Real) {.
    importcpp: "Perform", header: "BRepFeat_MakePrism.hxx".}
proc Perform*(this: var BRepFeat_MakePrism; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePrism.hxx".}
proc Perform*(this: var BRepFeat_MakePrism; From: TopoDS_Shape; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakePrism.hxx".}
proc PerformUntilEnd*(this: var BRepFeat_MakePrism) {.importcpp: "PerformUntilEnd",
    header: "BRepFeat_MakePrism.hxx".}
proc PerformFromEnd*(this: var BRepFeat_MakePrism; FUntil: TopoDS_Shape) {.
    importcpp: "PerformFromEnd", header: "BRepFeat_MakePrism.hxx".}
proc PerformThruAll*(this: var BRepFeat_MakePrism) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakePrism.hxx".}
proc PerformUntilHeight*(this: var BRepFeat_MakePrism; Until: TopoDS_Shape;
                        Length: Standard_Real) {.importcpp: "PerformUntilHeight",
    header: "BRepFeat_MakePrism.hxx".}
proc Curves*(this: var BRepFeat_MakePrism; S: var TColGeom_SequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakePrism.hxx".}
proc BarycCurve*(this: var BRepFeat_MakePrism): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakePrism.hxx".}