##  Created on: 1993-06-22
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax1"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
type
  BRepSweepRevol* {.importcpp: "BRepSweep_Revol", header: "BRepSweep_Revol.hxx",
                   bycopy.} = object ## ! Builds the Revol of meridian S axis A  and angle D. If
                                  ## ! C is true S is copied.
                                  ## ! builds the NumShape.


proc constructBRepSweepRevol*(s: TopoDS_Shape; a: Ax1; d: cfloat; c: bool = false): BRepSweepRevol {.
    constructor, importcpp: "BRepSweep_Revol(@)", header: "BRepSweep_Revol.hxx".}
proc constructBRepSweepRevol*(s: TopoDS_Shape; a: Ax1; c: bool = false): BRepSweepRevol {.
    constructor, importcpp: "BRepSweep_Revol(@)", header: "BRepSweep_Revol.hxx".}
proc shape*(this: var BRepSweepRevol): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepSweep_Revol.hxx".}
proc shape*(this: var BRepSweepRevol; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_Revol.hxx".}
proc firstShape*(this: var BRepSweepRevol): TopoDS_Shape {.importcpp: "FirstShape",
    header: "BRepSweep_Revol.hxx".}
proc firstShape*(this: var BRepSweepRevol; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_Revol.hxx".}
proc lastShape*(this: var BRepSweepRevol): TopoDS_Shape {.importcpp: "LastShape",
    header: "BRepSweep_Revol.hxx".}
proc lastShape*(this: var BRepSweepRevol; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_Revol.hxx".}
proc axe*(this: BRepSweepRevol): Ax1 {.noSideEffect, importcpp: "Axe",
                                   header: "BRepSweep_Revol.hxx".}
proc angle*(this: BRepSweepRevol): cfloat {.noSideEffect, importcpp: "Angle",
                                        header: "BRepSweep_Revol.hxx".}
proc isUsed*(this: BRepSweepRevol; aGenS: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "IsUsed", header: "BRepSweep_Revol.hxx".}

























