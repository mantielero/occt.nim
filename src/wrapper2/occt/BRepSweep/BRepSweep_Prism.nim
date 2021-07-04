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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepSweep_Translation, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
type
  BRepSweep_Prism* {.importcpp: "BRepSweep_Prism", header: "BRepSweep_Prism.hxx",
                    bycopy.} = object ## ! Builds the prism of base S and vector V. If C is true,
                                   ## ! S is copied. If Canonize is true then generated surfaces
                                   ## ! are attempted to be canonized in simple types
                                   ## ! used to build the NumShape of a limited prism.


proc constructBRepSweep_Prism*(S: TopoDS_Shape; V: gp_Vec;
                              Copy: Standard_Boolean = Standard_False;
                              Canonize: Standard_Boolean = Standard_True): BRepSweep_Prism {.
    constructor, importcpp: "BRepSweep_Prism(@)", header: "BRepSweep_Prism.hxx".}
proc constructBRepSweep_Prism*(S: TopoDS_Shape; D: gp_Dir;
                              Inf: Standard_Boolean = Standard_True;
                              Copy: Standard_Boolean = Standard_False;
                              Canonize: Standard_Boolean = Standard_True): BRepSweep_Prism {.
    constructor, importcpp: "BRepSweep_Prism(@)", header: "BRepSweep_Prism.hxx".}
proc Shape*(this: var BRepSweep_Prism): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepSweep_Prism.hxx".}
proc Shape*(this: var BRepSweep_Prism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_Prism.hxx".}
proc FirstShape*(this: var BRepSweep_Prism): TopoDS_Shape {.importcpp: "FirstShape",
    header: "BRepSweep_Prism.hxx".}
proc FirstShape*(this: var BRepSweep_Prism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_Prism.hxx".}
proc LastShape*(this: var BRepSweep_Prism): TopoDS_Shape {.importcpp: "LastShape",
    header: "BRepSweep_Prism.hxx".}
proc LastShape*(this: var BRepSweep_Prism; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_Prism.hxx".}
proc Vec*(this: BRepSweep_Prism): gp_Vec {.noSideEffect, importcpp: "Vec",
                                       header: "BRepSweep_Prism.hxx".}
proc IsUsed*(this: BRepSweep_Prism; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsUsed", header: "BRepSweep_Prism.hxx".}
proc GenIsUsed*(this: BRepSweep_Prism; theS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "GenIsUsed", header: "BRepSweep_Prism.hxx".}