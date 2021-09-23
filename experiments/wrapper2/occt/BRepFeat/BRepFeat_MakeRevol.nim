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
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../gp/gp_Ax1,
  ../TColGeom/TColGeom_SequenceOfCurve, BRepFeat_StatusError, BRepFeat_Form,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Edge"
type
  BRepFeat_MakeRevol* {.importcpp: "BRepFeat_MakeRevol",
                       header: "BRepFeat_MakeRevol.hxx", bycopy.} = object of BRepFeat_Form ##
                                                                                     ## !
                                                                                     ## initializes
                                                                                     ## the
                                                                                     ## revolved
                                                                                     ## shell
                                                                                     ## class.


proc constructBRepFeat_MakeRevol*(): BRepFeat_MakeRevol {.constructor,
    importcpp: "BRepFeat_MakeRevol(@)", header: "BRepFeat_MakeRevol.hxx".}
proc constructBRepFeat_MakeRevol*(Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
                                 Skface: TopoDS_Face; Axis: gp_Ax1;
                                 Fuse: Standard_Integer; Modify: Standard_Boolean): BRepFeat_MakeRevol {.
    constructor, importcpp: "BRepFeat_MakeRevol(@)",
    header: "BRepFeat_MakeRevol.hxx".}
proc Init*(this: var BRepFeat_MakeRevol; Sbase: TopoDS_Shape; Pbase: TopoDS_Shape;
          Skface: TopoDS_Face; Axis: gp_Ax1; Fuse: Standard_Integer;
          Modify: Standard_Boolean) {.importcpp: "Init",
                                    header: "BRepFeat_MakeRevol.hxx".}
proc Add*(this: var BRepFeat_MakeRevol; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeRevol.hxx".}
proc Perform*(this: var BRepFeat_MakeRevol; Angle: Standard_Real) {.
    importcpp: "Perform", header: "BRepFeat_MakeRevol.hxx".}
proc Perform*(this: var BRepFeat_MakeRevol; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeRevol.hxx".}
proc Perform*(this: var BRepFeat_MakeRevol; From: TopoDS_Shape; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeRevol.hxx".}
proc PerformThruAll*(this: var BRepFeat_MakeRevol) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakeRevol.hxx".}
proc PerformUntilAngle*(this: var BRepFeat_MakeRevol; Until: TopoDS_Shape;
                       Angle: Standard_Real) {.importcpp: "PerformUntilAngle",
    header: "BRepFeat_MakeRevol.hxx".}
proc Curves*(this: var BRepFeat_MakeRevol; S: var TColGeom_SequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakeRevol.hxx".}
proc BarycCurve*(this: var BRepFeat_MakeRevol): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakeRevol.hxx".}