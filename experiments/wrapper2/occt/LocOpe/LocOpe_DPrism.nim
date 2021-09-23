##  Created on: 1996-09-04
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
  ../Standard/Standard_Handle, ../BRepFill/BRepFill_Evolved,
  ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Wire,
  ../TopoDS/TopoDS_Edge, ../Standard/Standard_Real,
  ../TColGeom/TColGeom_SequenceOfCurve,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
type
  LocOpe_DPrism* {.importcpp: "LocOpe_DPrism", header: "LocOpe_DPrism.hxx", bycopy.} = object


proc constructLocOpe_DPrism*(Spine: TopoDS_Face; Height1: Standard_Real;
                            Height2: Standard_Real; Angle: Standard_Real): LocOpe_DPrism {.
    constructor, importcpp: "LocOpe_DPrism(@)", header: "LocOpe_DPrism.hxx".}
proc constructLocOpe_DPrism*(Spine: TopoDS_Face; Height: Standard_Real;
                            Angle: Standard_Real): LocOpe_DPrism {.constructor,
    importcpp: "LocOpe_DPrism(@)", header: "LocOpe_DPrism.hxx".}
proc IsDone*(this: LocOpe_DPrism): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_DPrism.hxx".}
proc Spine*(this: LocOpe_DPrism): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "LocOpe_DPrism.hxx".}
proc Profile*(this: LocOpe_DPrism): TopoDS_Shape {.noSideEffect,
    importcpp: "Profile", header: "LocOpe_DPrism.hxx".}
proc FirstShape*(this: LocOpe_DPrism): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_DPrism.hxx".}
proc LastShape*(this: LocOpe_DPrism): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_DPrism.hxx".}
proc Shape*(this: LocOpe_DPrism): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_DPrism.hxx".}
proc Shapes*(this: LocOpe_DPrism; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Shapes", header: "LocOpe_DPrism.hxx".}
proc Curves*(this: LocOpe_DPrism; SCurves: var TColGeom_SequenceOfCurve) {.
    noSideEffect, importcpp: "Curves", header: "LocOpe_DPrism.hxx".}
proc BarycCurve*(this: LocOpe_DPrism): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_DPrism.hxx".}