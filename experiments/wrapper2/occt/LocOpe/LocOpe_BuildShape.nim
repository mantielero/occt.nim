##  Created on: 1996-09-16
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
type
  LocOpe_BuildShape* {.importcpp: "LocOpe_BuildShape",
                      header: "LocOpe_BuildShape.hxx", bycopy.} = object


proc constructLocOpe_BuildShape*(): LocOpe_BuildShape {.constructor,
    importcpp: "LocOpe_BuildShape(@)", header: "LocOpe_BuildShape.hxx".}
proc constructLocOpe_BuildShape*(L: TopTools_ListOfShape): LocOpe_BuildShape {.
    constructor, importcpp: "LocOpe_BuildShape(@)", header: "LocOpe_BuildShape.hxx".}
proc Perform*(this: var LocOpe_BuildShape; L: TopTools_ListOfShape) {.
    importcpp: "Perform", header: "LocOpe_BuildShape.hxx".}
proc Shape*(this: LocOpe_BuildShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "LocOpe_BuildShape.hxx".}