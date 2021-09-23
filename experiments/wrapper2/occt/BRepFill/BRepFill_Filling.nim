##  Created on: 1998-08-26
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomPlate/GeomPlate_BuildPlateSurface,
  BRepFill_SequenceOfEdgeFaceAndOrder, BRepFill_SequenceOfFaceAndOrder,
  ../GeomPlate/GeomPlate_SequenceOfPointConstraint,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopTools/TopTools_ListOfShape,
  ../TopoDS/TopoDS_Face, ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../TopTools/TopTools_SequenceOfShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
type
  BRepFill_Filling* {.importcpp: "BRepFill_Filling",
                     header: "BRepFill_Filling.hxx", bycopy.} = object ## ! Constructor
                                                                  ## ! Adds constraints to builder


proc constructBRepFill_Filling*(Degree: Standard_Integer = 3;
                               NbPtsOnCur: Standard_Integer = 15;
                               NbIter: Standard_Integer = 2;
                               Anisotropie: Standard_Boolean = Standard_False;
                               Tol2d: Standard_Real = 0.00001;
                               Tol3d: Standard_Real = 0.0001;
                               TolAng: Standard_Real = 0.01;
                               TolCurv: Standard_Real = 0.1;
                               MaxDeg: Standard_Integer = 8;
                               MaxSegments: Standard_Integer = 9): BRepFill_Filling {.
    constructor, importcpp: "BRepFill_Filling(@)", header: "BRepFill_Filling.hxx".}
proc SetConstrParam*(this: var BRepFill_Filling; Tol2d: Standard_Real = 0.00001;
                    Tol3d: Standard_Real = 0.0001; TolAng: Standard_Real = 0.01;
                    TolCurv: Standard_Real = 0.1) {.importcpp: "SetConstrParam",
    header: "BRepFill_Filling.hxx".}
proc SetResolParam*(this: var BRepFill_Filling; Degree: Standard_Integer = 3;
                   NbPtsOnCur: Standard_Integer = 15; NbIter: Standard_Integer = 2;
                   Anisotropie: Standard_Boolean = Standard_False) {.
    importcpp: "SetResolParam", header: "BRepFill_Filling.hxx".}
proc SetApproxParam*(this: var BRepFill_Filling; MaxDeg: Standard_Integer = 8;
                    MaxSegments: Standard_Integer = 9) {.
    importcpp: "SetApproxParam", header: "BRepFill_Filling.hxx".}
proc LoadInitSurface*(this: var BRepFill_Filling; aFace: TopoDS_Face) {.
    importcpp: "LoadInitSurface", header: "BRepFill_Filling.hxx".}
proc Add*(this: var BRepFill_Filling; anEdge: TopoDS_Edge; Order: GeomAbs_Shape;
         IsBound: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc Add*(this: var BRepFill_Filling; anEdge: TopoDS_Edge; Support: TopoDS_Face;
         Order: GeomAbs_Shape; IsBound: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc Add*(this: var BRepFill_Filling; Support: TopoDS_Face; Order: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc Add*(this: var BRepFill_Filling; Point: gp_Pnt): Standard_Integer {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc Add*(this: var BRepFill_Filling; U: Standard_Real; V: Standard_Real;
         Support: TopoDS_Face; Order: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc Build*(this: var BRepFill_Filling) {.importcpp: "Build",
                                      header: "BRepFill_Filling.hxx".}
proc IsDone*(this: BRepFill_Filling): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Filling.hxx".}
proc Face*(this: BRepFill_Filling): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepFill_Filling.hxx".}
proc Generated*(this: var BRepFill_Filling; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFill_Filling.hxx".}
proc G0Error*(this: BRepFill_Filling): Standard_Real {.noSideEffect,
    importcpp: "G0Error", header: "BRepFill_Filling.hxx".}
proc G1Error*(this: BRepFill_Filling): Standard_Real {.noSideEffect,
    importcpp: "G1Error", header: "BRepFill_Filling.hxx".}
proc G2Error*(this: BRepFill_Filling): Standard_Real {.noSideEffect,
    importcpp: "G2Error", header: "BRepFill_Filling.hxx".}
proc G0Error*(this: var BRepFill_Filling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G0Error", header: "BRepFill_Filling.hxx".}
proc G1Error*(this: var BRepFill_Filling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G1Error", header: "BRepFill_Filling.hxx".}
proc G2Error*(this: var BRepFill_Filling; Index: Standard_Integer): Standard_Real {.
    importcpp: "G2Error", header: "BRepFill_Filling.hxx".}