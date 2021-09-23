##  Created on: 1993-01-21
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
  ../Standard/Standard_Handle, TopoDS_Shape, TopoDS_ListIteratorOfListOfShape,
  ../TopAbs/TopAbs_Orientation, ../TopLoc/TopLoc_Location,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  TopoDS_Iterator* {.importcpp: "TopoDS_Iterator", header: "TopoDS_Iterator.hxx",
                    bycopy.} = object ## ! Creates an empty Iterator.


proc constructTopoDS_Iterator*(): TopoDS_Iterator {.constructor,
    importcpp: "TopoDS_Iterator(@)", header: "TopoDS_Iterator.hxx".}
proc constructTopoDS_Iterator*(S: TopoDS_Shape;
                              cumOri: Standard_Boolean = Standard_True;
                              cumLoc: Standard_Boolean = Standard_True): TopoDS_Iterator {.
    constructor, importcpp: "TopoDS_Iterator(@)", header: "TopoDS_Iterator.hxx".}
proc Initialize*(this: var TopoDS_Iterator; S: TopoDS_Shape;
                cumOri: Standard_Boolean = Standard_True;
                cumLoc: Standard_Boolean = Standard_True) {.importcpp: "Initialize",
    header: "TopoDS_Iterator.hxx".}
proc More*(this: TopoDS_Iterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopoDS_Iterator.hxx".}
proc Next*(this: var TopoDS_Iterator) {.importcpp: "Next",
                                    header: "TopoDS_Iterator.hxx".}
proc Value*(this: TopoDS_Iterator): TopoDS_Shape {.noSideEffect, importcpp: "Value",
    header: "TopoDS_Iterator.hxx".}