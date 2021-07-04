##  Created on: 1997-02-24
##  Created by: Olga PILLOT
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../gp/gp_Ax1,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, ../TColGeom/TColGeom_SequenceOfCurve

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax1"
discard "forward decl of Geom_Curve"
type
  LocOpe_Revol* {.importcpp: "LocOpe_Revol", header: "LocOpe_Revol.hxx", bycopy.} = object


proc constructLocOpe_Revol*(): LocOpe_Revol {.constructor,
    importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc constructLocOpe_Revol*(Base: TopoDS_Shape; Axis: gp_Ax1; Angle: Standard_Real;
                           angledec: Standard_Real): LocOpe_Revol {.constructor,
    importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc constructLocOpe_Revol*(Base: TopoDS_Shape; Axis: gp_Ax1; Angle: Standard_Real): LocOpe_Revol {.
    constructor, importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc Perform*(this: var LocOpe_Revol; Base: TopoDS_Shape; Axis: gp_Ax1;
             Angle: Standard_Real; angledec: Standard_Real) {.importcpp: "Perform",
    header: "LocOpe_Revol.hxx".}
proc Perform*(this: var LocOpe_Revol; Base: TopoDS_Shape; Axis: gp_Ax1;
             Angle: Standard_Real) {.importcpp: "Perform",
                                   header: "LocOpe_Revol.hxx".}
proc FirstShape*(this: LocOpe_Revol): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Revol.hxx".}
proc LastShape*(this: LocOpe_Revol): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Revol.hxx".}
proc Shape*(this: LocOpe_Revol): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Revol.hxx".}
proc Shapes*(this: LocOpe_Revol; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Shapes", header: "LocOpe_Revol.hxx".}
proc Curves*(this: LocOpe_Revol; SCurves: var TColGeom_SequenceOfCurve) {.
    noSideEffect, importcpp: "Curves", header: "LocOpe_Revol.hxx".}
proc BarycCurve*(this: LocOpe_Revol): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_Revol.hxx".}