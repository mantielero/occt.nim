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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
type
  LocOpePrism* {.importcpp: "LocOpe_Prism", header: "LocOpe_Prism.hxx", bycopy.} = object


proc constructLocOpePrism*(): LocOpePrism {.constructor,
    importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc constructLocOpePrism*(base: TopoDS_Shape; v: Vec): LocOpePrism {.constructor,
    importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc constructLocOpePrism*(base: TopoDS_Shape; v: Vec; vectra: Vec): LocOpePrism {.
    constructor, importcpp: "LocOpe_Prism(@)", header: "LocOpe_Prism.hxx".}
proc perform*(this: var LocOpePrism; base: TopoDS_Shape; v: Vec) {.importcpp: "Perform",
    header: "LocOpe_Prism.hxx".}
proc perform*(this: var LocOpePrism; base: TopoDS_Shape; v: Vec; vtra: Vec) {.
    importcpp: "Perform", header: "LocOpe_Prism.hxx".}
proc firstShape*(this: LocOpePrism): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Prism.hxx".}
proc lastShape*(this: LocOpePrism): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Prism.hxx".}
proc shape*(this: LocOpePrism): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Prism.hxx".}
proc shapes*(this: LocOpePrism; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "LocOpe_Prism.hxx".}
proc curves*(this: LocOpePrism; sCurves: var TColGeomSequenceOfCurve) {.noSideEffect,
    importcpp: "Curves", header: "LocOpe_Prism.hxx".}
proc barycCurve*(this: LocOpePrism): Handle[GeomCurve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_Prism.hxx".}
