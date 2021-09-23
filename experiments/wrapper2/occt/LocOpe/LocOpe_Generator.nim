##  Created on: 1996-01-09
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
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of LocOpe_GeneratedShape"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
type
  LocOpe_Generator* {.importcpp: "LocOpe_Generator",
                     header: "LocOpe_Generator.hxx", bycopy.} = object ## ! Empty constructor.


proc constructLocOpe_Generator*(): LocOpe_Generator {.constructor,
    importcpp: "LocOpe_Generator(@)", header: "LocOpe_Generator.hxx".}
proc constructLocOpe_Generator*(S: TopoDS_Shape): LocOpe_Generator {.constructor,
    importcpp: "LocOpe_Generator(@)", header: "LocOpe_Generator.hxx".}
proc Init*(this: var LocOpe_Generator; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_Generator.hxx".}
proc Perform*(this: var LocOpe_Generator; G: handle[LocOpe_GeneratedShape]) {.
    importcpp: "Perform", header: "LocOpe_Generator.hxx".}
proc IsDone*(this: LocOpe_Generator): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_Generator.hxx".}
proc ResultingShape*(this: LocOpe_Generator): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Generator.hxx".}
proc Shape*(this: LocOpe_Generator): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Generator.hxx".}
proc DescendantFace*(this: var LocOpe_Generator; F: TopoDS_Face): TopTools_ListOfShape {.
    importcpp: "DescendantFace", header: "LocOpe_Generator.hxx".}