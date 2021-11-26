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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
type
  LocOpeDPrism* {.importcpp: "LocOpe_DPrism", header: "LocOpe_DPrism.hxx", bycopy.} = object


proc constructLocOpeDPrism*(spine: TopoDS_Face; height1: cfloat; height2: cfloat;
                           angle: cfloat): LocOpeDPrism {.constructor,
    importcpp: "LocOpe_DPrism(@)", header: "LocOpe_DPrism.hxx".}
proc constructLocOpeDPrism*(spine: TopoDS_Face; height: cfloat; angle: cfloat): LocOpeDPrism {.
    constructor, importcpp: "LocOpe_DPrism(@)", header: "LocOpe_DPrism.hxx".}
proc isDone*(this: LocOpeDPrism): bool {.noSideEffect, importcpp: "IsDone",
                                     header: "LocOpe_DPrism.hxx".}
proc spine*(this: LocOpeDPrism): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "LocOpe_DPrism.hxx".}
proc profile*(this: LocOpeDPrism): TopoDS_Shape {.noSideEffect, importcpp: "Profile",
    header: "LocOpe_DPrism.hxx".}
proc firstShape*(this: LocOpeDPrism): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_DPrism.hxx".}
proc lastShape*(this: LocOpeDPrism): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_DPrism.hxx".}
proc shape*(this: LocOpeDPrism): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_DPrism.hxx".}
proc shapes*(this: LocOpeDPrism; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "LocOpe_DPrism.hxx".}
proc curves*(this: LocOpeDPrism; sCurves: var TColGeomSequenceOfCurve) {.noSideEffect,
    importcpp: "Curves", header: "LocOpe_DPrism.hxx".}
proc barycCurve*(this: LocOpeDPrism): Handle[GeomCurve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_DPrism.hxx".}

























