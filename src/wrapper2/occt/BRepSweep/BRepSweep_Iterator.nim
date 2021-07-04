##  Created on: 1993-06-08
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Iterator,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  BRepSweep_Iterator* {.importcpp: "BRepSweep_Iterator",
                       header: "BRepSweep_Iterator.hxx", bycopy.} = object


proc constructBRepSweep_Iterator*(): BRepSweep_Iterator {.constructor,
    importcpp: "BRepSweep_Iterator(@)", header: "BRepSweep_Iterator.hxx".}
proc Init*(this: var BRepSweep_Iterator; aShape: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepSweep_Iterator.hxx".}
proc More*(this: BRepSweep_Iterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepSweep_Iterator.hxx".}
proc Next*(this: var BRepSweep_Iterator) {.importcpp: "Next",
                                       header: "BRepSweep_Iterator.hxx".}
proc Value*(this: BRepSweep_Iterator): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "BRepSweep_Iterator.hxx".}
proc Orientation*(this: BRepSweep_Iterator): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "BRepSweep_Iterator.hxx".}