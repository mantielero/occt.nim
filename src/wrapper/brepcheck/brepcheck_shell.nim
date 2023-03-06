import brepcheck_types
import ../topods/topods_types
import ../toptools/toptools_types
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

proc newBRepCheck_Shell*(S: TopoDS_Shell): BRepCheck_Shell {.cdecl, constructor,
    importcpp: "BRepCheck_Shell(@)", header: "BRepCheck_Shell.hxx".}
proc InContext*(this: var BRepCheck_Shell; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Shell.hxx".}
proc Minimum*(this: var BRepCheck_Shell) {.cdecl, importcpp: "Minimum",
                                       header: "BRepCheck_Shell.hxx".}
proc Blind*(this: var BRepCheck_Shell) {.cdecl, importcpp: "Blind",
                                     header: "BRepCheck_Shell.hxx".}
proc Closed*(this: var BRepCheck_Shell; Update: bool = false): BRepCheck_Status {.cdecl,
    importcpp: "Closed", header: "BRepCheck_Shell.hxx".}
proc Orientation*(this: var BRepCheck_Shell; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "Orientation", header: "BRepCheck_Shell.hxx".}
proc SetUnorientable*(this: var BRepCheck_Shell) {.cdecl,
    importcpp: "SetUnorientable", header: "BRepCheck_Shell.hxx".}
proc IsUnorientable*(this: BRepCheck_Shell): bool {.noSideEffect, cdecl,
    importcpp: "IsUnorientable", header: "BRepCheck_Shell.hxx".}
proc NbConnectedSet*(this: var BRepCheck_Shell; theSets: var TopTools_ListOfShape): cint {.
    cdecl, importcpp: "NbConnectedSet", header: "BRepCheck_Shell.hxx".}