##  Created on: 1993-10-12
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../BRepSweep/BRepSweep_Prism,
  BRepPrimAPI_MakeSweep, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of BRepSweep_Prism"
type
  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: "BRepPrimAPI_MakePrism.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                   ## !
                                                                                                   ## Builds
                                                                                                   ## the
                                                                                                   ## prism
                                                                                                   ## of
                                                                                                   ## base
                                                                                                   ## S
                                                                                                   ## and
                                                                                                   ## vector
                                                                                                   ## V.
                                                                                                   ## If
                                                                                                   ## C
                                                                                                   ## is
                                                                                                   ## true,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## S
                                                                                                   ## is
                                                                                                   ## copied.
                                                                                                   ## If
                                                                                                   ## Canonize
                                                                                                   ## is
                                                                                                   ## true
                                                                                                   ## then
                                                                                                   ## generated
                                                                                                   ## surfaces
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## are
                                                                                                   ## attempted
                                                                                                   ## to
                                                                                                   ## be
                                                                                                   ## canonized
                                                                                                   ## in
                                                                                                   ## simple
                                                                                                   ## types


proc constructBRepPrimAPI_MakePrism*(S: TopoDS_Shape; V: gp_Vec;
                                    Copy: Standard_Boolean = Standard_False;
                                    Canonize: Standard_Boolean = Standard_True): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc constructBRepPrimAPI_MakePrism*(S: TopoDS_Shape; D: gp_Dir;
                                    Inf: Standard_Boolean = Standard_True;
                                    Copy: Standard_Boolean = Standard_False;
                                    Canonize: Standard_Boolean = Standard_True): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc Prism*(this: BRepPrimAPI_MakePrism): BRepSweep_Prism {.noSideEffect,
    importcpp: "Prism", header: "BRepPrimAPI_MakePrism.hxx".}
proc Build*(this: var BRepPrimAPI_MakePrism) {.importcpp: "Build",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc FirstShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc LastShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc Generated*(this: var BRepPrimAPI_MakePrism; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepPrimAPI_MakePrism.hxx".}
proc IsDeleted*(this: var BRepPrimAPI_MakePrism; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepPrimAPI_MakePrism.hxx".}
proc FirstShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc LastShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}