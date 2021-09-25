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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of LocOpe_WiresOnShape"
type
  LocOpeSpliter* {.importcpp: "LocOpe_Spliter", header: "LocOpe_Spliter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor.


proc constructLocOpeSpliter*(): LocOpeSpliter {.constructor,
    importcpp: "LocOpe_Spliter(@)", header: "LocOpe_Spliter.hxx".}
proc constructLocOpeSpliter*(s: TopoDS_Shape): LocOpeSpliter {.constructor,
    importcpp: "LocOpe_Spliter(@)", header: "LocOpe_Spliter.hxx".}
proc init*(this: var LocOpeSpliter; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_Spliter.hxx".}
proc perform*(this: var LocOpeSpliter; pw: Handle[LocOpeWiresOnShape]) {.
    importcpp: "Perform", header: "LocOpe_Spliter.hxx".}
proc isDone*(this: LocOpeSpliter): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "LocOpe_Spliter.hxx".}
proc resultingShape*(this: LocOpeSpliter): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Spliter.hxx".}
proc shape*(this: LocOpeSpliter): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Spliter.hxx".}
proc directLeft*(this: LocOpeSpliter): TopToolsListOfShape {.noSideEffect,
    importcpp: "DirectLeft", header: "LocOpe_Spliter.hxx".}
proc left*(this: LocOpeSpliter): TopToolsListOfShape {.noSideEffect,
    importcpp: "Left", header: "LocOpe_Spliter.hxx".}
proc descendantShapes*(this: var LocOpeSpliter; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "DescendantShapes", header: "LocOpe_Spliter.hxx".}
