##  Created on: 1996-01-12
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of LocOpe_WiresOnShape"
type
  LocOpe_Spliter* {.importcpp: "LocOpe_Spliter", header: "LocOpe_Spliter.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.


proc constructLocOpe_Spliter*(): LocOpe_Spliter {.constructor,
    importcpp: "LocOpe_Spliter(@)", header: "LocOpe_Spliter.hxx".}
proc constructLocOpe_Spliter*(S: TopoDS_Shape): LocOpe_Spliter {.constructor,
    importcpp: "LocOpe_Spliter(@)", header: "LocOpe_Spliter.hxx".}
proc Init*(this: var LocOpe_Spliter; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_Spliter.hxx".}
proc Perform*(this: var LocOpe_Spliter; PW: handle[LocOpe_WiresOnShape]) {.
    importcpp: "Perform", header: "LocOpe_Spliter.hxx".}
proc IsDone*(this: LocOpe_Spliter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_Spliter.hxx".}
proc ResultingShape*(this: LocOpe_Spliter): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Spliter.hxx".}
proc Shape*(this: LocOpe_Spliter): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Spliter.hxx".}
proc DirectLeft*(this: LocOpe_Spliter): TopTools_ListOfShape {.noSideEffect,
    importcpp: "DirectLeft", header: "LocOpe_Spliter.hxx".}
proc Left*(this: LocOpe_Spliter): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Left", header: "LocOpe_Spliter.hxx".}
proc DescendantShapes*(this: var LocOpe_Spliter; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "DescendantShapes", header: "LocOpe_Spliter.hxx".}