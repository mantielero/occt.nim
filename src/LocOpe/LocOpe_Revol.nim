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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax1"
discard "forward decl of Geom_Curve"
type
  LocOpeRevol* {.importcpp: "LocOpe_Revol", header: "LocOpe_Revol.hxx", bycopy.} = object


proc constructLocOpeRevol*(): LocOpeRevol {.constructor,
    importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc constructLocOpeRevol*(base: TopoDS_Shape; axis: Ax1; angle: cfloat;
                          angledec: cfloat): LocOpeRevol {.constructor,
    importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc constructLocOpeRevol*(base: TopoDS_Shape; axis: Ax1; angle: cfloat): LocOpeRevol {.
    constructor, importcpp: "LocOpe_Revol(@)", header: "LocOpe_Revol.hxx".}
proc perform*(this: var LocOpeRevol; base: TopoDS_Shape; axis: Ax1; angle: cfloat;
             angledec: cfloat) {.importcpp: "Perform", header: "LocOpe_Revol.hxx".}
proc perform*(this: var LocOpeRevol; base: TopoDS_Shape; axis: Ax1; angle: cfloat) {.
    importcpp: "Perform", header: "LocOpe_Revol.hxx".}
proc firstShape*(this: LocOpeRevol): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Revol.hxx".}
proc lastShape*(this: LocOpeRevol): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Revol.hxx".}
proc shape*(this: LocOpeRevol): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Revol.hxx".}
proc shapes*(this: LocOpeRevol; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "LocOpe_Revol.hxx".}
proc curves*(this: LocOpeRevol; sCurves: var TColGeomSequenceOfCurve) {.noSideEffect,
    importcpp: "Curves", header: "LocOpe_Revol.hxx".}
proc barycCurve*(this: LocOpeRevol): Handle[GeomCurve] {.noSideEffect,
    importcpp: "BarycCurve", header: "LocOpe_Revol.hxx".}

























