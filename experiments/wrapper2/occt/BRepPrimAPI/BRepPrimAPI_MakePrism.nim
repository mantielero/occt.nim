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

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of BRepSweep_Prism"
type
  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: "BRepPrimAPI_MakePrism.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep


proc `new`*(this: var BRepPrimAPI_MakePrism; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakePrism; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakePrism; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new[]",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakePrism; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete[]",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc `new`*(this: var BRepPrimAPI_MakePrism; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakePrism; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc makePrism*(s: TopoDS_Shape; v: Vec;
                                    copy: StandardBoolean = false;
                                    canonize: StandardBoolean = true): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc makePrism*(s: TopoDS_Shape; d: Dir;
                                    inf: StandardBoolean = true;
                                    copy: StandardBoolean = false;
                                    canonize: StandardBoolean = true): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: "BRepPrimAPI_MakePrism.hxx".}
#[ proc prism*(this: BRepPrimAPI_MakePrism): BRepSweepPrism {.noSideEffect,
    importcpp: "Prism", header: "BRepPrimAPI_MakePrism.hxx".} ]#
proc build*(this: var BRepPrimAPI_MakePrism) {.importcpp: "Build",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}
#[ proc generated*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepPrimAPI_MakePrism.hxx".} ]#
proc isDeleted*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepPrimAPI_MakePrism.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}

#----- MANUALLY ADDED (inheritance not working
converter `toTopoDS_Shape`*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "(TopoDS_Shape)(#)".}