##  Created on: 1996-01-02
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

discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Shell"
discard "forward decl of BRepCheck_Shell"
type
  HandleC1C1* = Handle[BRepCheckShell]
  BRepCheckShell* {.importcpp: "BRepCheck_Shell", header: "BRepCheck_Shell.hxx",
                   bycopy.} = object of BRepCheckResult


proc constructBRepCheckShell*(s: TopoDS_Shell): BRepCheckShell {.constructor,
    importcpp: "BRepCheck_Shell(@)", header: "BRepCheck_Shell.hxx".}
proc inContext*(this: var BRepCheckShell; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Shell.hxx".}
proc minimum*(this: var BRepCheckShell) {.importcpp: "Minimum",
                                      header: "BRepCheck_Shell.hxx".}
proc blind*(this: var BRepCheckShell) {.importcpp: "Blind",
                                    header: "BRepCheck_Shell.hxx".}
proc closed*(this: var BRepCheckShell; update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "Closed", header: "BRepCheck_Shell.hxx".}
proc orientation*(this: var BRepCheckShell; update: StandardBoolean = false): BRepCheckStatus {.
    importcpp: "Orientation", header: "BRepCheck_Shell.hxx".}
proc setUnorientable*(this: var BRepCheckShell) {.importcpp: "SetUnorientable",
    header: "BRepCheck_Shell.hxx".}
proc isUnorientable*(this: BRepCheckShell): StandardBoolean {.noSideEffect,
    importcpp: "IsUnorientable", header: "BRepCheck_Shell.hxx".}
proc nbConnectedSet*(this: var BRepCheckShell; theSets: var TopToolsListOfShape): int {.
    importcpp: "NbConnectedSet", header: "BRepCheck_Shell.hxx".}
type
  BRepCheckShellbaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Shell::get_type_name(@)",
                            header: "BRepCheck_Shell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Shell::get_type_descriptor(@)",
    header: "BRepCheck_Shell.hxx".}
proc dynamicType*(this: BRepCheckShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Shell.hxx".}