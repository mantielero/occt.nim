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
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
type
  BRepSweepPrism* {.importcpp: "BRepSweep_Prism", header: "BRepSweep_Prism.hxx",
                   bycopy.} = object ## ! Builds the prism of base S and vector V. If C is true,
                                  ## ! S is copied. If Canonize is true then generated surfaces
                                  ## ! are attempted to be canonized in simple types
                                  ## ! used to build the NumShape of a limited prism.


proc constructBRepSweepPrism*(s: TopoDS_Shape; v: GpVec;
                             copy: StandardBoolean = standardFalse;
                             canonize: StandardBoolean = standardTrue): BRepSweepPrism {.
    constructor, importcpp: "BRepSweep_Prism(@)", header: "BRepSweep_Prism.hxx".}
proc constructBRepSweepPrism*(s: TopoDS_Shape; d: GpDir;
                             inf: StandardBoolean = standardTrue;
                             copy: StandardBoolean = standardFalse;
                             canonize: StandardBoolean = standardTrue): BRepSweepPrism {.
    constructor, importcpp: "BRepSweep_Prism(@)", header: "BRepSweep_Prism.hxx".}
proc shape*(this: var BRepSweepPrism): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepSweep_Prism.hxx".}
proc shape*(this: var BRepSweepPrism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_Prism.hxx".}
proc firstShape*(this: var BRepSweepPrism): TopoDS_Shape {.importcpp: "FirstShape",
    header: "BRepSweep_Prism.hxx".}
proc firstShape*(this: var BRepSweepPrism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_Prism.hxx".}
proc lastShape*(this: var BRepSweepPrism): TopoDS_Shape {.importcpp: "LastShape",
    header: "BRepSweep_Prism.hxx".}
proc lastShape*(this: var BRepSweepPrism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_Prism.hxx".}
proc vec*(this: BRepSweepPrism): GpVec {.noSideEffect, importcpp: "Vec",
                                     header: "BRepSweep_Prism.hxx".}
proc isUsed*(this: BRepSweepPrism; aGenS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsUsed", header: "BRepSweep_Prism.hxx".}
proc genIsUsed*(this: BRepSweepPrism; theS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "GenIsUsed", header: "BRepSweep_Prism.hxx".}

