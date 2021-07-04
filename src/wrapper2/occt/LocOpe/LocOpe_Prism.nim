##  Created on: 1997-02-24
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../gp/gp_Vec,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, ../TColGeom/TColGeom_SequenceOfCurve

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
type
  LocOpe_Prism* {.importcpp: "LocOpe_Prism", header: "LocOpe_Prism.hxx", bycopy.} = object


proc constructLocOpe_Prism*(): LocOpe_Prism {.constructor,
    importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc constructLocOpe_Prism*(Base: TopoDS_Shape; V: gp_Vec): LocOpe_Prism {.
    constructor, importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc constructLocOpe_Prism*(Base: TopoDS_Shape; V: gp_Vec; Vectra: gp_Vec): LocOpe_Prism {.
    constructor, importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc Perform*(this: var LocOpe_Prism; Base: TopoDS_Shape; V: gp_Vec) {.
    importcpp: "Perform", header: "LocOpe_Prism.hxx".}
proc Perform*(this: var LocOpe_Prism; Base: TopoDS_Shape; V: gp_Vec; Vtra: gp_Vec) {.
    importcpp: "Perform", header: "LocOpe_Prism.hxx".}
proc FirstShape*(this: LocOpe_Prism): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Prism.hxx".}
proc LastShape*(this: LocOpe_Prism): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Prism.hxx".}
proc Shape*(this: LocOpe_Prism): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Prism.hxx".}
proc Shapes*(this: LocOpe_Prism; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Shapes", header: "LocOpe_Prism.hxx".}
proc Curves*(this: LocOpe_Prism; SCurves: var TColGeom_SequenceOfCurve) {.
    noSideEffect, importcpp: "Curves", header: "LocOpe_Prism.hxx".}
proc BarycCurve*(this: LocOpe_Prism): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_Prism.hxx".}