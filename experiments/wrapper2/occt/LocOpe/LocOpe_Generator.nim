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

discard "forward decl of LocOpe_GeneratedShape"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
type
  LocOpeGenerator* {.importcpp: "LocOpe_Generator", header: "LocOpe_Generator.hxx",
                    bycopy.} = object ## ! Empty constructor.


proc constructLocOpeGenerator*(): LocOpeGenerator {.constructor,
    importcpp: "LocOpe_Generator(@)", header: "LocOpe_Generator.hxx".}
proc constructLocOpeGenerator*(s: TopoDS_Shape): LocOpeGenerator {.constructor,
    importcpp: "LocOpe_Generator(@)", header: "LocOpe_Generator.hxx".}
proc init*(this: var LocOpeGenerator; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_Generator.hxx".}
proc perform*(this: var LocOpeGenerator; g: Handle[LocOpeGeneratedShape]) {.
    importcpp: "Perform", header: "LocOpe_Generator.hxx".}
proc isDone*(this: LocOpeGenerator): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "LocOpe_Generator.hxx".}
proc resultingShape*(this: LocOpeGenerator): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Generator.hxx".}
proc shape*(this: LocOpeGenerator): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Generator.hxx".}
proc descendantFace*(this: var LocOpeGenerator; f: TopoDS_Face): TopToolsListOfShape {.
    importcpp: "DescendantFace", header: "LocOpe_Generator.hxx".}

























